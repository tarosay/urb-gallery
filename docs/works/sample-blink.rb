pin2 = GPIO.new(2, GPIO::OUT)

loop do
  pin2.on
  wait_ms 500
  pin2.off
  wait_ms 500
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 vY6xDoIwEIbf5WYGNDrYzUQHB9BEdDGmKVKwEVrSHgIhfXcLg+KgiYs33F3uvrv/7yDO1eVmgHSQM5lVLONHro1QEojvPben
# urb-block/1 DrAtORCodEyVpAaZRvCgATJzXNsX671RqdL8zvUbNFm4KmRZ4SC52vZ5EOmb0XEiMoEsp7UWyN2LVPA8GW52m9AxUzfbR8to
# urb-block/1 7Xrn1XogeYOfvtVMIC0MjLWDfZ/NlSWqHuEFwyuVVREPzl+y4SEAMvd96+K72E/W0/TP3l9xtvYB
