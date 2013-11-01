json.array!(@listings) do |listing|
  json.extract! listing, :user_id, :name, :description, :url, :doi
  json.url listing_url(listing, format: :json)
end
