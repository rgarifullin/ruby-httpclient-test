require 'benchmark/ips'
require_relative 'clients'

module Bench
  include Base

  def self.run
    puts :GET
    get

    puts :POST
    post

    puts :PUT
    put

    puts :PATCH
    patch

    puts :DELETE
    delete
  end

  def self.get
    Benchmark.ips do |x|
      x.report('Net::HTTP') { NetHTTPInvoker.get }
      x.report('Curb') { CurbInvoker.get }
      x.report('Ethon') { EthonInvoker.get }
      x.report('Excon') { ExconInvoker.get }
      x.report('Faraday') { FaradayInvoker.get }
      x.report('HTTParty') { HTTPartyInvoker.get }
      x.report('Patron') { PatronInvoker.get }
      x.report('RESTClient') { RestClientInvoker.get }
      x.report('Wrest') { WrestInvoker.get }

      x.compare!
    end
  end

  def self.post
    Benchmark.ips do |x|
      x.report('Net::HTTP') { NetHTTPInvoker.post }
      x.report('Curb') { CurbInvoker.post }
      x.report('Ethon') { EthonInvoker.post }
      x.report('Excon') { ExconInvoker.post }
      x.report('Faraday') { FaradayInvoker.post }
      x.report('HTTParty') { HTTPartyInvoker.post }
      x.report('Patron') { PatronInvoker.post }
      x.report('RESTClient') { RestClientInvoker.post }
      x.report('Wrest') { WrestInvoker.post }

      x.compare!
    end
  end

  def self.put
    Benchmark.ips do |x|
      x.report('Net::HTTP') { NetHTTPInvoker.put }
      x.report('Curb') { CurbInvoker.put }
      x.report('Ethon') { EthonInvoker.put }
      x.report('Excon') { ExconInvoker.put }
      x.report('Faraday') { FaradayInvoker.put }
      x.report('HTTParty') { HTTPartyInvoker.put }
      x.report('Patron') { PatronInvoker.put }
      x.report('RESTClient') { RestClientInvoker.put }
      x.report('Wrest') { WrestInvoker.put }

      x.compare!
    end
  end

  def self.patch
    Benchmark.ips do |x|
      x.report('Net::HTTP') { NetHTTPInvoker.patch }
      x.report('Curb') { CurbInvoker.patch }
      x.report('Ethon') { EthonInvoker.patch }
      x.report('Excon') { ExconInvoker.patch }
      x.report('Faraday') { FaradayInvoker.patch }
      x.report('HTTParty') { HTTPartyInvoker.patch }
      x.report('Patron') { PatronInvoker.patch }
      x.report('RESTClient') { RestClientInvoker.patch }
      x.report('Wrest') { WrestInvoker.patch }

      x.compare!
    end
  end

  def self.delete
    Benchmark.ips do |x|
      x.report('Net::HTTP') { NetHTTPInvoker.delete }
      x.report('Curb') { CurbInvoker.delete }
      x.report('Ethon') { EthonInvoker.delete }
      x.report('Excon') { ExconInvoker.delete }
      x.report('Faraday') { FaradayInvoker.delete }
      x.report('HTTParty') { HTTPartyInvoker.delete }
      x.report('Patron') { PatronInvoker.delete }
      x.report('RESTClient') { RestClientInvoker.delete }
      x.report('Wrest') { WrestInvoker.delete }

      x.compare!
    end
  end
end

Bench.run
