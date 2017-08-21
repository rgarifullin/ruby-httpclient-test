# RESULTS

## Sinatra + NGinx (puma production env)
### First run
```
$ ruby benchmark.rb      
Warming up --------------------------------------
           Net::HTTP     1.000  i/100ms
                Curb     1.000  i/100ms
               Ethon    14.000  i/100ms
               Excon     1.000  i/100ms
             Faraday     1.000  i/100ms
            HTTParty     1.000  i/100ms
              Patron    16.000  i/100ms
          RESTClient     1.000  i/100ms
               Wrest     1.000  i/100ms
Calculating -------------------------------------
           Net::HTTP      7.400  (±13.5%) i/s -     37.000  in   5.030900s
                Curb      6.936  (±14.4%) i/s -     35.000  in   5.078330s
               Ethon    157.149  (± 6.4%) i/s -    784.000  in   5.008079s
               Excon      7.248  (± 0.0%) i/s -     37.000  in   5.130873s
             Faraday      7.404  (± 0.0%) i/s -     37.000  in   5.000868s
            HTTParty      7.418  (± 0.0%) i/s -     38.000  in   5.131052s
              Patron    160.657  (± 5.0%) i/s -    816.000  in   5.092983s
          RESTClient      7.247  (± 0.0%) i/s -     37.000  in   5.111889s
               Wrest      7.319  (± 0.0%) i/s -     37.000  in   5.071631s

Comparison:
              Patron:      160.7 i/s
               Ethon:      157.1 i/s - same-ish: difference falls within error
            HTTParty:        7.4 i/s - 21.66x  slower
             Faraday:        7.4 i/s - 21.70x  slower
           Net::HTTP:        7.4 i/s - 21.71x  slower
               Wrest:        7.3 i/s - 21.95x  slower
               Excon:        7.2 i/s - 22.17x  slower
          RESTClient:        7.2 i/s - 22.17x  slower
                Curb:        6.9 i/s - 23.16x  slower
```

### Second run
```
rinat@workstation:~/projects/ruby-httpclient-test$ ruby benchmark.rb          
Warming up --------------------------------------
           Net::HTTP     1.000  i/100ms
                Curb     1.000  i/100ms
               Ethon    15.000  i/100ms
               Excon     1.000  i/100ms
             Faraday     1.000  i/100ms
            HTTParty     1.000  i/100ms
              Patron    15.000  i/100ms
          RESTClient     1.000  i/100ms
               Wrest     1.000  i/100ms
Calculating -------------------------------------
           Net::HTTP      7.477  (±13.4%) i/s -     38.000  in   5.119147s
                Curb      7.147  (± 0.0%) i/s -     36.000  in   5.057275s
               Ethon    157.180  (± 5.7%) i/s -    795.000  in   5.074138s
               Excon      7.302  (± 0.0%) i/s -     37.000  in   5.073978s
             Faraday      7.267  (± 0.0%) i/s -     37.000  in   5.100729s
            HTTParty      7.327  (± 0.0%) i/s -     37.000  in   5.063631s
              Patron    159.412  (± 6.3%) i/s -    795.000  in   5.006737s
          RESTClient      7.084  (± 0.0%) i/s -     36.000  in   5.097961s
               Wrest      7.330  (± 0.0%) i/s -     37.000  in   5.056912s

Comparison:
              Patron:      159.4 i/s
               Ethon:      157.2 i/s - same-ish: difference falls within error
           Net::HTTP:        7.5 i/s - 21.32x  slower
               Wrest:        7.3 i/s - 21.75x  slower
            HTTParty:        7.3 i/s - 21.76x  slower
               Excon:        7.3 i/s - 21.83x  slower
             Faraday:        7.3 i/s - 21.94x  slower
                Curb:        7.1 i/s - 22.30x  slower
          RESTClient:        7.1 i/s - 22.50x  slower
```

### Additional
#### HTTP methods comparison (via Ethon)
```
$ ruby ethon_benchmark.rb
Warming up --------------------------------------
                 GET    92.000  i/100ms
                POST    84.000  i/100ms
                 PUT    91.000  i/100ms
               PATCH    92.000  i/100ms
              DELETE    91.000  i/100ms
Calculating -------------------------------------
                 GET    768.317  (± 4.7%) i/s -      3.864k in   5.039959s
                POST    738.073  (± 5.0%) i/s -      3.696k in   5.020806s
                 PUT    750.542  (± 4.7%) i/s -      3.822k in   5.103505s
               PATCH    914.939  (± 5.7%) i/s -      4.600k in   5.043664s
              DELETE    917.847  (± 6.0%) i/s -      4.641k in   5.074892s

Comparison:
              DELETE:      917.8 i/s
               PATCH:      914.9 i/s - same-ish: difference falls within error
                 GET:      768.3 i/s - 1.19x  slower
                 PUT:      750.5 i/s - 1.22x  slower
                POST:      738.1 i/s - 1.24x  slower
```

#### HTTP methods comparison
```
$ ruby methods_benchmark.rb
GET
Warming up --------------------------------------
           Net::HTTP     3.000  i/100ms
                Curb     3.000  i/100ms
               Ethon    94.000  i/100ms
               Excon     3.000  i/100ms
             Faraday     3.000  i/100ms
            HTTParty     3.000  i/100ms
              Patron    82.000  i/100ms
          RESTClient     3.000  i/100ms
               Wrest     3.000  i/100ms
Calculating -------------------------------------
           Net::HTTP     37.429  (± 2.7%) i/s -    189.000  in   5.056159s
                Curb     35.755  (± 5.6%) i/s -    180.000  in   5.059086s
               Ethon    952.820  (± 7.3%) i/s -      4.794k in   5.061507s
               Excon     35.466  (± 8.5%) i/s -    177.000  in   5.043321s
             Faraday     36.024  (± 8.3%) i/s -    180.000  in   5.043787s
            HTTParty     37.082  (± 5.4%) i/s -    186.000  in   5.026604s
              Patron    827.734  (± 5.1%) i/s -      4.182k in   5.065362s
          RESTClient     36.265  (± 2.8%) i/s -    183.000  in   5.055159s
               Wrest     36.703  (± 5.4%) i/s -    183.000  in   5.008254s

Comparison:
               Ethon:      952.8 i/s
              Patron:      827.7 i/s - 1.15x  slower
           Net::HTTP:       37.4 i/s - 25.46x  slower
            HTTParty:       37.1 i/s - 25.69x  slower
               Wrest:       36.7 i/s - 25.96x  slower
          RESTClient:       36.3 i/s - 26.27x  slower
             Faraday:       36.0 i/s - 26.45x  slower
                Curb:       35.8 i/s - 26.65x  slower
               Excon:       35.5 i/s - 26.87x  slower

POST
Warming up --------------------------------------
           Net::HTTP     3.000  i/100ms
                Curb     3.000  i/100ms
               Ethon    85.000  i/100ms
               Excon     3.000  i/100ms
             Faraday     3.000  i/100ms
            HTTParty     3.000  i/100ms
              Patron    77.000  i/100ms
          RESTClient     3.000  i/100ms
               Wrest     3.000  i/100ms
Calculating -------------------------------------
           Net::HTTP     36.728  (± 5.4%) i/s -    183.000  in   5.004002s
                Curb     33.487  (±20.9%) i/s -    156.000  in   5.025049s
               Ethon    819.019  (±14.3%) i/s -      3.995k in   5.017681s
               Excon     34.876  (± 8.6%) i/s -    174.000  in   5.036248s
             Faraday     35.996  (± 5.6%) i/s -    180.000  in   5.023118s
            HTTParty     36.693  (± 5.5%) i/s -    186.000  in   5.083553s
              Patron    746.180  (±13.7%) i/s -      3.696k in   5.068110s
          RESTClient     34.784  (± 5.7%) i/s -    174.000  in   5.025361s
               Wrest     36.879  (± 5.4%) i/s -    186.000  in   5.054630s

Comparison:
               Ethon:      819.0 i/s
              Patron:      746.2 i/s - same-ish: difference falls within error
               Wrest:       36.9 i/s - 22.21x  slower
           Net::HTTP:       36.7 i/s - 22.30x  slower
            HTTParty:       36.7 i/s - 22.32x  slower
             Faraday:       36.0 i/s - 22.75x  slower
               Excon:       34.9 i/s - 23.48x  slower
          RESTClient:       34.8 i/s - 23.55x  slower
                Curb:       33.5 i/s - 24.46x  slower

PUT
Warming up --------------------------------------
           Net::HTTP     3.000  i/100ms
                Curb     3.000  i/100ms
               Ethon    85.000  i/100ms
               Excon     3.000  i/100ms
             Faraday     3.000  i/100ms
            HTTParty     3.000  i/100ms
              Patron    79.000  i/100ms
          RESTClient     3.000  i/100ms
               Wrest     3.000  i/100ms
Calculating -------------------------------------
           Net::HTTP     37.805  (± 2.6%) i/s -    189.000  in   5.003370s
                Curb     35.334  (± 8.5%) i/s -    177.000  in   5.045770s
               Ethon    915.196  (± 6.7%) i/s -      4.590k in   5.037814s
               Excon     36.164  (± 5.5%) i/s -    183.000  in   5.071869s
             Faraday     36.098  (± 5.5%) i/s -    180.000  in   5.007245s
            HTTParty     37.218  (± 5.4%) i/s -    186.000  in   5.007446s
              Patron    816.059  (± 4.4%) i/s -      4.108k in   5.043916s
          RESTClient     35.728  (± 5.6%) i/s -    180.000  in   5.056064s
               Wrest     36.518  (± 5.5%) i/s -    183.000  in   5.021701s

Comparison:
               Ethon:      915.2 i/s
              Patron:      816.1 i/s - 1.12x  slower
           Net::HTTP:       37.8 i/s - 24.21x  slower
            HTTParty:       37.2 i/s - 24.59x  slower
               Wrest:       36.5 i/s - 25.06x  slower
               Excon:       36.2 i/s - 25.31x  slower
             Faraday:       36.1 i/s - 25.35x  slower
          RESTClient:       35.7 i/s - 25.62x  slower
                Curb:       35.3 i/s - 25.90x  slower

PATCH
Warming up --------------------------------------
           Net::HTTP     3.000  i/100ms
                Curb     3.000  i/100ms
               Ethon    89.000  i/100ms
               Excon     3.000  i/100ms
             Faraday     3.000  i/100ms
            HTTParty     3.000  i/100ms
              Patron    70.000  i/100ms
          RESTClient     3.000  i/100ms
               Wrest     3.000  i/100ms
Calculating -------------------------------------
           Net::HTTP     33.829  (±23.6%) i/s -    153.000  in   5.004440s
                Curb     36.081  (± 5.5%) i/s -    180.000  in   5.004632s
               Ethon    897.496  (± 6.6%) i/s -      4.539k in   5.080173s
               Excon     36.224  (± 5.5%) i/s -    183.000  in   5.061106s
             Faraday     36.234  (± 8.3%) i/s -    180.000  in   5.022772s
            HTTParty     36.775  (± 5.4%) i/s -    186.000  in   5.070915s
              Patron    785.899  (± 6.2%) i/s -      3.920k in   5.009178s
          RESTClient     35.821  (± 5.6%) i/s -    180.000  in   5.038070s
               Wrest     36.992  (± 5.4%) i/s -    186.000  in   5.038325s

Comparison:
               Ethon:      897.5 i/s
              Patron:      785.9 i/s - 1.14x  slower
               Wrest:       37.0 i/s - 24.26x  slower
            HTTParty:       36.8 i/s - 24.40x  slower
             Faraday:       36.2 i/s - 24.77x  slower
               Excon:       36.2 i/s - 24.78x  slower
                Curb:       36.1 i/s - 24.87x  slower
          RESTClient:       35.8 i/s - 25.05x  slower
           Net::HTTP:       33.8 i/s - 26.53x  slower

DELETE
Warming up --------------------------------------
           Net::HTTP     3.000  i/100ms
                Curb     3.000  i/100ms
               Ethon    86.000  i/100ms
               Excon     3.000  i/100ms
             Faraday     3.000  i/100ms
            HTTParty     3.000  i/100ms
              Patron    81.000  i/100ms
          RESTClient     3.000  i/100ms
               Wrest     3.000  i/100ms
Calculating -------------------------------------
           Net::HTTP     37.727  (± 5.3%) i/s -    189.000  in   5.022160s
                Curb     35.922  (± 5.6%) i/s -    180.000  in   5.031968s
               Ethon    901.205  (± 6.2%) i/s -      4.558k in   5.078631s
               Excon     36.190  (± 5.5%) i/s -    183.000  in   5.072116s
             Faraday     35.748  (± 8.4%) i/s -    177.000  in   5.000771s
            HTTParty     36.953  (± 5.4%) i/s -    186.000  in   5.062726s
              Patron    840.111  (± 5.4%) i/s -      4.212k in   5.027882s
          RESTClient     36.205  (± 5.5%) i/s -    183.000  in   5.077528s
               Wrest     36.878  (± 5.4%) i/s -    186.000  in   5.056411s

Comparison:
               Ethon:      901.2 i/s
              Patron:      840.1 i/s - same-ish: difference falls within error
           Net::HTTP:       37.7 i/s - 23.89x  slower
            HTTParty:       37.0 i/s - 24.39x  slower
               Wrest:       36.9 i/s - 24.44x  slower
          RESTClient:       36.2 i/s - 24.89x  slower
               Excon:       36.2 i/s - 24.90x  slower
                Curb:       35.9 i/s - 25.09x  slower
             Faraday:       35.7 i/s - 25.21x  slower
```
