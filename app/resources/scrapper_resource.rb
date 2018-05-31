class ScrapperResource < JSONAPI::Resource
  attributes :web_url
  has_many :scrapped_contents
end
