class UniqueScrapperValidator < ActiveModel::Validator
  ERR_MSG = "url already exists but it's scrapped content has now been updated"

  def validate(record)
    scrapper = Scrapper.find_by(web_url: record.web_url)
    clean_and_scrape_contents(record, scrapper) if scrapper
  end

  private
  def clean_and_scrape_contents(record, scrapper)
    scrapper.scrapped_contents.destroy_all
    scrapper.scrape_content
    record.errors[:base] << ERR_MSG
  end
end
