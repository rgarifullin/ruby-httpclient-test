# Ruby HTTP clients performance comparison

## Test env
* Ruby 2.4.1
* Puma 3.9.1
* Ubuntu 16.04.2 (linux kernel 4.4.0-92) on i5 M430, 8 GB
* Nginx 1.10.3
* Sinatra 2.0.0
* Benchmark-ips 2.7.2

## Libs
* Net::HTTP
* Curb 0.9.3
* Ethon 0.10.1
* Excon 0.58.0
* Faraday 0.13.0
* HTTParty 0.15.6
* Patron 0.9.1
* RESTClient 2.0.2
* Wrest 2.2.0

## Results
Ethon & Patron shows best performance (because they wrap libcurl). Other libraries about 3-3.5 times slower.

See [RESULTS.md](RESULTS.md) for full benchmark outputs
