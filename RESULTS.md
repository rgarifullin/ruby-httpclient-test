# RESULTS

## Direct requests to sinatra app (puma development env)
```
$ ruby benchmark.rb
Warming up --------------------------------------
           Net::HTTP     1.000  i/100ms
                Curb     1.000  i/100ms
               Ethon     2.000  i/100ms
               Excon     1.000  i/100ms
             Faraday     1.000  i/100ms
            HTTParty     1.000  i/100ms
              Patron     2.000  i/100ms
          RESTClient     1.000  i/100ms
               Wrest     1.000  i/100ms
Calculating -------------------------------------
           Net::HTTP      8.472  (± 0.0%) i/s -     43.000  in   5.082241s
                Curb      6.106  (±32.8%) i/s -     29.000  in   5.154965s
               Ethon     28.203  (±10.6%) i/s -    140.000  in   5.033233s
               Excon      7.118  (±14.0%) i/s -     34.000  in   5.007147s
             Faraday      7.960  (±12.6%) i/s -     40.000  in   5.100364s
            HTTParty      7.674  (±13.0%) i/s -     37.000  in   5.006756s
              Patron     28.224  (± 7.1%) i/s -    140.000  in   5.011877s
          RESTClient      7.513  (±13.3%) i/s -     37.000  in   5.027201s
               Wrest      7.325  (±13.7%) i/s -     36.000  in   5.142578s

Comparison:
              Patron:       28.2 i/s
               Ethon:       28.2 i/s - same-ish: difference falls within error
           Net::HTTP:        8.5 i/s - 3.33x  slower
             Faraday:        8.0 i/s - 3.55x  slower
            HTTParty:        7.7 i/s - 3.68x  slower
          RESTClient:        7.5 i/s - 3.76x  slower
               Wrest:        7.3 i/s - 3.85x  slower
               Excon:        7.1 i/s - 3.97x  slower
                Curb:        6.1 i/s - 4.62x  slower

```

## Sinatra + NGinx (puma production env)
### First run
```
$ ruby benchmark.rb
Warming up --------------------------------------
           Net::HTTP     1.000  i/100ms
                Curb     1.000  i/100ms
               Ethon     2.000  i/100ms
               Excon     1.000  i/100ms
             Faraday     1.000  i/100ms
            HTTParty     1.000  i/100ms
              Patron     2.000  i/100ms
          RESTClient     1.000  i/100ms
               Wrest     1.000  i/100ms
Calculating -------------------------------------
           Net::HTTP      7.988  (±12.5%) i/s -     38.000  in   5.007857s
                Curb      7.786  (±12.8%) i/s -     38.000  in   5.044997s
               Ethon     27.530  (± 0.0%) i/s -    138.000  in   5.014087s
               Excon      7.639  (±13.1%) i/s -     37.000  in   5.021415s
             Faraday      8.215  (± 0.0%) i/s -     41.000  in   5.005365s
            HTTParty      7.918  (±12.6%) i/s -     39.000  in   5.078775s
              Patron     27.133  (± 3.7%) i/s -    136.000  in   5.015478s
          RESTClient      8.014  (± 0.0%) i/s -     40.000  in   5.012105s
               Wrest      8.025  (±12.5%) i/s -     40.000  in   5.064396s

Comparison:
               Ethon:       27.5 i/s
              Patron:       27.1 i/s - same-ish: difference falls within error
             Faraday:        8.2 i/s - 3.35x  slower
               Wrest:        8.0 i/s - 3.43x  slower
          RESTClient:        8.0 i/s - 3.44x  slower
           Net::HTTP:        8.0 i/s - 3.45x  slower
            HTTParty:        7.9 i/s - 3.48x  slower
                Curb:        7.8 i/s - 3.54x  slower
               Excon:        7.6 i/s - 3.60x  slower
```

### Second run
```
$ ruby benchmark.rb
Warming up --------------------------------------
           Net::HTTP     1.000  i/100ms
                Curb     1.000  i/100ms
               Ethon     2.000  i/100ms
               Excon     1.000  i/100ms
             Faraday     1.000  i/100ms
            HTTParty     1.000  i/100ms
              Patron     2.000  i/100ms
          RESTClient     1.000  i/100ms
               Wrest     1.000  i/100ms
Calculating -------------------------------------
           Net::HTTP      8.428  (± 0.0%) i/s -     43.000  in   5.116177s
                Curb      8.016  (± 0.0%) i/s -     41.000  in   5.124894s
               Ethon     25.288  (±15.8%) i/s -    122.000  in   5.013920s
               Excon      8.119  (± 0.0%) i/s -     41.000  in   5.067318s
             Faraday      7.327  (±13.6%) i/s -     36.000  in   5.208762s
            HTTParty      7.847  (±12.7%) i/s -     38.000  in   5.005876s
              Patron     27.058  (± 3.7%) i/s -    136.000  in   5.036983s
          RESTClient      7.766  (±12.9%) i/s -     39.000  in   5.097077s
               Wrest      8.182  (± 0.0%) i/s -     41.000  in   5.035311s

Comparison:
              Patron:       27.1 i/s
               Ethon:       25.3 i/s - same-ish: difference falls within error
           Net::HTTP:        8.4 i/s - 3.21x  slower
               Wrest:        8.2 i/s - 3.31x  slower
               Excon:        8.1 i/s - 3.33x  slower
                Curb:        8.0 i/s - 3.38x  slower
            HTTParty:        7.8 i/s - 3.45x  slower
          RESTClient:        7.8 i/s - 3.48x  slower
             Faraday:        7.3 i/s - 3.69x  slower
```
