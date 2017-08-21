require 'faraday'
require_relative 'base'

module FaradayInvoker
  include Base

  def self.get
    Faraday.get(GET)
  end

  def self.post
    Faraday.post(POST)
  end

  def self.put
    Faraday.put(PUT)
  end

  def self.patch
    Faraday.patch(PATCH)
  end

  def self.delete
    Faraday.delete(DELETE)
  end
end
