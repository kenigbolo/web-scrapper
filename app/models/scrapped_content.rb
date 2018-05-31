class ScrappedContent < ApplicationRecord
  belongs_to :scrapper
  ### Validations
  validates :tag, presence: true
end
