# ============================================================
# 使ったもの：曲「おてんば恋娘」
# 原作：ゲーム「東方紅魔郷」
# 原作者：ZUN（上海アリス幻樂団）
# 素材・データの提供元：なし（原曲を聴いて耳コピー）
# この作品で変えたところ：耳コピーによる採譜およびURB Block向けの単音編曲（編曲：Tarosa）
#
# 本作品は「東方Project」の非公式二次創作作品です。
# 原作の著作権は原著作者に帰属します。
# 本作品に含まれる楽曲データは、URBギャラリーのMITライセンスの適用対象外です。
# 利用、改変、再配布については、以下のガイドラインに従ってください。
#
# 東方Project 二次創作ガイドライン：
# https://touhou-project.news/guideline/
#
# ------------------------------
#
# 使ったもの：曲「you」
# 原作：ゲーム「ひぐらしのなく頃に解」
# 原作者：竜騎士07（07th Expansion）
# 作曲：dai（M.Graveyard）
# 素材・データの提供元：なし（原曲を聴いて耳コピー）
# この作品で変えたところ：耳コピーによる採譜およびURB Block向けの単音編曲（編曲：Tarosa）
#
# 本作品は「ひぐらしのなく頃に」の非公式二次創作作品です。
# 原作および原曲の著作権は原著作者に帰属します。
# 本作品に含まれる楽曲データは、URBギャラリーのMITライセンスの適用対象外です。
# 利用、改変、再配布については、以下のガイドラインに従ってください。
#
# ©ひぐらしのなく頃に dai
#
# M.Graveyard 楽曲利用ガイドライン：
# https://mgraveyard.localinfo.jp/pages/5584401/page_202111301442
# ============================================================

pwm2 = PWM.new(2)

def func
  pwm2.melody("D#4:2 F#4 G#4 A#4:4 -:2 A#4 F#4 A#4 F#4 F4 D#4:8 -:2 F#4 A#4 C#5 D#5:4 -:2 D#5 C#5 D#5 C#5 G#4 A#4:8 -:2 F#4:4 G#4:6 G#4:2 F#4 G#4 A#4 F#4 G#4 F#4 D#4 G#4 F#4 D#4 F#4:4 F#4:2 D#4 C#4 F#4 F4 D#4 C#4 F4 F4:6 D#4:2 D#4:4", 150)
end

def func2
  pwm2.melody("D#4:6 F4:2 D#4 C#4 C#4 D#4:6 F4:2 D#4 C#4 C#4 D#4:6 F4:2 D#4 C#4 C#4 C#4 - G#4 - F4:6 D#4 F4:2 D#4 C#4 C#4 D#4:6 F4:2 D#4 C#4 C#4 D#4:6 F4:2 D#4 C#4 - C#4:6 -:8", 160)
end

th1 = Thread.new do   # 音
  loop do
    func2
    func
  end
end

loop do
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 7Vb/UxJpGP9X8KWbuZkAARe0vWmmFCzH8Ftap9nZKiuSuEvskpDS8O6ed1h+6/SqU0s7rTAMS2rSc7WZ+1ceFuEn/oWbdwHD
# urb-block/1 LKe6325uB959vz3P53k+z/NhGEG9Pr5vUED0CPIxnCfIeNhLbEDw8hyizYaD0ysjSAz7WUSjYKC3h+d6BJEJiMiAvG5Eo5OB
# urb-block/1 k42D3nDE7ay7EWnjb/9oGj6NDCiE6KpTBhRGtN0WMRzy0M8H2JtsoOTg+2HrCf7ad0PspTOU4Dpx9nRXV13BAWXWHFhOmT/y
# urb-block/1 4Gb7S9YVVwZqKpy1oXDn98GGCs/la/0uZ8HabrEUzO2nDKjfy/rcWqZNZ11ORCPAdwA/A2kW8KsMvqvGH6KIAXk5f1DUrjma
# urb-block/1 yahRQCZl4EOsj3eHS/ijQ9UjnD5kPs+HfhrsaRCpE9daUTleS0MTopEVGZDLeaHZ0Ylo5NBTtFVXr6d05/SU7qyeoimdkbaS
# urb-block/1 mbZbetdTOnK1RjssHdTpbTqH3lY0cehtpR3tXXJ4YENrILRdGw+BHszJ2/HRvGBZr9k4NNTykApL8qHtOkfpEk0hA2p3ulqa
# urb-block/1 EW2xmSPkOVw3xifwH5efbmxhq/uFDqfHNHqjrco0evGHM4UCWq2FAlbZLJ8oYG4p9aUV62N8vhJc7eXewVvMed7Wel5vCzb6
# urb-block/1 GkeH6pEBsSExwFwUGZEltkzAI2gSEFji2xz5ZANtAp4BaRzwA8BJwC8AT+eWZcAJEhfHhsQviedMS82F5guR1uaTBi/f0dRe
# urb-block/1 PxTu/MZ4jjZ05BM1KNOOa/RmV93VdqHnVm+IFQZv3O6sqChqp6pao56y2b4+9a8XUX3XOU9k2GfjrvsvBijzyCDd2vklIrKT
# urb-block/1 DvzQoHWF5v2KbfI1ao1vPGjmf+PTSEbarjPSNWVasBe0cDViILk38aK3j/CQ3n0PeAXwEkgS4GRemc8sbEJ04mglITrZzalT
# urb-block/1 S+ndxbwyD9ImyArIyxCdyDx6nbm/vf9mLPdyLie/K7uYjY7llfmujqa8Ektv3cm8fQfSnyC/AGlb3d7JxCV1YSWvjHdz+2+W
# urb-block/1 M49mQN4B+VfiV3oPOJmZnknvLahjMsEj9X2QV2Lq1BKJUPoti98A/hnws2w0BVIK5DmQFc0Z4FnAyfTuojqLAT9XV8cBx0iK
# urb-block/1 OE6OpMm8Ml9uBDgBUgyku5mpJ9mXiyR1KQY41dFWq6slfaPO3AN8D3BSnXyYW0rtv4tnFjbzSqw0mW9nArzAaODdXGZxvYS9
# urb-block/1 ccBOS4C/zvaJEJ0EnMw9eqyOravKdPqvicz6E3X8bXp38SBewH9AVCpRCDiZvfcgvbuYia8B3lCnlgrLbHQMcELdeqW+fqxJ
# urb-block/1 YK9kV4afUGcS5ESaINk93SXMfSB4A6K4o60WpCTIKyCvkcIQNpKuhnaylFZB2gE5BdI2CRqv7c/F1Y297Osn6ur98kBj5ASi
# urb-block/1 ODO3TciOYvWXydzYpLpF1Ah4tVCnAmB652l66y5RrLROEOTxIpScIvHuzWrt+AzwNOBlwL8TWwLSzR0iUldO3VFXeWW+mxsQ
# urb-block/1 Rb9AV1aKfHCADxr9BUsTxw4LlZ6g1836vBxbSVwbj33Ijc/pJMwHPy+MY36jss9XjuhkP7GYi0+pKwlzdV6JmavFAZ0z5Gc4
# urb-block/1 8mdI6y3SBVq/uRlvXom5TOcCzE02zATc/3URHcPkt0iqGFuRhv8VVlTY32vH8KxzM15yqazrdIWEi9EdL8IhT8nK5OP7GJ+X
# urb-block/1 6+dN1/2VfsbDCpU2Ww1FmS3aqsdqtlosliqzhaKsKPIP
