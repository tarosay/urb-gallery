pin9 = GPIO.new(9, GPIO::OUT)
pin10 = GPIO.new(10, GPIO::OUT)
pin11 = GPIO.new(11, GPIO::OUT)
pin12 = GPIO.new(12, GPIO::OUT)
sonar = Ultrasonic.new(1, 7)
pwm5 = PWM.new(5)
pwm6 = PWM.new(6)

def func
  v = v2
  v3 = v4
  if v2 >= 0
    pin9.off
    pin10.on
  else
    pin9.on
    pin10.off
    v = -1 * v
  end
  if v4 >= 0
    pin11.off
    pin12.on
  else
    pin11.on
    pin12.off
    v3 = -1 * v3
  end
  if v >= 60
    pwm5.duty(60)
    wait_ms 100
  end
  if v3 >= 60
    pwm6.duty(60)
    wait_ms 100
  end
  pwm5.duty(v)
  pwm6.duty(v3)
end

v5 = 0
v2 = 0
v4 = 0
func
wait_ms 2000

loop do
  v6 = sonar.read
  if v6 <= 12
    v2 = -90
    v4 = 90
    func
    wait_ms 400
  elsif v5 > 10
    v2 = -90
    v4 = -90
    func
    v2 = 90
    v4 = -90
    func
    wait_ms 400
    v5 = 0
  else
    v2 = 90
    v4 = 90
    func
  end
  v5 = v5 + 1
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 1VrZruLYFf0WDEiAbcCMBoTAgJkHg8EMFgYbzOgBbDMao+685jkvaSWR+hPykod8TilS919E93bubKou1O1OFQ9gicPeZ6+z
# urb-block/1 1zp7n4MOcII8WqpAVAcEVppu2ClP8Yo6lyUg6oUev6V1QDuseCAKbBRuIEsDVWMVDYCA+RiIAjLiO+Dy0Wh7nQu77j9GA4E+
# urb-block/1 AAF7IAr7fAgEHIAojPghYC6tNtq9r0zt7v3e+t3DM9uqLLHKYCRLk/n0wb4qBMOT+ba5NOKziOCdNoRyEYCAyZwXxvfmmo1C
# urb-block/1 DogCCAABeDpfA6JAGDAgQOL3mpmfLavMWU7g1YHKPwZBMZH4iJqh/QhLTU+eTqYTyL9wQmGNu4/7wVonZw8rTlaz2HjDadD1
# urb-block/1 sccJGMbzECms3MLvHtQZO5Z3z9yLrDYbSBuR45UH59W6a5+zpiJx0k57lmGrlNfWL5xXWxUg6jUM4zNh3cE3YgXhwWgEZM/R
# urb-block/1 oVR2b1DOC6/501FdABDA7zWFJTVW4+9+yypT9X6pVf5u3j7jhVesggNR4Ncf/vnpTz8AEEB5HxGo1EVCrq8GVCiHgq1Qkasd
# urb-block/1 J3eYU8jjENVGcfZp+wxy3pyE+VOVfNHzCiQSb3rfixFjL5TLHkKDiZXlKJfEg3WXM8cIurOLvNduONYL6MWlC204c5xK9frZ
# urb-block/1 LHcT9jt2rg1E9cFunB5W4tmiPWqIMRbKN+v9eBB4HnyFfO8UG1EmWiALW8eCUomjGK9kW8jbKfq83vtZPr2gF/ObyAq/fTKa
# urb-block/1 LYzF/pbGW96sY8bn1wmBH/3GWiQUuSft/ef7Savw7PjB+MR1OmS1Zm9OwQe9Pcs3A/DuIpvEntPd8bqGIB+gbU29VEgwJ+Bz
# urb-block/1 aI9kSVNkQR3MJw8OQ5jGVOw1SfIThdZ511hXkq03yc4LKl+YpOWNpAFRBAJmrIoLKg9ENWXDv0jMQtZr5liQp/PRYCSLK1bh
# urb-block/1 H1xXpKheZSLMkJ4VZkeyGKLRzotYawQQBcpNHHjhAnvv6gvtfgOLpJenXh+WkcSad298pgkKfUbppk9K14DqLkxSlA0ayenO
# urb-block/1 BMMXe/Nr1+bOWeq9AbhKrmCvXt9zBXdQzRA+S6cTfxsA4vtf0gKZmin4r/VNjlkxlwjGw1KmZVj047YRXn/H+sbvttVZjKwb
# urb-block/1 e01fOdtdXBHotyjBkesVLijx54kbFRvnNk7TzejeT3reWo5cL3HeAFdep0GWQ0r7TH1mdDrE9EaJSya1hm8rrpZVkIx4pqlk
# urb-block/1 rRB4O8fAk8JBQCGLvJujKVwFY/NldZwd8+K6Sld7evctR3PNb4SieyhonMlUCNmNofzAyMAjlb22GLmKooEO1pQmWV/DDcL5
# urb-block/1 caSHc4xuQlHvE0VNsX9N0dC8zdWQvTKsn5UqdUirDrj8HVO0vUroexANZ3JsJLg8F8S10foYisIE3Uho01Mu55otPLSsJzsm
# urb-block/1 FIXfw9Hn+PeMrasydqI2VR7CytKPnhe77xj/vh7mugJcmYdQLJU4tZwjm/WCkF0Hf+5Y9/uCcJAYxNwHjZsUSYtxI/yvJDKR
# urb-block/1 Zo7Mutg57xrEIm5kpjlKuFEi47mR2t2ElG4edI5UAlwu9c5Fibyy+wnYLUbfvSuD6xEUcxOekH1D/GHdj+F0OnqgpZIY0+mm
# urb-block/1 4UGxUMSkPnhR20IAXibx91CgZD2k50okVgtXbTpTJiwaWv+OKcBTnKE1xcVkhROBnSNlQFvbh1AA6/Qtfuch00NJZrg6pjlw
# urb-block/1 6r5UJHw2v+5tj2asNH3cfR1cZL1YxfmuEEpQ67KcTveYr8muDF5uvntvxrtyOp+36jFNzSVOFc3v2TVMtrbLfdOYf+wy0mi/
# urb-block/1 z2XGve4SdcCxY7Aq7s+/9UzB4LOeaSQLArtS+fFvncXlZDK+3F+Z0rV7tG0VOx7sBaKu9STsHWJh7CKgwkjXRLojlxml72wJ
# urb-block/1 WKi//yq6YtW0H2mUyvlcti6XQx0K8fm/ptjJIO5RwdIPxuROJqWi3DBnUy8GY864GxQvZUd2vbANIYm25lSEYqFLJi56LbmD
# urb-block/1 pXVwA7KlwJZRDi65Xu5/SxD2CD2l1lypMQ2umEMyOWt0WheDuaBIn4XQpOPGHJ1O+Njgl7AvVYAZsF3we94I68d02LkYsRmB
# urb-block/1 6c0JTAaWuNRd4IOaWfV+a4e9IqZg1dpM9Amn7LJOB8k2+lXlu3ey2CXljNTd7awGtayuxmPl+oy+onzP2LP6rHJWD8PhCR9s
# urb-block/1 MW8SvXR++IUGezyfzjVWGOyUufaEP5ZsLhc4uXd1+10SHu8zmZfVKVGo3h04AhBANrHmncDJk8nnjmAvupoWpnFHvo8PxRp5
# urb-block/1 aDmIkN0yMHGFeJ/7koB3FAWm7rAdEkszGDeD62N3iG7TnB/+UmTSTYFFdyCZ1S2uBUcJeX+ssAqOzDB8GdjnQTTVtdYuPkMl
# urb-block/1 0EbqofSShA6nauby6c5Hbw3DjTdaPIpHUPOXMoOIHHOXTQp0UyLdW2OVuTYTeW0+etxxx1QY9i/mDCP3XRUko4ZE/C31K61y
# urb-block/1 s0CUuzfyH7UzmnV5oAhHEM7HLKFuiFBNyn/kOlIiUsJWGwhk89QOrs9g10lLS3Or75SVZg2ZlrbjRnMNh7jVdpCbZpLXLu3L
# urb-block/1 8+Fr9H6ddvHByHIHhw9W3pGc5TTE+jvpvRHpURN+O9AsraJY9zBc3gt9y3pf23IFayGY5OpFPx6oEvGN3X399ntFatWaKYwi
# urb-block/1 LX6858WWddpvQXiThL1Z72uzgiPsPtawThiNd32qDN4T8o1WIR8g+IYlMFbOvajYT7vl6rJXLZS2Zr58HyP47uMA7HbTWanB
# urb-block/1 HpJH54zWD8Uvhnab4h8yBXg5nQcytlDPw/kWZyJMfzGyGxS/HuTza6sHjS4czuSw3fZ7V/4/rJL9eMWPogq09SAozZSWyaAn
# urb-block/1 iWB9k+uUr1T8hmQjt3oIEXJIzTegwLgbNDvJ+38rfqyxLUadmWrDKlgOEL23oFvo2qW9XfHrQ1BH7fEgk3BCLXHaWIwIK3Bz
# urb-block/1 DX+OCYqtS7UmwbrX1eARyq18pKZ7a6m96DZ0y76pDOxRPhIUxK/R9OYsXUudSn3LILZpZnUCJ8jG9ZvtFckj9TbIEV3KCTSI
# urb-block/1 1NETPGacvbcBhN4j6qKsycpgJe+erB/cNjpbPDd65WMEz1q66NK1MBGjuxvqTKvZvXd01UFnTqIrSnYTgsskNmcptBnIe248
# urb-block/1 6LRwKBNZleX69CAIqz5qm4wdZpcR3tvSejlM5E6R4TRSJ5pCOmwTNi3h5rQm6XBAwbyRPZNGWjI7W0nn7Lec1lY1zvjjKknv
# urb-block/1 2E5MFQd6VlpcryhXpDUuzKU9HGHKRDFEOLCct9hPf1xah43qxtPblLIbyD7tibrISD6TtA7dnNZjJjOiUOeslGjFA3ZYlCWe
# urb-block/1 vDGtHTpS9BRncMK6wkrOeGuojxa3pvUrOAZb9ukm1RneDzJnygLV27uN013SZMsFpr+rFbxhCjY91pr6kgUP3gnJB5ACKT11
# urb-block/1 YVWu3cDuX30Desru+3+nSax4N6df/vW3X3/6+WEa5v9dgB5Hf/rxz59+/OvDaPNz56fR//np77/8+2fs8crXFK+n4b/+8I9P
# urb-block/1 P/7lcfiFm4JX1lOPtxamULy2/jjcvKfoG/8F
