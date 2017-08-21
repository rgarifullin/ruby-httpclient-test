require 'benchmark/ips'
require_relative 'clients'

module Bench
  def self.run
    Benchmark.ips do |x|
      x.report('Net::HTTP') { NetHTTPInvoker.all }
      x.report('Curb') { CurbInvoker.all }
      x.report('Ethon') { EthonInvoker.all }
      x.report('Excon') { ExconInvoker.all }
      x.report('Faraday') { FaradayInvoker.all }
      x.report('HTTParty') { HTTPartyInvoker.all }
      x.report('Patron') { PatronInvoker.all }
      x.report('RESTClient') { RestClientInvoker.all }
      x.report('Wrest') { WrestInvoker.all }

      x.compare!
    end
  end
end

Bench.run
