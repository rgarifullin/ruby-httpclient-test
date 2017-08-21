require 'rest-client'
require_relative 'base'

module RestClientInvoker
  include Base

  def self.get
    RestClient.get(GET)
  end

  def self.post
    RestClient.post(POST, {})
  end

  def self.put
    RestClient.put(PUT, {})
  end

  def self.patch
    RestClient.patch(PATCH, {})
  end

  def self.delete
    RestClient.delete(DELETE)
  end
end
