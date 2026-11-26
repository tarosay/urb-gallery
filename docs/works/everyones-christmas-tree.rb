# ============================================================
# **みんなのクリスマスツリー**
#
# 収録曲：
# - ジングルベル（Jingle Bells）
# - きよしこの夜（Silent Night）
# - もろびとこぞりて（Joy to the World）
# - ひいらぎかざろう（Deck the Halls）
# - おめでとうクリスマス（We Wish You a Merry Christmas）
# - 牧人ひつじを（The First Noel）
#
# 著作権：パブリックドメイン（Public Domain）
#
# この作品で変えたところ：著作権保護期間が満了した原曲の旋律を、URB Block向けの音階・音長データに変換しました。
# ============================================================

# ⚠ 「LED番号」は、その展開関数の中でだけ使えます
pwm0 = PWM.new(0)
pwm2 = PWM.new(2)
np = NeoPixel.new(16)

def func
  (0..15).each do |v|
    v2 = rand(0..7)
    if v2 == 0
      np.set(v, 255, 0, 0)
    elsif v2 == 1
      np.set(v, 0, 180, 0)
    elsif v2 == 2
      np.set(v, 255, 140, 0)
    elsif v2 == 3
      np.set(v, 255, 180, 90)
    elsif v2 == 4
      np.set(v, 0, 60, 255)
    elsif v2 == 5
      np.set(v, 0, 180, 255)
    elsif v2 == 6
      np.set(v, 160, 0, 255)
    elsif v2 == 7
      np.set(v, 255, 20, 100)
    else
      np.set(v, 0, 0, 0)
    end
    wait_ms 0
  end
end

def func2
  v3 = 0
  while v3 < v4
    (5..20).each do |v2|
      wait_ms 100
      np.fill(255, 0, 0)
      v5 = (v2 - 5) * 15 + 30
      pwm0.duty(v5)
    end
    (20..5).each do |v2|
      wait_ms 100
      np.fill(v2 * 10, 0, 0)
      v5 = (v2 - 5) * 15 + 30
      pwm0.duty(v5)
    end
    v3 = v3 + 1
  end
end

def func3
  pwm2.melody("E4:2 E4 E4:4 E4:2 E4 E4:4 E4:2 G4 C4 -:1 D4 E4:8 F4:2 F4 F4 -:1 F4 F4:2 E4 E4 E4 E4 D4 D4 E4 D4 - G4:4 E4:2 E4 E4:4 E4:2 E4 E4:4 E4:2 G4 C4 -:1 D4 E4:8 F4:2 F4 F4 -:1 F4 F4:2 E4 E4 E4 G4 G4 F4 D4 C4:6 -:2", 120)
end

def func4
  pwm2.melody("G4:3 A4:1 G4:2 E4:6 G4:3 A4:1 G4:2 E4:6 D5:4 D5:2 B4:6 C5:4 C5:2 G4:6 A4:4 A4:2 C5:3 B4:1 A4:2 G4:3 A4:1 G4:2 E4:6 A4:4 A4:2 C5:3 B4:1 A4:2 G4:3 A4:1 G4:2 E4:6 D5:4 D5:2 F5:3 D5:1 B4:2 C5:6 E5:6 C5:2 G4:2 E4:2 G4:3 F4:1 D4:2 C4:12", 60)
end

def func5
  pwm2.melody("C5 B4:3 A4:1 G4:4 -:2 F4 E4:4 D4 C4 -:2 G4 A4:6 A4:2 B4:6 B4:2 C5:8 -", 100)
  pwm2.melody("C5:2 C5 B4 A4 G4 G4:3 F4:1 E4:2 C5 C5 B4 A4 G4 G4:3 F4:1 E4:2 E4 E4 E4 E4 E4:1 F4 G4:6 F4:1 E4 D4:2 D4 D4 D4:1 E4 F4:4 -:2", 100)
  pwm2.melody("E4:1 D4 C4 - C5:3 -:1 A4 - G4:2 -:1 F4 E4:2 F4 E4:4 D4 C4 -:2", 100)
end

def func6
  2.times do
    pwm2.melody("A#4:12 G#4:4 G4:8 F4 D#4 F4 G4 D#4 F4:4 G4 G#4 G4 G#4:8 F4 D#4:12 D4:4 D#4:12 -:4", 240)
  end
  pwm2.melody("F4:8 -:4 G4 G#4:8 F4 G4 -:4 G#4 A#4:8 G4 G#4:4 A#4 C5:8 C5:4 D5 D#5:8 D5 C5 A#4:12 -:4", 240)
  pwm2.melody("A#4:12 G#4:4 G4:8 F4 D#4 F4 G4 D#4 C5:4 C5 C5 - A#4 A#4 A#4 - G4:12 F4:4 D#4:12 -:4", 240)
end

def func7
  np.auto = false
  np.paint_fill(7, 0, 0, 0)   # いちばん多い色
  np.paint(3, 1, 255, 0, 0)
  np.paint(11, 1, 255, 0, 0)
  np.paint(7, 1, 255, 0, 0)
  np.paint(15, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(7, 0, 0, 0)   # いちばん多い色
  np.paint(2, 1, 255, 0, 0)
  np.paint(10, 1, 255, 0, 0)
  np.paint(6, 1, 255, 0, 0)
  np.paint(14, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(7, 0, 0, 0)   # いちばん多い色
  np.paint(5, 1, 255, 0, 0)
  np.paint(13, 1, 255, 0, 0)
  np.paint(1, 1, 255, 0, 0)
  np.paint(9, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(7, 0, 0, 0)   # いちばん多い色
  np.paint(4, 1, 255, 0, 0)
  np.paint(12, 1, 255, 0, 0)
  np.paint(0, 1, 255, 0, 0)
  np.paint(8, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
end

def func8
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(3, 1, 255, 0, 0)
  np.paint(4, 1, 255, 0, 0)
  np.paint(11, 1, 255, 0, 0)
  np.paint(12, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(2, 1, 255, 0, 0)
  np.paint(5, 1, 255, 0, 0)
  np.paint(10, 1, 255, 0, 0)
  np.paint(13, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(1, 1, 255, 0, 0)
  np.paint(6, 1, 255, 0, 0)
  np.paint(9, 1, 255, 0, 0)
  np.paint(14, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(0, 1, 255, 0, 0)
  np.paint(7, 1, 255, 0, 0)
  np.paint(8, 1, 255, 0, 0)
  np.paint(15, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
end

def func9
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(3, 1, 255, 0, 0)
  np.paint(2, 1, 255, 0, 0)
  np.paint(1, 1, 255, 0, 0)
  np.paint(0, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(4, 1, 255, 0, 0)
  np.paint(5, 1, 255, 0, 0)
  np.paint(6, 1, 255, 0, 0)
  np.paint(7, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(11, 1, 255, 0, 0)
  np.paint(10, 1, 255, 0, 0)
  np.paint(9, 1, 255, 0, 0)
  np.paint(8, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(12, 1, 255, 0, 0)
  np.paint(13, 1, 255, 0, 0)
  np.paint(14, 1, 255, 0, 0)
  np.paint(15, 1, 255, 0, 0)
  np.show
  np.auto = true
end

def func10
  2.times do
    pwm2.melody("D4:2 G4 G4:1 A4 G4 F#4 E4:2 E4 E4 A4 A4:1 B4 A4 G4 F#4:2 D4 D4 B4 B4:1 C5 B4 A4 G4:2 E4 D4:1 D4 E4:2 A4 F#4 G4:3 -:1", 60)
  end
end

def func11
  2.times do
    pwm2.melody("F#4:2 E4 D4:4 -:2 D4 F#4 G4 A4:6 -:2 B4 C#5 D5:4 C#5 B4 A4:6 -:2", 80)
    pwm2.melody("B4:2 C#5 D5:4 C#5 B4 A4 B4 C#5 D5 A4 G4 F#4:6 -:2", 80)
  end
  pwm2.melody("F#4:2 E4 D4:4 -:2 D4 F#4 G4 A4:6 -:2 D5 C#5 B4:4 -:2 B4 B4:4 A4:6 -:2", 80)
  pwm2.melody("D5 C#5 B4 A4 B4 C#5 D5 A4 G4 F#4:6 -", 80)
end

np.brightness(10)
np.clear
np.palette(0, 0, 0, 0)
v2 = 0
srand
v4 = 1
func2

th1 = Thread.new do   # 星
  loop do
    (1..11).each do |i|
      v7 = i * 22
      pwm0.duty(v7)
      wait_ms 100
    end
    (11..1).each do |i|
      v7 = i * 22
      pwm0.duty(v7)
      wait_ms 100
    end
  end
end

th2 = Thread.new do   # 音楽
  loop do
    func3
    wait_ms 500
    func4
    wait_ms 500
    func5
    wait_ms 500
    func6
    wait_ms 500
    func10
    wait_ms 500
    func11
    wait_ms 500
  end
end

loop do
  v6 = rand(0..20)
  if v6 < 5
    th1.pause
    v4 = 3
    func2
    th1.restart
  elsif v6 < 10
    50.times do
      func
      wait_ms 150
    end
  elsif v6 < 15
    np.palette(1, 255, 107, 0)
    10.times do
      func8
    end
    np.palette(1, 0, 133, 255)
    10.times do
      func9
    end
  else
    np.palette(1, 218, 237, 0)
    10.times do
      func7
    end
  end
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 5X15k+LaledXSbYIdrSyiCBYxSb2fTGLAIEAIYEk9iWcVR77Pbttj9vhpW1Pv56JN+1uO8bTYUeH3Z5y+8Pw6tnvr/cVZoDM
# urb-block/1 rMxKZSZQWRPleARJCnGXo3PO75xz7z26WsobDNfsC3JsKWdItjMmO1SO4oUux8oxQH/za3kpF+dDSo7Jx3yj1uZ4akLxcr28
# urb-block/1 25JjcghJdpV5h23sLIhutWLcGqoAuV4+k2M2UC+fyzEDBIF6eZcdjsV9T7747nPf9u7gVss8ybaum20yQXZQReeTMK0wFpSW
# urb-block/1 uInxy/XydpdiWvtmcu7U7t++cM40jQEldV6GzczLjjhSMGmzfK2X+1Px6P5KMnE5BgFrvZylZqJU902OFXmOEWrd9jUF4FDT
# urb-block/1 1JgIbE1BUaPdXa/x4lSul1MzkSfTIilSu+oUI1Chtpcbs6Icg/RymhRwRqDkmMiPqfXtyw75AamOGa7Tbdaa3GBI8tR11+sl
# urb-block/1 n25myvbekh/wXiUbqLk3dy4+npBj8khGfqcH9+5DoMkWN73VwYAU6Ro7HjTeiKzdcuNGFy0Lp2FXIrGpZ2apzp3mY9kd29Zr
# urb-block/1 /T1yJyTfJRsMJdQ6lHjdXmJOkQv/KFONGsuQtqYNJWbgibJa7zrzHHsBSF5XmKYiIt7QivMILhvq14n7F4Cu14d2fXFJ1u9U
# urb-block/1 TqR5imzVhuRYuOG+fzOwQHyeWhrjQZ/Cz1qWQu1O65lgCnf7/h8jP//pJ/JHlOoNs4Q3zIJAB683RFbrkLiGIDqYNxE2+W0x
# urb-block/1 XjHrKM6nNalpBFFRNmiooDs5tWuz6jzI+ZgKnwor66iWyfG2WF/mHum9V5zPuSNZ/FjumyadWN6scrNGjMuafSWPwz24z334
# urb-block/1 0PJDvNkxv0kyzHWj7KTssmCiE+ftPZsxBCYDAHAPbSTfEfZ4Fqgdr3aAvtWrO4rLMflf//3Tv3782+3lb54Qzi3p85QgkvwN
# urb-block/1 Uz3GYonsQ/lij3NjdSPumU3mj8j/+qWXh/zg0RCvukowXV0BukV75Gwao+2wbfaMEI+SWWdPE/SqCDNo52LDUtUyfReIG8RK
# urb-block/1 z6PNJ1h6RCjNnYXPhBffK8ST3aVBqUUXBd8kooHaLi8+t9+/ABB4g3FJ3t/YdZ4aUqRY2ynDtdUKRoVmb9muyWa5tAUJlEll
# urb-block/1 /w4QM6Eonj6WXrYsqHl8ZS2H3OZSfIxlatOChEkCrog9BhLV0SRXh+L9pWcaElxW1j6FHGdBYvvyX7cvf7d9+fXty396ChJT
# urb-block/1 sivWBsI1DUPCvPRac/mlJWOxFNzQYGwk7jApejSHFEOX3Zb1qw28v6IZrdCFzhGQkCgKrNd3MAUdjSlLYrlp9mDc6kcZIB0c
# urb-block/1 hG2U5gPGlGgt6+0moavsGuBsAsz3TcaHjfdzYIrV9qajBKsulIDQssjNFn4ZIyWBN5iS5P1OTViKqw1JhhJFqjbsNvu1Jnej
# urb-block/1 t5Zgy5jAKU8UXbOWNkSUzCP6TjfELrqS6+XeeCSe2lXQgwCw+3tMOR9BsoltWgPecSofVrkCfc3AZFxj5yM5QHv4tb8F5wxN
# urb-block/1 aopjRNfprD5geY5Fst5Z6zQBXu0e2Et5NjpxVn2Bs5D82R++vb38zvbFx5/94Tvypx3sY1KKYzYTgSw7zQXgR0JpB2Ky+h+V
# urb-block/1 Emp9RzF51BsiD9ebSVV8OHSzA0e8bzlfTH4jMPIpFSHAm5j186nEsqvUvKOYWJVhTgFMBSloFzCfIOsz5Xliev37fz6I6fX3
# urb-block/1 fydf37FneCSNnyMuWX6ZHUbii3ZrIAsPcDSX1gwfFRd4EJcNPlNasxKnrBlzZHE2tBqm6lUxCUbPl1YkMEh1OChqIgFswosl
# urb-block/1 xsBa31Fa9DTRRvoUFS+0tBnWaU0tLO7zIsZv/er1R9/cXv7ysz/9Yvviu9vLb4J3hLaj6Q4VLepmkEjozbZq1q5PiuOsotxj
# urb-block/1 gFJzchj9QqDlavy7Gwc/GaY+NT6WHEuYTTmV6DDOHeqCFlgwWH/VY84eSxgZ2Zp0+KM5oqCOFoqIfhGsPeiOjKjI5Lq5/Ahf
# urb-block/1 Z1yZhSGVHm3OGUuUG0i2o4/rowNLpaYtc2ajpSLpU58ydVO6y9wEAhVFIxOsM9i6lG46DYa8Kri5a9uicd9OCIdKd7jvjcd8
# urb-block/1 RwccrozLNuXnfZ0W09YHBlyVLhSfMeDozjSZstObS6hRk0inCCFTlzBxxwccnvGGDORt5nKqx6d0OpWVnznOkfDRAYd9o8UE
# urb-block/1 FNTYpraiBU80O4IWepcLGNemXb/FDUZWRT7ccsnKkWnv9OHuEzaGIpv0biqqcyNmWczGualpGi9PzDW1UV8So+s73R7mmdBb
# urb-block/1 80xPQnDXE8Nxw9qEvGFXc76EF6myKx7Q1pVrrLb24sLD8uFCHpsxb2FLmxY+za4rfVVN/tS1vRXdm12zDTpRYZ2wVaHmgplG
# urb-block/1 WaM4M7r3Q97q0M9z80jDWBVl+ZqWjkoZ+COgvHOD7S7D1PhO47p5a6kPV3Lr6EZDb/BNEA8Pq7I7lKYkCd37DI4VxB21N9FY
# urb-block/1 zB8e1cz4uCWzMx0LaMUt7H1SIRTdUxo4vmF3sjVSquKZUb9NGYFhVxS0Rmlj9hCGJJv1KvMRi5FxRIfVGFqieoB5zJ1lIwVK
# urb-block/1 PLR+Y31jTLRliaOygF6nM6IBeG7Nne0/oA04Ky2bLad/qtcWcKMHND2svYxiFgzU506Zt2pu+XwqP+V0Puk/JLmDLVxqoGbC
# urb-block/1 e7b+2hIKp2lPxXWkjXnTHsl3RfrGapkhYEh2WetIUZAtMI8eNhrvW3W3z3eMWZeWKBiIozUviCPjTalajkd6OglFAU+gOcrH
# urb-block/1 8JSXEHR6TUIZGrJpeqC9T3M0G8mEEpHi2YSrm95+B1jys4zftqijU6xiS78b4c0mBOeUODqke3rNytyg6XVJgvBQLJs+m+qR
# urb-block/1 WHXmtNh6Zixl7aORrae2OU+g+m0zrQcJCBmt7YmGjpgvhXxC6ZifY6ZPMAEmk3uYasFjGPTymgKHyjyq0SMT3ie0rFtMlHA7
# urb-block/1 HPA3naWhW4+siGHxsTmBE5o25ps47VjyZbS1qY+jQcwF9O43DQM3Pvkx2zXgRI6vDbkpxd+WBUBDLs2oT47MxajP7ycqtjFx
# urb-block/1 p49EKLYrJtcfZ36OouV+hIAxmnALNnajem0/UZsUCbVlJREhQFdLUei5EQKpHS1gF1QnGoBdCNeDG7pBvtcIAR6Eck17MzkW
# urb-block/1 S5ZarI0uNsjqzAghGQHcDG1YYXFlhnMQNlVe5J8xQgjPYE8pKfRDNhxo1OuxoWBSnhshZP38IJshQNTqqufQSpX2ByUmyvYR
# urb-block/1 wvGGTrGwylTYjOt3ShoEGAgBIfIeLHRnjJGFdZ8mIng5y83dpklTwlIcbetyznmjj+oLYQXLFXwmnWmkD79nW6daKuCKd5GF
# urb-block/1 bX13MRXB7G4QlNKTa6SeEKDVywWZzMOmJqVxcwhrIonYRPUMARqxHilhMZV0iiWHUU9gaaqTeZ4ATaP1hljNvEf3ZXFOWA/t
# urb-block/1 RoXj7ACtm3LYfUKo4kg7bfYxkM+uMNnfZIA212bcAUek1R1T9Yy7FhVG7daHHqBZ62hVXNbNNkLkGUSj0OhM4HuAv8iZEWS4
# urb-block/1 skTaOIuEE7CuF56/G+FUVmf1TE3mWUtjCeTcTKcStT93gPaOVL9ttIRCXreASyCcb/jhUDKmXxYemcl6FqMlzqKEOUgbkDyt
# urb-block/1 1DT9mmSYlFCYc6KoSMdCBNwzVUewlYH6Ml2ULXPPFKCRSSPHihOB6FCMzcb1Zaxv8dwBWsU8iKpbmbTOn0UjPmjdx1HovQZo
# urb-block/1 khOlNU9S7AzpvC00jzAByNUQuOHZdhQrqItVTOvVMyWnyeKXBWlV5GH1eqaJUk2tB5TFbKpnsxPGnjglVM7ukVZ039oe0wNK
# urb-block/1 7DZvWlzbkXADX2ymG3cpHHUuGmHV2VZUgmJS7RcJPFzK+E1hJkM0vcEafSSoJdk+9yNVw4yqaqYLrMhl3AFuYz2H7UfPXpa9
# urb-block/1 dX3MYfDPA2DIEiFLjYx6I3kB918PrhfkG56ODaPCViCRowMjBrDjyGG9wGKDD8sFoA09Yg3/mHy6++OUIcfFRY7sezhhYSja
# urb-block/1 ct0GapYYp1wNU8CzxymwvlseoGkCLerKQtmU64Th5oOySncCmYU9P4dkOe8CNlKYz+h4cpxyO1ewOl5z9dEEpL3AIImOJoa1
# urb-block/1 X3+ivX8rV9ByYqqgpgQnmA0ccDf9GsBe1ONY7fFUQctzpQrSuYJrA6FEno7O3VgVG07h5H0U48lzUwWFzGYccavs7dykN/eN
# urb-block/1 h16Z7EizIwnipCwpy/ryTr8uWk5H5/gyaig/n2uWuICNauhQKumW1YJHSbq42thcEqv5t9KIHkwV3A06dwH6rTGnoyWwJfsy
# urb-block/1 z3VjA3+7k3cHNfE7biXkKxzvjqmgoeOOcRhpYuv9kZEjkAp+QqA8JHnypq14alAYxsdJpxaMNpvmZSnqfzh99hEAnjJoNnIV
# urb-block/1 r8cFNBiAmMUV1e5AlEgLPGNaXa11OryFFcaki4SDLUZQAAo9w6ht7cwEu65Wc4WY4aaZaEIedfARzTgluS/YmM83SmfWQ3H6
# urb-block/1 0Zqc+xoj8RlBWYhNk2kLxq8FQ5ytqPGgohh/F1DSbbY7hdDQWMc2bPlBz9HxG98rKJkasw7719koD3hr7THuW4YlxuHgE7l9
# urb-block/1 D4AyzySTRVhps3VNcJKjAk0FnP4wQCks6Y5taoi4C9kEHJ+b1Fkd9J5B2WJ7IaYWcrbQamKYmJvMuaXEHCxwKiRlQ3sqbjRE
# urb-block/1 +uFWW2WuII4+JhXbWU8GJVfo2/let8rzY5KteCK9Fet5FJTHZwd2TR6jszwjC7ZGgW6b0pTfhX3AnrJuNJYNY69GkyktveVy
# urb-block/1 tdCEZu8VlF1P37Cga/GeYILM8Cpra3RsEvb7yOTAt0BJgIJGiCoLTXM+7grW3YuNvv9hgHKVbA8ViUzZrWkIRDzqwzuy1XsG
# urb-block/1 JYeUh5UUXJq4CZ0mKrA6NlZ+Fk+pXGTxmLY/nbctDkWG4lWdZEwClsjJsCxExrJRuqfUVIDCAvGXINReehSW8NGwtHSc427B
# urb-block/1 QRrjK2MrUlPaZ271M8JytsgjfDWZHqBOQGOcY/A8gb0LLCP5yBQbT1B9ftqCkHqN8APj9xvAorG8r9hRabt6XsZW1129QyKA
# urb-block/1 hd/AUpL1D8CyuKnPfRO4U8ubfcaBMV3OEN4PA5bD3FCMxMpCuB0ZbEAD4HA1iPcMSxZRTJTYdC4b+M3lXFEBr1rh54GlwVWa
# urb-block/1 GjStZNe6xJQuahmLSsHydG858a3htoLM2XhuqjCtkqAzAN9v2HYLl8jRuPTqEnRf4A3V0ErXLYPjSAszfMDucgKqU+xmVETH
# urb-block/1 m1pPR3gGitAzLspLXICOmHUj0+jQEdEyZNy18ENSE3LIG1xKsv4BXFaXVEwNsNWpLkb2vDaVZzgafhi4dEwyS4vdJ4514mS5
# urb-block/1 rutlGf/DKXjPg0s12rfkyGx8A0yWOiiBUumRNPmnoXKBlqGGM6MQCIJqCdZ1xgPm7zdrPhmUFkIwQUC9C6CJkT6WT3a6Ool2
# urb-block/1 D2bkCpXo0agsVEdaK+ZfEfNggHbzHSoBZj5gVLKFWNgJDtOxqDVDOAxm/bz9fkeWulXfPgfDNUg1hAJdwi3TpiSWYm/d4SLJ
# urb-block/1 +gdQ2UxxdYquOMrObki92KwIcy3yYaCSXdlTI20XTrM2Ip31xk0pqvGeUdlBLbAiD0w0xvXAncuvC1mthJqfjEprilQ7ugGo
# urb-block/1 0WFbvdIGyobp9bP4ymxInQjii3q2uF4Wc2Gslc5KzCLdgaX5aFiWrLg+m0+ueh0h0rX4HZtAL/YBw7IA8pq00djoV9hSp+rq
# urb-block/1 jyqdUyfMT4NlIZal4kZomO/O6rU2yNdmJokIyPwGlpKsfwCWTo3A2GZcoYUjsWo1kIyVHcEPA5aEG4KnBRNANlKuQqhLBGDk
# urb-block/1 4XSt54FlTquyVjCemI4CrbbBTRlaU60EfswnA9PlKmK9QM5i1uRCm3ZyFMvaJdahT4alD03mmKxupolgXhOBCHMjKzG8uQNL
# urb-block/1 y9GwxMlMH14WIvNCRr1Ui2HjtBT+gGFplBGdpoyLA6jd74IFo2MBLd8rLINWF+7wOrq2dC5XtoV9vgwrMeKxvIGlJOsfimHT
# urb-block/1 lJjzDuobK5+jonTBl3R8IGNLHhhYZdWorDYQV3713GOlrO8blulmteGBBkmlMEGaCSpUCGMSqRZnjC0H8ACiGZPHTkSJlikZ
# urb-block/1 cIuZukTDp990MEEHPbyyrlc9cacZGa0THYmJ46tszWNubHxLO+w0N8nP84rpzKN0NDFwXmbhD0M7KPs81vSUWMDd52EIoFQy
# urb-block/1 tv2etaO/1gt4A0VTm+rcy42McZ/ngQTCk3Qjb1pjtG80yPu4pUHvVYG9GPoMJhvVjFcjUwQUvfMhJIZGiD0pkTJ+XNbQW+nG
# urb-block/1 5JoXUP9okCxEjGaisJhqWpD8vHTjshGpN4FkLTgio8RqFkl2lsTDVEonbpCMwL2935ET4yh6AI7DaVd2lCLiaiqhOWRwgGYI
# urb-block/1 feSOzyNv9JRO3DAuVbPMqsKU3dl42OOwp1JhpUTiBniVuAGem7hhVg19tpafUqg19MZPJ93r8uJB5Z9FrFFgYFCFIpsu5hKt
# urb-block/1 Rd2cezJx416Oa4xZd2fxzSCE90JEft5XlSN3ZX5KblZ85C6l8qaZERhF3EnbMiUk8w/SH4VJuM3B9Vg0r7d7LBqlh5udl+Pq
# urb-block/1 YHO4ebLx0+VOu2sJ68OL4fgE+yORdlmrBoKDTIgtujSxSCVew2tqiem3d84Xhb3aRCbqTytzcKQTiHc0CUJiKfnozEuuYXE0
# urb-block/1 zJ1ICrI19FgVmyqs9Dnqc4I1AipGndVOT4UYFVIN56vgqi/hqCDoXZIYKWVZATvXfDSgXKmmSkoTeGtjEekkxgf06ySLGFQT
# urb-block/1 A7CnS2iXtUSdsORdlDNypkVkVrOCtZPqFw2birtm71Vca/UjLv0Idt23U/BkkZ0650gmFh0ZQyaVz+TRSNmpa0N1rp0q2gdk
# urb-block/1 3RwyhTM40FgE41TcHHjPdkomjpTCHEGzCJMv54N5G6BInG2noiC2sGpVgnrlXK+QTJAxDaJ/k3aqsXbippnaNJ+644OQSzUB
# urb-block/1 1P0P305VOFRXQwOKvHPQERp0Umit8fdsp0YLS70AAxs1FVR6Eoalqhn3P7edyiAZW6IfwewEDy6G5kYnnA7+f7JT3mDC5FoX
# urb-block/1 xOKMAUhkUYhxA+xMOzUTesBasNXczmBIs3H3W2tQYlh91049kXbL9URq3sBmcKzbDXQHtMUIZg9Bmxk87NIBwrBNImi7u+HO
# urb-block/1 cdHbYRuXLisi190vB0uKsDIq1O+3C+16J25M3J2e9eKRSHqXSAqCIHDrJdfLE/ud5uR6eSqeORxEQ6nCzVHxcJTOuFNXP3uB
# urb-block/1 nYj1h5169HIvuP96vXWPXu6FdtOst0/Au57R22eQHeTg22fQXXBovn3GvGvmTsOWq44f3SBIQncKNUfKwU1xRZzkh5qoO6xO
# urb-block/1 687UnU2FtfDTSmBFtwJD/woR1pHUg7pzzOZJt8WY9VRNjkRh1tV0oAnvtC7bS/YoMboAPfjVEKVlMskGoCaQLSrptHY05Avj
# urb-block/1 c/eLi/EFe5bJmmw5NSowJleBZrPPJko1onKVxyYVIlr9CfMKang64rGihL4aoixnmWgBMJu7nV7KQXETt8Y5PVOUebwSWRdI
# urb-block/1 TXZIdWU+1ONJ8xL7wJwpSm7Tn3Oa3Bpk+pppTcfa5rj/WFHCXw1RZpnoWOOK6Gax8BoOFkwCTDJnirLm51dlISeAskxRzJXa
# urb-block/1 soJMYhlNyjk/7qFNA/1Q5Wpvsmw+F0Vz6uA85r6aVgEB9DEXfXeztXNd9LhcDStyq0p7bC1lNZM0azfKpLUIAIDbf18NDVKh
# urb-block/1 HSU2HtfSXRGvD3tFFz4PnalBYs1kHXeNsam5bGgtrVVoMZPYfudMY7Cys2pleDHqaRCth3EHnX3j9CgxukD9V0SUOOWKJzsV
# urb-block/1 OEQYN6LQCzVTPfxMUeY8K7vOgom+lqM5Q3iP4MGBZxPlmLFnw4l2C8M3S3bh8RdmE/Q4UUJfFVGWUK/CNc2kKxueE2Xwhm/2
# urb-block/1 z7XrMhGsy0z5hD4fdmXLBcha60jcDXOmKMsMa8xFsi4nPSsmdEiInmmTx4kS/hsW5eO+j2Nrd3Ydt4+6gUjKlQBn62QIo4bd
# urb-block/1 NYofHKABsgLXT1KwHu/fGlSny163HjZVTd50JibGfLFUaTluxZRSwbT5CNE2+G6HFllKuFFD+1jH4yWXkQFSpk4zUF8bpnfX
# urb-block/1 8nLuyPETJeIAWpd7sk5+UdMHGZetP0Qlcs3BIxWxyVBv5kesOlnUiRYFVdy0sZLNlWGz38363C10kyhjGIYGeaJlYatQxsap
# urb-block/1 h3dzy4mryZa3ttB9FOaS969nx2LIZKp3lbVYTqHzLcRKI3P23KPap50tQJOzNg9nNYqoutjXPXxz7iNpBifdvw6mPBEznOXc
# urb-block/1 nhQ/9LGFugA9kC721B4puzt/awI9brffbPipF5GROi8otKrh1NNbAUm9H3tEsJI8puMmPY0qy/ggW+sEN5txhwfO5jFjUvPN
# urb-block/1 jauQ9pQKSxnWKzvDmwd5/FwPZhgaPMBYH0IFc6tKB3Q0SMkkZnfBp3l8e5tdTXU0A3S9nqBbsfmZcah2BVfP8GCGp4YGUkuv
# urb-block/1 dWd4VZmB00oztoyNvH5lTF24MpEgABzm8WyI1Bjhi09+9/n//NOxo4Pbl6+NuFTKLIi0O0NdpbpEdK5167xN+F/8YXcD/4t/
# urb-block/1 27789fblP2xf/vpEZ09D+DRvMZej+Xh1EvJz66DKdqazH1Y4E9YQ8ZgDsmtE3CPTySSSRtBjnP1tXvVUS5tdoyrNDGI8qgg3
# urb-block/1 Qq2i5jxeXX53++Kj7eVPtpc/3F7+5vWnvziRV7KGmyCSjnmFzdXVEduIXnfr5w5XdKtorbDhURmAwjKihLhqjmfglZ6o1oYq
# urb-block/1 M5QDLOXlNEXynUjhTL16sd+0+nfby3/Zs+sfty++vb385xM5BoTXa62VzaajE2/DJ85ol89zJsfqefUoSZo2Koyj8yrZWi2S
# urb-block/1 5mfgmIzTRnL1gSnor8qmDOxG8t7cmdr12+3lN7YvPt5efm83c3D548Ou3ydyjPHZgM7KtxyYqkUiktatZepzdSyX6dIlCzOi
# urb-block/1 zHkyNYTnm3JA4tEYp+vYvFPKGS2ozEaEMjEF6e/GzrRdl9/evrjcXv5yr2Pf3L7439uXv9q++I/ty3/cvviPE/nG0laRK7kG
# urb-block/1 2XLMS8Z70VZEQM/kG5AuymhlnOwlYHJQ6pcqeqfErvIn8y1htBQmDM3qO66syk4FM3XMexbf/vLxLz/74x/3+vbp9vKn2xd/
# urb-block/1 fyKvqsUVvaoawivT2E6aq041TmTO5JXQxyiFchUIlUN2ChFrxBiUeHoJ+tDE3ZMTeHaZH3VEa+PicCm6dE5k0GTjV84ZtZr3
# urb-block/1 vhk1S+5sI+kYj/HTIjUYctf9h6J4t8HifGisWjuDGwwed+8mEmfwaGKXcvDW/twPNz+gGK41r7E3QZ1bQMYN74o1GsMTfMlH
# urb-block/1 2IU/LLG8upvajuKRuG83LsURDLrAkQscwfYfb30JIBde5MKAgRe+/RnrhX932o/s3rvT+6PrWldvH3Iovfs0XASkW37HbgL7
# urb-block/1 t3/fhxfBzBcGDJI/qQTZTspY4A2CZl2ygfxI5Jp27kYJDrO4+32OjvT4x0vpJgQh42VXUruwa3EE9WOuZqOIPiWiAILBF24E
# urb-block/1 A3es3LEAM19InfOhGLL7gC48u6/e3VcvuucuZt4VRnYf0O4cvCsCHr5KNXVS4Tf9+neFfSgG7mrs65ovcPRAC3RT46oVP7IX
# urb-block/1 964cgoG7K75CgBl4XIj9Dj3UxWvVAJ0Ne6pinO1hkbeEKB1lPxaKnIxnxXrQb6mxUWii12sIZaYDQ2ZJPANn49mbLHunDKBG
# urb-block/1 qiiJlXwGr8VHPaUsXnTH+zcy2sFnD6Q92HxXONsjzn0l6St9uRaZ9cLwlBe4Ryk57JnUAz6Z0c6RMFjk3YiHfZrSfX8Xnh0l
# urb-block/1 BzxfawV+IOWxX2/bGxw5WIi9nl8VOWiW78oYHU75r9hx8uUpCz0vHyozCmu4OFm02wa486Qg8IN67/l9QJFhD6KDRYSurRqO
# urb-block/1 SIlHfpRLM7oMkbUFmTM0zHm7XGIxjc/fAgIIWS0nhpgnI8FWR5K5cqojKpFWUJOd6r1qSSRAyDFIeOSRP0G8C2p706nNY84g
# urb-block/1 UHwWnkztd6KNkx75A9tSYcQPtv1jSvCmpkqGD0qkbEFPpOHd05XpRl2YDWR2mb/pTpD1uqdMep/SFbdiZwEvAoqdEgQO7u/C
# urb-block/1 p0AOSn11hB1goLj+d1NqV9W3V5/DsQFDjnj21j3C9TOgWKG0Nhc1Q0QOdMgW4pNK7t9RYcDukhRADqcUyIV7f+7qx/3Xg4Xx
# urb-block/1 HlzGhU+x++bbI919i/oTSa9grs26pJ9YXaU1q5p1DAPc9Qw8v/Kgu7dhT/v13x7CIHQQyltcfxK1LU6GsIKJqBpDMwzpqhln
# urb-block/1 jn0btRZAOgh5aphzMnZLM3CIh4llqoeHx53NpCLyYynsmt8RuvHIujn0FlqkUSGoaaZvSGus50M3sVY3Zyu1g4vFvObMZOYd
# urb-block/1 5yQeZnkydMHaAtCa5kONOr3QhRe+5JrtPKVGvqvwNXAIkfZBqeJ2iLs7uXfGN57Mr3jjmjzIIbi65ekOFX3ITTAM7c77FVcu
# urb-block/1 0IDdefrXg2o2TrliykYX8xjjoXBmGTdARPUtNYMAUGrAIz0qPFm1NFZCQQ5sin58wrkring9MPNJqZb1HVUrb1g7ioSr27QC
# urb-block/1 EOgcVlm6gp6vWt4WJYj0hgmnB3V0EqxjLoPEQtTJquUTTH1Lf2OwzZE4JHId3xSW2mb4rnFVvNGFQ9Dmu9aDQ+xm2IduF14F
# urb-block/1 eojBdweeN7+dbEYbyarGZcpRfYptqdJVO54L8E8ReYga71Hwhq5bSn97kHYiaQE0K2tZ1DN3pT1kSnYzAlpCz8K/ne/ZE31V
# urb-block/1 5ADId2BiADZFRqkZRBAKItCDl8rpuPCkEUGf5txxzqUXB+1ND+sdrwoACXodPbJC3HnaPQiDUq5F8hmD5+YqdVKyZievIk1r
# urb-block/1 WaJZ6xeoVOJukuvNcroFtNy8QMtXJAe1FCVUbnROOLKTiM2FGc1EMHvmpFnEpAO8hjzittsSgT6+irWTUs8sPi8rogFvCn6z
# urb-block/1 XzPTmzRCycpTcXQuKcYr6V19WCxfDTHCvRpb6tcWnbzNwQsB2qiKnivGNWtsZOLRXtaEG+cxoplpWN/l4XR3xWgdaLu4BnJM
# urb-block/1 QzKUCg3iczEujcZrFF6j8qshRtuUpVtTILFwuBgc57RZxqs/U4wUEgmBSb+mRnv1qaUzClDk8tnEKBimFrI7bMnQEJ7iVcvW
# urb-block/1 JlqSFuMtq7o7/GqIsR0Y6LPjpJuLt3AzTnpHtL56phhHULoVwMNxJtAK+wu1RcuoePhBUPdflbX+Tc6FHCsv5Sw52HX1+tXv
# urb-block/1 t5c/ulmek3yChP6m9F9+9KvX3//9zVSP9K7wN6UjuO9uBekb/99U+OvHv71bIdUSVWF716VqauauUXcVatbNtyu8/h8/2b74
# urb-block/1 xvbyH7741vev66B6gzFWJNUVLY5YlOV6AKxpbtf54p/+y19+/pvr0k1FpmkZucarZnVUmJNKUl/hbpfeXv5oNyl1+cPti+/e
# urb-block/1 rDxKPlb+TZ3Pf/rJXbZK3yt2p0L3uqz0jXO3LvnVjz7/0b/drB0oZyFY1MVqZSoFO4xMP6+P3uHov3+6Wxn4+T/eqiOdOXOn
# urb-block/1 zt0K0s+FqOh3Kh/jxG5zV0ur3V7+efvih9vLX20vf/PWNMD25Td2X1++0mq/xn6Nff39733xd7/9/Oe//fLVz77GGi7ur2Z9
# urb-block/1 +eqjcJftMNSFh2IY4ctXH+/L3Vvw+PLVR+kuQ7HiRWyXYHdd7oE59V2r3PxC5C5EmrrIczzTumlZeu7xy1cf+ahmf18+SN6m
# urb-block/1 5LFZjy9ffZSnLvJdgb4ocuML8iJK8fz8wkvzXUEckNeN3B/TfvnqowxNXfi7vCBexDiK2Zf8GvvXH/zksz/94vN/+dcvX/1s
# urb-block/1 +/IH25c/3rPz5b7fj7cv//v2xafbl7/78tVHiXGD6TYvfNyA7LJXtQ/c+uxPv3j9wx3Jrz/9eHv50fbykyvuvPjul69+dtPD
# urb-block/1 Z3/+b3/9X7///BeffPHjH24v/+7zP379sz9+c8/yT15/75PPf75PRvrJd17/53e2L/5++/XLbMpz4dmZwtf/9Qfbyx9sL3/z
# urb-block/1 xSe/++Jn39u+/D+7gx/9fvvyW9uXr7Yv/ry9/PXrTz/+/Ps/37f2n4c2t19/IV//Xw==
