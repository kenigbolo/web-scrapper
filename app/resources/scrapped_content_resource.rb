class ScrappedContentResource < JSONAPI::Resource
  attributes :tag, :value
  has_one :scrapper

  filter :scrapper
end
