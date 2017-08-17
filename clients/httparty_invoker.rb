require 'httparty'
require_relative 'base'

module HTTPartyInvoker
  include Base

  def self.call
    HTTParty.get(GET)
    HTTParty.post(POST)
    HTTParty.put(PUT)
    HTTParty.patch(PATCH)
    HTTParty.delete(DELETE)
  end
end
