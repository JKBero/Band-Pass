# Band-pass filter

| Inputs | Outputs |
| ------ | ------- |
| [90]   | [90] |
| [90, 100] | [90, 100] |
| [20] | [40] |

lower limits - 40 default
higher limits - 1000 default
Set your own limits

BandPassFilter.new(soundwave, lower_limit: 90, upper_limit: 110)
soundwave = [80, 90, 100, 110, 120]
