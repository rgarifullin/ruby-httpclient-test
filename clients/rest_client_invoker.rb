require 'rest-client'
require_relative 'base'

module RestClientInvoker
  include Base

  def self.call
    RestClient.get(GET)
    RestClient.post(POST, {})
    RestClient.put(PUT, {})
    RestClient.patch(PATCH, {})
    RestClient.delete(DELETE)
  end
end
