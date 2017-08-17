require 'faraday'
require_relative 'base'

module FaradayInvoker
  include Base

  def self.call
    Faraday.get(GET)
    Faraday.post(POST)
    Faraday.put(PUT)
    Faraday.patch(PATCH)
    Faraday.delete(DELETE)
  end
end
