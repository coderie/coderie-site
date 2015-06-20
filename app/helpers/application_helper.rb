module ApplicationHelper
  def maps_url(address)
    "http://maps.google.com/maps?f=q&hl=en&q=#{URI.escape(address.to_s)}+US"
  end
end
