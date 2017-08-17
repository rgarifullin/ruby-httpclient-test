require 'curb'
require_relative 'base'

module CurbInvoker
  include Base

  def self.call
    Curl.get(GET)
    Curl.post(POST)
    Curl.put(PUT)
    Curl.patch(PATCH)
    Curl.delete(DELETE)
  end
end
