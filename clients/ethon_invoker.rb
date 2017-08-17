require 'ethon'
require_relative 'base'

module EthonInvoker
  include Base

  def self.call
    easy = Ethon::Easy.new

    easy.http_request(GET, :get)
    easy.perform

    easy.http_request(POST, :post)
    easy.perform

    easy.http_request(PUT, :put)
    easy.perform

    easy.http_request(PATCH, :patch)
    easy.perform

    easy.http_request(DELETE, :delete)
    easy.perform
  end
end
