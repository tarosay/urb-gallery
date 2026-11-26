# ============================================================
# **クリスマスソング集**
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

pwm2 = PWM.new(2)

def func
  pwm2.melody("E4:2 E4 E4:4 E4:2 E4 E4:4 E4:2 G4 C4 -:1 D4 E4:8 F4:2 F4 F4 -:1 F4 F4:2 E4 E4 E4 E4 D4 D4 E4 D4 - G4:4 E4:2 E4 E4:4 E4:2 E4 E4:4 E4:2 G4 C4 -:1 D4 E4:8 F4:2 F4 F4 -:1 F4 F4:2 E4 E4 E4 G4 G4 F4 D4 C4:6 -:2", 120)
end

def func2
  pwm2.melody("G4:3 A4:1 G4:2 E4:6 G4:3 A4:1 G4:2 E4:6 D5:4 D5:2 B4:6 C5:4 C5:2 G4:6 A4:4 A4:2 C5:3 B4:1 A4:2 G4:3 A4:1 G4:2 E4:6 A4:4 A4:2 C5:3 B4:1 A4:2 G4:3 A4:1 G4:2 E4:6 D5:4 D5:2 F5:3 D5:1 B4:2 C5:6 E5:6 C5:2 G4:2 E4:2 G4:3 F4:1 D4:2 C4:12", 60)
end

def func3
  pwm2.melody("C5 B4:3 A4:1 G4:4 -:2 F4 E4:4 D4 C4 -:2 G4 A4:6 A4:2 B4:6 B4:2 C5:8 -", 100)
  pwm2.melody("C5:2 C5 B4 A4 G4 G4:3 F4:1 E4:2 C5 C5 B4 A4 G4 G4:3 F4:1 E4:2 E4 E4 E4 E4 E4:1 F4 G4:6 F4:1 E4 D4:2 D4 D4 D4:1 E4 F4:4 -:2", 100)
  pwm2.melody("E4:1 D4 C4 - C5:3 -:1 A4 - G4:2 -:1 F4 E4:2 F4 E4:4 D4 C4 -:2", 100)
end

def func4
  2.times do
    pwm2.melody("D4:2 G4 G4:1 A4 G4 F#4 E4:2 E4 E4 A4 A4:1 B4 A4 G4 F#4:2 D4 D4 B4 B4:1 C5 B4 A4 G4:2 E4 D4:1 D4 E4:2 A4 F#4 G4:3 -:1", 60)
  end
end

def func5
  2.times do
    pwm2.melody("F#4:2 E4 D4:4 -:2 D4 F#4 G4 A4:6 -:2 B4 C#5 D5:4 C#5 B4 A4:6 -:2", 80)
    pwm2.melody("B4:2 C#5 D5:4 C#5 B4 A4 B4 C#5 D5 A4 G4 F#4:6 -:2", 80)
  end
  pwm2.melody("F#4:2 E4 D4:4 -:2 D4 F#4 G4 A4:6 -:2 D5 C#5 B4:4 -:2 B4 B4:4 A4:6 -:2", 80)
  pwm2.melody("D5 C#5 B4 A4 B4 C#5 D5 A4 G4 F#4:6 -", 80)
end

def func6
  2.times do
    pwm2.melody("A#4:12 G#4:4 G4:8 F4 D#4 F4 G4 D#4 F4:4 G4 G#4 G4 G#4:8 F4 D#4:12 D4:4 D#4:12 -:4", 240)
  end
  pwm2.melody("F4:8 -:4 G4 G#4:8 F4 G4 -:4 G#4 A#4:8 G4 G#4:4 A#4 C5:8 C5:4 D5 D#5:8 D5 C5 A#4:12 -:4", 240)
  pwm2.melody("A#4:12 G#4:4 G4:8 F4 D#4 F4 G4 D#4 C5:4 C5 C5 - A#4 A#4 A#4 - G4:12 F4:4 D#4:12 -:4", 240)
end

th1 = Thread.new do   # 音楽
  loop do
    func
    func2
    func3
    func6
    func4
    func5
  end
end

loop do
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 rVhtc9rYFf4rskhmbIxiJATYYjI2SAhwzIsNGL+EgADxYmSJSAIb23gi6KT2ZpNtNtOkTdL1dCbt7jbTtBN/2G5Kdn/Mjd31
# urb-block/1 J/+FzpXALwkJxolHFtLVuec8Ovec85yrTTQjSNmyglKbqMCJhSpX4Od5WSlJIkpZLSdPlzdRtV7hUQqtypmUJKYUlZNV1IKW
# urb-block/1 ciiFTgWWPYmMqzFS8UZqtL8Q2M5SqAVdRynSakHr8KdhOachL8l8jZe7CrZTyrUCwQpDVKBYjSbTRbPiMBTYJnQFNqfzPQ05
# urb-block/1 Pt+dnR9JJpZSkeEVMlTFJoopbtYeNGaP453pExY0X+KFnP6iIXfQi1IoaP4HtPZB89+g9RK0/gxaL9GGBS2JlaqqizFheNY9
# urb-block/1 AC/O2Fb51YrUtR6ctYu4ZdLHhosFNVGtu267F9Gz5mLeYCSMUjhhvaD6VV6QcvWUeOJffn5OSW3M4dkF3O2Mxgm14pk8ZyIS
# urb-block/1 CKEUSqAWNOidCTOLKIV6SYpAvCTiJSn99N6Nj0RoEsEoHGH0kXGEhcMsCQ84rF91Z3UOhjSk4RlDfL01f6YZn36wug2apBwI
# urb-block/1 RhFoo/P30RAIBUYmS7MT0e3b6biQsWXDeU/CCAHnhE0PAcJp6xUD2n3Q3AHaE6A9AtqrgxfPLxoDxiJ17Y9ey5NbZvNU3NoQ
# urb-block/1 curkSujquLnfCvlIyoa4SQqHnoQeoBxIrzHGTpHwRCAeeEvDW9quO5dyQGESngg4ZoMiuHHbS9VAwqd2WSjM2CkcztDnOhCv
# urb-block/1 3cBCnMzoaGFJfbWhHEnh8I07CeCw9lhDTlCk96vBFXu15F3hS1gifGWqoVaCuXCyUw2cTn0x8V5rebS3f/i3txddvywnCF2D
# urb-block/1 44uZKVpKz0u5KyvlpFX1TIQCqAXl11WZi6qcysO5nFxQ9Jqo8FA3TOYLlhSRX1cvAgNbXK4vsmsr1kCGUjLm/I1Nzn85GD2j
# urb-block/1 +qIwCpxQctJbPntKZOqEL2BKL21c0htN0LwPtH2g/aAj+Q40vwLa3wcBw27FvPxSeNJSSHlCtQ3L2JzCXtInr4H2O9DcBdoD
# urb-block/1 oN0D2mMd291BwNSU9TFTZt4UnosPpRIx2q2M3rokmK9AUwPa97pn7oLmv0DrH6D5M2h9B5o/DwLJqa44LOLVxepILW+eJrEZ
# urb-block/1 1r12KUj/2/3+3Zs3updeAO1PoPntSdXtV3yHnNGZq8OL0bAltkmTQ76pKoudL74k0ZuAPx4fA9Pwctq6sr7KOEeSthvjs5vX
# urb-block/1 qcA605OGrZem4bwamJmt5hNLrpgaWMuaNth43yJP22HNPK2tkPV0/tM5kunQo06U7k6F7tT5bqkdR7B+AfEB0oi7JsujZuKG
# urb-block/1 wuWTW6sFcnYz3h+pbg/xQCQGDXerudeA8qmnZ9sEL2kQu85PHRGDEZhOD2EMsR13DPx609mhMlGm6PhKuI6v+cWFEcl3gX4I
# urb-block/1 7/rbYD9MJz+jkSG6zYiX7LU86IXywDMyRhX9dNHqqnnVqLWcSeDV83ngdDgHLE0D50FBImeUIdO2Y2KCHnWpt1wqUe6VBwR5
# urb-block/1 kTzISqIqS4KSkvkKz6kpuEpd0kyUXWLclRwmRmdM08JVhjDp7dCJxlgg6I3CC6XI5aS1M1pXObWYEqurmVPOt03MTZMsnmer
# urb-block/1 vELPrV0RZH/4HOxQPIhSBHT/ICk7Nj/pZx2psUhFnvT7F2djYlnsFyluE+xbEJ8JhoDP6FkRxkQaId25oowkMHV/TqTgVEYP
# urb-block/1 HuMao0g9egYM8bXZSU+j6sfqlRrtu0K7LJlQpR9wFqLAqPOQfKQxZCIRtz7WeajfGvWFNho9hDHBO0bPc/cZ9ANCv75EZHCX
# urb-block/1 I1w0D/OUl52Zd18b+wI+7/S98MB07N1/PYFxwliU97zeN2e30tH6XF2alLyzwmiasCwv3LYZOYsTNvunyKsvhQ+cujMz9pCM
# urb-block/1 rS/UONWq2IfDawkr0St1HZ+ZubJfHFsqRNLJXCHJ2WqLVZLFL5+5kcZwdn1r+LoUCtGOWG2drs4vfIHMFUnZpG7nisPjlhuF
# urb-block/1 YT/uigRX+0UR09ly+ox9jb6RNJ3dlsJBnYlPaIw1nfKShzR2RGdozpjIkCcbWAKOs6YO/2EUjl4kykL2NG++5V4m7Jhtanj5
# urb-block/1 2maRL5/7vuFw9NrR9OrJLhFX9LSaXCSWgzG5vlBjt7MbE1u2XnE1/plx5ff7KSxro4VQYS1rjSRj6Uzm8nFF53hFLW4L09HV
# urb-block/1 tL3mT1NTWPwLxJXzumU0X573T08XKo3w3I0SS/Rt4owgMQLBaNeYbhAYXRumN20IbbIbu2Z44Tl9NnAJJV3s1bwvWizh9sxy
# urb-block/1 fKs6f3vJ1Q+k0S9+gOAU15mIP/tVZUBoeas0GyvmA9HEsp8xzWdn7JahL+I/yDs66I6IkY2f4cRqILhxa80WTVF80Mm5sGiV
# urb-block/1 K/StIPb+njtHLMmGBVoPSWopC5GYze8xAWi+NT4JHD27azbfFG+KB988OPr69eGz18ftpzdFDPnwo8Fxe2e6JBYEHvHwgqAc
# urb-block/1 t3d1uQ929cftnWhJ4EUVCZUKRbUr95FtFdQq1RFVQtQijyQkWcidaO7dgB63dxg+W9bl/dxZJJ/ivuP2ToJHEiWliCxKVYRD
# urb-block/1 grws1xG6KJcUdZXrKvmwuB23d2JFHmFLsqIiIYkXdMmb4m8Pn7x7+/zwhx+P209B6yFoPYbmWi3d7i5o/RU0X4DW/nF7J1LN
# urb-block/1 CKUswkirXEnszDa89e7t84NHEPLBi12g7QBtr+Od5v3j9tMTC+9+/ctv//zp8Pne0eNHQPv68M2dd2/u6i7fO3iwd/jsNdBe
# urb-block/1 HT65d/DLPdD8FtzR4nMexAOD8eAPD4H2EGivjvb2j54+AK3/wos//gRavwetNmj+CrSXBy92D795pmv7xdAJ7jTRxv8B
