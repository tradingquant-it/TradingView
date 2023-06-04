
//@version=3
strategy("Consecutive Up/Down Strategy", overlay=true)

consecutiveBarsUp = input(3)
consecutiveBarsDown = input(3)

price = close

ups = 0.0
ups := price > price[1] ? nz(ups[1]) + 1 : 0

dns = 0.0
dns := price < price[1] ? nz(dns[1]) + 1 : 0

if (ups >= consecutiveBarsUp)
    strategy.entry("ConsUpLE", strategy.long, comment="ConsUpLE")

if (dns >= consecutiveBarsDown)
    strategy.entry("ConsDnSE", strategy.short, comment="ConsUpLE")