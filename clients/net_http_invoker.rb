require 'net/http'
require_relative 'base'

module NetHTTPInvoker
  include Base

  def self.get
    http.send_request(:GET, GET)
  end

  def self.post
    http.send_request(:POST, POST)
  end

  def self.put
    http.send_request(:PUT, PUT)
  end

  def self.patch
    http.send_request(:PATCH, PATCH)
  end

  def self.delete
    http.send_request(:DELETE, DELETE)
  end

  private

  class << self
    def http
      @http ||= Net::HTTP.new(URI(Base::BASE_URL).host, URI(Base::BASE_URL).port)
    end
  end
end
