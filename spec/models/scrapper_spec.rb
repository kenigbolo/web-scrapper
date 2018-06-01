require 'rails_helper'

RSpec.describe Scrapper, type: :model do
  context "when a scrapper is created" do
    let(:scrapper) { FactoryBot.build :scrapper}

    it "is a new scrapper" do
      expect(scrapper).to be_a_new(Scrapper)
    end

    it "should be a valid scrapper object" do
      expect(scrapper).to be_valid
    end

    it "is expected to save scrapper properly" do
      expect(scrapper.web_url).not_to be_nil
    end
  end

  context "when scrapper doesnt have a web_url" do
    scrapper = Scrapper.new

    it "is a new scrapper" do
      expect(scrapper).to be_a_new(Scrapper)
    end


    it "should not be a valid scrapper" do
      expect(scrapper).not_to be_valid
    end

    it "should throw errors on save" do
      expect(scrapper.save).to be false
      expect{ scrapper.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
