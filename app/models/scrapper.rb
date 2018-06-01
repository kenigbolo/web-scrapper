require 'open-uri'
class Scrapper < ApplicationRecord
  has_many :scrapped_contents

  ### Validations
  validates_with UniqueScrapperValidator
  validates :web_url, presence: true

  after_save :scrape_content

  def scrape_content
    page_contents = Nokogiri::HTML(open(web_url))
    save_content(page_contents)
  end

  private

  def save_content(page_contents)
    %w(h1 h2 h3 a).each do |html_tag|
      tags_list = page_contents.css(html_tag)
      filter_and_save(tags_list, html_tag) if tags_list.length >= 1
    end
  end

  def filter_and_save(tags_list, tag)
    tag_values = tags_list.map { |tag| tag.text || tag['href'] }
    tag_values.map { |value| ScrappedContent.create(scrapper_id: id, tag: tag, value: value)}
  end
end
