# ============================================================
# **音楽を作ろう**
#
# 収録曲：
# - もろびとこぞりて（Joy to the World）
#
# 著作権：パブリックドメイン（Public Domain）
#
# この作品で変えたところ：著作権保護期間が満了した原曲の旋律を、URB Block向けの音階・音長データに変換しました。
#
# ------------------------------
# 自作のもの：「自作の音楽1」「自作の音楽2」
# 作者：たろサ（この作品の作者）
#
# 「自作の音楽1」「自作の音楽2」はたろサのオリジナル作品です。
# 著作権は作者に帰属します。
# ============================================================

pwm2 = PWM.new(2)

def func
  pwm2.melody("A4:2 C5:2 E5:4 D5:2 C5:2 B4:4 A4:2 B4:2 C5:2 D5:2 E5:6 -:2 F4:2 A4:2 C5:4 B4:2 A4:2 G4:4 E4:2 G4:2 B4:4 D5:2 C5:2 B4:2 -:2 A4:4 A4:2 C5:2 E5:4 D5:2 C5:2 F5:4 E5:2 D5:2 C5:4 A4:2 C5:2 D5:2 D5:2 E5:2 F5:2 E5:4 C5:2 D5:2 B4:4 D5:4 G5:6 -:2 E5:2 E5:2 G5:4 E5:2 D5:2 C5:4 D5:2 E5:2 F5:4 A5:4 G5:2 F5:2 E5:2 G5:2 A5:4 G5:2 E5:2 D5:4 D5:2 E5:2 D5:2 C5:2 B4:6 -:2 E5:2 E5:2 G5:4 E5:2 D5:2 C5:4 F5:2 E5:2 F5:4 A5:4 G5:2 F5:2 E5:2 D5:2 C5:4 D5:2 E5:2 G5:4 F5:2 E5:2 D5:2 B4:2 C5:8", 120)
  pwm2.melody("C5:2 E5:2 G5:4 A5:2 G5:2 E5:4 F5:2 G5:2 C6:8 -:4", 120)
  pwm2.melody("G4:2 G4:2 C5:2 E5:2 G5:3 E5:1 C5:4 D5:2 E5:2 G5:2 E5:2 C5:8", 120)
end

def func2
  pwm2.melody("C5 B4:3 A4:1 G4:4 -:2 F4 E4:4 D4 C4 -:2 G4 A4:6 A4:2 B4:6 B4:2 C5:8 -", 100)
  pwm2.melody("C5:2 C5 B4 A4 G4 G4:3 F4:1 E4:2 C5 C5 B4 A4 G4 G4:3 F4:1 E4:2 E4 E4 E4 E4 E4:1 F4 G4:6 F4:1 E4 D4:2 D4 D4 D4:1 E4 F4:4 -:2", 100)
  pwm2.melody("E4:1 D4 C4 - C5:3 -:1 A4 - G4:2 -:1 F4 E4:2 F4 E4:4 D4 C4 -:2", 100)
end

def func3
  pwm2.melody("E4:2 G4:2 A4:3 G4:1 E4:2 D4:2 E4:4 G4:2 A4:2 B4:3 A4:1 G4:2 E4:2 D4:4 E4:2 G4:2 A4:2 C5:2 B4:3 A4:1 G4:2 E4:2 F4:2 A4:2 G4:2 F4:2 E4:4 -:4 A4:2 C5:2 E5:3 D5:1 C5:2 D5:2 E5:4 B4:2 D5:2 F5:3 E5:1 D5:2 C5:2 B4:4 A4:2 C5:2 F#5:4 E5:2 D5:2 C5:4 D5:2 E5:2 F5:2 G5:2 A5:4 G5:2 -:2 E5:2 G5:2 A5:3 G5:1 E5:2 D5:2 C5:4 D5:2 E5:2 G5:3 E5:1 D5:2 B4:2 A4:4 C5:2 E5:2 A5:3 G5:1 F5:2 E5:2 D5:4 F5:2 E5:2 D5:2 C5:2 B4:4 -:2 G4:2 E5:2 G5:2 A5:3 G5:1 E5:2 D5:2 C5:4 F5:2 E5:2 D5:3 E5:1 F5:2 G5:2 A5:4 A5:2 G5:2 E5:2 G5:2 F5:3 E5:1 D5:2 B4:2 C5:4 E5:2 D5:2 C5:8", 120)
  pwm2.melody("C5:2 E5:2 B5:4 G5:2 A5:2 E5:4 D5:2 G5:2 C6:8 -:4", 120)
  pwm2.melody("C5:2 -:1 C5:1 E5:2 G5:2 A5:3 G5:1 E5:2 -:2 F5:2 D5:2 G5:2 B4:2 C5:8", 120)
end

th1 = Thread.new do   # 音楽
  loop do
    func
    func3
  end
end

loop do
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 rVZ9TxpJHP4q62gTRWhhWUDXmArsglgR1FpfqSIuuIq7BBYVFeNCrtW2tmeba3PWq7mk99bm7F2bS5seth9mhOhffoXL7Bus
# urb-block/1 UsFeN2SZ2Zl5fs/vmfk9u6tgOs5H5lOAXAXxMBdLh2PMLSaZYnkOkGajNjq+CoRMggEkSCenJ3luMiWEkwIwAnYGkKDLN+4a
# urb-block/1 nu7ItiTo4KK7O+Zbj5DACJYBSZiNIIP+skYdQpRPMotMUgVYn0xdjeGeeAPpm00PhqZmDSm7DGBtlwAs9vYzCOF4ij8L02RL
# urb-block/1 s/Qcw5qGA01dWSHhnwmEFBiHQ8axGkGUZeIzUsZ9Tj8NSHCy/670yyHIGgHLJdKCNEQF0F1KHzUqAkfC8bgaMBaOsw73mtc2
# urb-block/1 yVEZ3OtrnBpbAUbALAvJ8KAQFhi0NpyMpSQxUwzCNmerUDi++6q4eQeKBzIXCyLDMctCPSQEYqA1OG82j2cz8UlHa5vX2uP+
# urb-block/1 FiRwkJUvvfAzTFSN3OAY7L3SPDoYMN5cdRMN3q60xyTrbbdbJb1xRzXBYS4Hc9tQfAfF36H4BIovYO4eFH+tdwsEZiHBqyTG
# urb-block/1 p8xzywuUoyVkvdHWv9pJ+pYpUBn0Ju0PBgBpMZvrhF9g4vxMZpLTzndU8PX2p6PDYx03Bd9SpHHFM2TQhQj6+gAJcGAEfro3
# urb-block/1 QI0CErhtmIsgrZiTIC2YlyAJzETimIfAaNSmCMwtP/ESaIod3XC0wo5uOOa2kW2YqdYxOMc06FxMJlsN+I1UOBpaW4gR/atD
# urb-block/1 tZlK8TAXYoL4eBFvD+JNy1QuGqWJyh9pQSl6URrKFIxCsyhC/smPPIocl06vJ9Iwj8+T7qG5QMay1M2NtPDeWulJpBS9kaxW
# urb-block/1 zERaUC4mxBOXevK2VNketQQurgPbDVd/V4IMjPRcS3QuNo5cd7c75DowWdptciG0t9dZ9pcugGuTfnaKXe8YiFCc295jiBhi
# urb-block/1 rVULAP/qAgiF0+OZWIwNDdzOrqx0OqhR3FpLd6dyjHGMtiFJbWrXhRRWj7vyjFLm2ZUqIXFMXU/I06SuVEe00lKQdMC4tN6p
# urb-block/1 RagW34O6tBZVCuHUM1HpSJMVgPKoGpbAvCpjWlvgrYKugyMwp7K0jI7L3fKAClC5VpdoPWE9tcNW4+jVr1VTlj3p0iVLj11t
# urb-block/1 cLoTVN8cOWdq6m6av907W5cjlbk4NYFojZrUdduRSZLEpUm19bfN2YeHuP52YiU70DowYh6YqkXKqx07HT0ralmqaKi0ZNHq
# urb-block/1 cRHC3znLtbDkbAs+lTKMLi22NftlF8FxS/0mgn+VifjWr9jM0cUYHVzrGAriLc6eoP8bm8hQ8zDPphPXWUcoFp0ZCThc/Wt1
# urb-block/1 mLciuhO9drzaa4eS3z0koY3i+vctrs2rdIxynVeb7Kk0GqVLy++qM35iRXtt0XuXYlSUUmHKwajme7INNdZyinOuYDrrFlbU
# urb-block/1 slxYypU0VCMlKo5wGUVX8uccoJyCSdWnDio6EIXKmcx01Y1rBnWOt/ucXJc3o8GVdLMlQNv5jluGgCHRMr8crPn9UJbKpW2E
# urb-block/1 U/9a+X9mtNDaZW3ojvf6mmNM47WxkHGpz1gXKZN8Ai1f3giTepDKNCucvOIKZY2IXB8vsBFE1GCQzQTmHh8d7kkf63cMhglu
# urb-block/1 gis+enjy4G3p+dvTwu4EZ8K+9C1/Wtjs4TOYwGPCLIMN88n4zGlhCyEc7zw7Otwr/f7HaWEX5ndg/inMv4L5PMy9gfktmP8Z
# urb-block/1 5l7C/LvTwmYwPR1nIxjFL4RZTlktxTg4OtwrPhGh+Fvx5RYUN6G4r4TPbZ8WdrUIR59/Ov7zfWlv/+TpEyg+KH3cOPp4B4rP
# urb-block/1 oLhffLhfev4WigelZ/eLn+7D3GO4IQ4NuDAX2rPi9ztQ3JE99WT3Icz/ixo/vIf5uzBfgLnPUHxdfLlVevRcQvskY8KNHKJo
# urb-block/1 uvCa4I7vvkKiigdIO/EAybDxQHuofArCje3zT3G4sT3BHR3uHW98h5aJ+0j73D+nhU29LgfqHFmzS8BD8Y0GK1F8hXYn9wHm
# urb-block/1 78H8a013KP4oZatJDcU3ckykzIe/in+/UJVBE0H2Pw==
