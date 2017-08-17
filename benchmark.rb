require 'benchmark/ips'
require_relative 'clients'

module Bench
  def self.run
    Benchmark.ips do |x|
      x.report('Net::HTTP') { NetHTTPInvoker.call }
      x.report('Curb') { CurbInvoker.call }
      x.report('Ethon') { EthonInvoker.call }
      x.report('Excon') { ExconInvoker.call }
      x.report('Faraday') { FaradayInvoker.call }
      x.report('HTTParty') { HTTPartyInvoker.call }
      x.report('Patron') { PatronInvoker.call }
      x.report('RESTClient') { RestClientInvoker.call }
      x.report('Wrest') { WrestInvoker.call }

      x.compare!
    end
  end
end

Bench.run
