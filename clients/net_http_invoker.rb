require 'net/http'

module NetHTTPInvoker
  include Base

  def self.call
    http = Net::HTTP.new(URI(BASE_URL).host, URI(BASE_URL).port)
    http.send_request(:GET, GET)
    http.send_request(:POST, POST)
    http.send_request(:PUT, PUT)
    http.send_request(:PATCH, PATCH)
    http.send_request(:DELETE, DELETE)
  end
end
