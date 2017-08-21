require 'ethon'
require_relative 'base'

module EthonInvoker
  include Base

  def self.get
    easy.http_request(GET, :get)
    perform
  end

  def self.post
    easy.http_request(POST, :post)
    perform
  end

  def self.put
    easy.http_request(PUT, :put)
    perform
  end

  def self.patch
    easy.http_request(PATCH, :patch)
    perform
  end

  def self.delete
    easy.http_request(DELETE, :delete)
    perform
  end

  def self.perform
    easy.perform
  end

  private

  class << self
    def easy
      @easy ||= Ethon::Easy.new
    end
  end
end
