# Band-pass filter

Process workshop with a 30/45 minute time limit.

## Directions

```ruby
BandPassFilter.new(soundwave, lower_limit: 90, upper_limit: 110)   
soundwave = [80, 90, 100, 110, 120]   
```  

Lower limit: 40 default   
Higher limit: 1000 default   
Ability to set your own limits. 

## Planning

| Inputs | Outputs |
| ------ | ------- |
| [90]   | [90] |
| [90, 100] | [90, 100] |
| [20] | [40] |
| [20, 30] | [40, 40] |

Edge cases:
nil | nil
