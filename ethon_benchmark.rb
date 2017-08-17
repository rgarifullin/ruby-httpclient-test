require 'benchmark/ips'
require_relative 'clients/ethon_invoker'

module Bench
  def self.run
    e = Ethon::Easy.new

    Benchmark.ips do |x|
      x.report('GET') { e.http_request(Base::GET, :get); e.perform }
      x.report('POST') { e.http_request(Base::POST, :post); e.perform }
      x.report('PUT') { e.http_request(Base::PUT, :put); e.perform }
      x.report('PATCH') { e.http_request(Base::PATCH, :patch); e.perform }
      x.report('DELETE') { e.http_request(Base::DELETE, :delete); e.perform }

      x.compare!
    end
  end
end

Bench.run
