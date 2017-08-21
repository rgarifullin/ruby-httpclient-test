require 'httparty'
require_relative 'base'

module HTTPartyInvoker
  include Base

  def self.get
    HTTParty.get(GET)
  end

  def self.post
    HTTParty.post(POST)
  end

  def self.put
    HTTParty.put(PUT)
  end

  def self.patch
    HTTParty.patch(PATCH)
  end

  def self.delete
    HTTParty.delete(DELETE)
  end
end
