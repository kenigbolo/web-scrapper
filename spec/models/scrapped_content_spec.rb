require 'rails_helper'

RSpec.describe ScrappedContent, type: :model do
  context "Scrapes web page after save" do
    let(:scrapper) { FactoryBot.build :scrapper }
    it "scrapes webpages after saving the web url" do
      expect(scrapper.scrapped_contents).not_to be_nil
    end
  end
end
