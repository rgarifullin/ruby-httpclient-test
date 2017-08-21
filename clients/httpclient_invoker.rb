require 'httpclient'
require_relative 'base'

module HTTPClientInvoker
  include Base

  def self.get
    http.get(GET)
  end

  def self.post
    http.post(POST)
  end

  def self.put
    http.put(PUT)
  end

  def self.patch
    http.patch(PATCH)
  end

  def self.delete
    http.delete(DELETE)
  end

  private

  class << self
    def http
      @http ||= HTTPClient.new
    end
  end
end
