require 'benchmark/ips'
require_relative 'clients/ethon_invoker'

module Bench
  def self.run
    Benchmark.ips do |x|
      x.report('GET') { EthonInvoker.get }
      x.report('POST') { EthonInvoker.post }
      x.report('PUT') { EthonInvoker.put }
      x.report('PATCH') { EthonInvoker.patch }
      x.report('DELETE') { EthonInvoker.delete }

      x.compare!
    end
  end
end

Bench.run
