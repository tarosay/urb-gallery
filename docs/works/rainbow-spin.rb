np = NeoPixel.new(12)

np.seen('R', 'G')
np.brightness(30)
np.auto = true
np.rainbow(0)

loop do
  v = 1
  12.times do
    np.shift(v)
    wait_ms 100
  end
  wait_ms 100
  v = -1
  12.times do
    np.shift(v)
    wait_ms 100
  end
  wait_ms 100
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 vZbbbupGFIafJbOxhMNAAIfTVBEhnIMNwRyySQRmbMZggm3wIQ4HI6V3Va970f0UfadIfY4K0hCoSMpGu50LH+Txt36v9f+S
# urb-block/1 50Ac6dKDCdAcjLDWt3GfNIlhKroGUBBunt7PgTUdE4CAbYiCrgmmhQ0LQKD0AAInJJuSjXillWEKvRHKLuftCYDgCaBQKAbB
# urb-block/1 FCAmAYGijW1rXSlTWR3X7NXFFlkjumASor2RL1Qj3qKvr/VEzw/NHgz45hBAICtk1FujatlsWeABAjyArzd5gEAeuBBo5Mn6
# urb-block/1 rI5I+sqmkAfTRrU/S4/ZxTDhns5gs/y4U6jc4AAKhQ/hGkp/YGnENN/gjaWvqSaS3g6jtIOtZSDTCDs78GaKBYgJHgDHtqW/
# urb-block/1 YYMif8pIUVcdS3bOT6PwGYrvYCtlgIBl2OSQdhhY0UTdeYNXHTnH99xrV4xQ4pKmpmyztQvP5WrZOkBBd3vBHa6sG+SRGBvB
# urb-block/1 3fRwEpY9qEaGHY6uaKwVf/VJJJI42CeP2FCwOCKmYJKNBWveiS4oVrIRYftFX89e5PzsP1rMr07rzUUpiozlmVXpyf7xuenv
# urb-block/1 1j1+4LrbpZsptpFdXZgD3NOdrfIqtgaCZqvi+3eFS2kn5aMo+wJzhEn44x3E7THPuj8fzkHSNcvQR6ZgkDHBlrDa9jdfLGGC
# urb-block/1 J0+3xoknGvMOZL7O9cG22nqRy9YOVVuNDsNTPKoUfPpTuGJRMUPN77X6Su2/RHWgyJbwiDdsJ2AXO8ydJ5I/DyQLl0GjCT3f
# urb-block/1 P4bPrOpgxRLUTbQcrXj3hfdE2SGVYhgMVfWpvNMa7uC+xOlugy/VuguJ0oUg1ZZZvrGnL8F3w3+X0kJbQs6lpaiqeDVRaBLQ
# urb-block/1 Xgd8hNLmbdWxG1rf6s+iMp06LV2w5odKPxa5N0hU8e485C8K+dnw5L4Vi1a+auh/CxK8oOQ7ha2aN4GxPUMaXQrtCZL/+CQV
# urb-block/1 y7cJuXaFuA6VNYPximQMo8cnyadPmHKklShEEtFSWq1VJan9o5JEpWmuvbwxZ3Fuclb6qXh3c+39T5M0CddrVYEReTm34JG4
# urb-block/1 KOZg4Eh/FuaiJLeTZ+iUPEgZJwm9wuAHJknD3Jd2PjgMTx7gKZ1hZ/2CeKRS/WqJb2PqjFl85RpJ/TKdq4Y+V7pZbRe+J2j9
# urb-block/1 h6RhdVXm5fnby8+/vDz//udvf2x8t3dAcOudX1+ev73t9gdi01Qy4luwompT90K6K/PAbbt/AQ==
