require 'curb'
require_relative 'base'

module CurbInvoker
  include Base

  def self.get
    Curl.get(GET)
  end

  def self.post
    Curl.post(POST)
  end

  def self.put
    Curl.put(PUT)
  end

  def self.patch
    Curl.patch(PATCH)
  end

  def self.delete
    Curl.delete(DELETE)
  end
end
