require 'httpclient'
require_relative 'base'

module HTTPClientInvoker
  include Base

  def self.call
    http = HTTPClient.new
    http.get(GET)
    http.post(POST)
    http.put(PUT)
    http.patch(PATCH)
    http.delete(DELETE)
  end
end
