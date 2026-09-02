pin11 = GPIO.new(11, GPIO::IN | GPIO::PULL_UP)
pin2 = GPIO.new(2, GPIO::OUT)

loop do
  if pin11.low?
    pin2.on
  end
  if pin11.high?
    pin2.off
  end
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 xVDJCsIwEP2XOfdgxYu9iGCFQlFB8SJSop20wZBImrpQ8u9Oo4iFghfBHDJL3sJLAwepj6cKogYkU0XNCtyiqYRWEA2C9+uu
# urb-block/1 AXs/I0RQm0OmVVZZZiwEcINoRLh7W1zQQXFt8IKmAwrHVIU619Zbzpbt7U3a5kU+amWNllUmOHyik/mgD9565aIQlsnMIMuJ
# urb-block/1 wwXK3HNWyYIgYUjLNN7GKQ1SXyfgnAvI/qvg1QiLPYpD2q03001MPf2V83oKb/YPgUpRlD9OxLmP9Dx75x4=
