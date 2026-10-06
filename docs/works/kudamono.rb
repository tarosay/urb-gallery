np = NeoPixel.new(64)

np.brightness(20)

loop do
  puts 'りんご'
  np.auto = false
  np.fill(0, 0, 0)   # いちばん多い色
  np.set(0, 74, 74, 74)
  np.set(15, 74, 74, 74)
  np.set(48, 74, 74, 74)
  np.set(63, 74, 74, 74)
  np.set(1, 74, 74, 74)
  np.set(17, 240, 50, 73)
  np.set(30, 240, 50, 73)
  np.set(46, 189, 0, 57)
  np.set(62, 74, 74, 74)
  np.set(13, 240, 50, 73)
  np.set(18, 240, 50, 73)
  np.set(50, 189, 0, 57)
  np.set(12, 240, 50, 73)
  np.set(19, 255, 255, 255)
  np.set(28, 240, 50, 73)
  np.set(35, 217, 0, 52)
  np.set(44, 217, 0, 52)
  np.set(51, 189, 0, 57)
  np.set(11, 240, 50, 73)
  np.set(20, 240, 50, 73)
  np.set(27, 217, 0, 52)
  np.set(36, 217, 0, 52)
  np.set(43, 217, 0, 52)
  np.set(52, 189, 0, 57)
  np.set(10, 240, 50, 73)
  np.set(21, 217, 0, 52)
  np.set(26, 217, 0, 52)
  np.set(37, 217, 0, 52)
  np.set(42, 189, 0, 57)
  np.set(53, 189, 0, 57)
  np.set(6, 74, 74, 74)
  np.set(22, 189, 0, 57)
  np.set(25, 189, 0, 57)
  np.set(38, 189, 0, 57)
  np.set(41, 189, 0, 57)
  np.set(57, 74, 74, 74)
  np.set(7, 74, 74, 74)
  np.set(8, 74, 74, 74)
  np.set(55, 74, 74, 74)
  np.set(56, 74, 74, 74)
  np.show
  np.auto = true
  wait_ms 1000
  puts 'ばなな'
  np.auto = false
  np.fill(74, 74, 74)   # いちばん多い色
  np.set(47, 0, 0, 0)
  np.set(33, 0, 0, 0)
  np.set(46, 80, 212, 0)
  np.set(49, 0, 0, 0)
  np.set(45, 0, 0, 0)
  np.set(50, 255, 255, 255)
  np.set(61, 0, 0, 0)
  np.set(44, 0, 0, 0)
  np.set(51, 209, 163, 0)
  np.set(60, 0, 0, 0)
  np.set(36, 0, 0, 0)
  np.set(43, 255, 255, 255)
  np.set(52, 255, 230, 0)
  np.set(59, 0, 0, 0)
  np.set(10, 0, 0, 0)
  np.set(21, 0, 0, 0)
  np.set(26, 0, 0, 0)
  np.set(37, 255, 255, 255)
  np.set(42, 209, 163, 0)
  np.set(53, 255, 230, 0)
  np.set(58, 0, 0, 0)
  np.set(6, 0, 0, 0)
  np.set(9, 255, 255, 255)
  np.set(22, 209, 163, 0)
  np.set(25, 209, 163, 0)
  np.set(38, 209, 163, 0)
  np.set(41, 255, 230, 0)
  np.set(54, 255, 230, 0)
  np.set(57, 0, 0, 0)
  np.set(7, 0, 0, 0)
  np.set(8, 255, 230, 0)
  np.set(23, 255, 230, 0)
  np.set(24, 255, 230, 0)
  np.set(39, 255, 230, 0)
  np.set(40, 255, 230, 0)
  np.set(55, 0, 0, 0)
  np.show
  np.auto = true
  wait_ms 1000
  puts 'みかん'
  np.auto = false
  np.fill(0, 0, 0)   # いちばん多い色
  np.set(0, 74, 74, 74)
  np.set(15, 74, 74, 74)
  np.set(48, 74, 74, 74)
  np.set(63, 74, 74, 74)
  np.set(1, 74, 74, 74)
  np.set(17, 255, 153, 0)
  np.set(30, 80, 212, 0)
  np.set(33, 80, 212, 0)
  np.set(46, 227, 136, 0)
  np.set(62, 74, 74, 74)
  np.set(13, 255, 153, 0)
  np.set(18, 255, 255, 255)
  np.set(29, 255, 153, 0)
  np.set(34, 227, 136, 0)
  np.set(45, 227, 136, 0)
  np.set(50, 196, 106, 0)
  np.set(12, 255, 153, 0)
  np.set(19, 255, 153, 0)
  np.set(28, 227, 136, 0)
  np.set(35, 227, 136, 0)
  np.set(44, 227, 136, 0)
  np.set(51, 196, 106, 0)
  np.set(11, 255, 153, 0)
  np.set(20, 227, 136, 0)
  np.set(27, 227, 136, 0)
  np.set(36, 227, 136, 0)
  np.set(43, 227, 136, 0)
  np.set(52, 196, 106, 0)
  np.set(10, 227, 136, 0)
  np.set(21, 227, 136, 0)
  np.set(26, 227, 136, 0)
  np.set(37, 227, 136, 0)
  np.set(42, 196, 106, 0)
  np.set(53, 196, 106, 0)
  np.set(6, 74, 74, 74)
  np.set(22, 196, 106, 0)
  np.set(25, 196, 106, 0)
  np.set(38, 196, 106, 0)
  np.set(41, 196, 106, 0)
  np.set(57, 74, 74, 74)
  np.set(7, 74, 74, 74)
  np.set(8, 74, 74, 74)
  np.set(55, 74, 74, 74)
  np.set(56, 74, 74, 74)
  np.show
  np.auto = true
  wait_ms 1000
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 vZTtcto4FIavpYdkhgS1SLZlgztMPiAfpHwVCKFlgrGxMW6IjY2BEIbMkJ/dn92r6K+9g70YbmRHdmFhmqRJ213NWO85svVK
# urb-block/1 PnpGU9B6TvtqAPIUeqptDlXTqBnewHJskDFavW1MwZ/0DZBh6GmKYysDX/V8QGDpIIOOuaFxMoqVolLac1tHPBKvAMENyAJG
# urb-block/1 MAnFsvtDP1goU2R9YM2CNWPbcBTNs8yubxuDwdJ+iy+cJrSTTmn7DbrId3NTSfIAQccyenpgWDvIgczhGQLbuPGfMu+pE2e4
# urb-block/1 2rfpqlG15iTe7mKP6H6TtFrShnGlelCuggzVHCDIZMsgQ7qYg1nY0IZ9x/GMkeEtvfdzrpuOF3YvdF2ZnNWHNTw2wprwlARF
# urb-block/1 eU2I9LyyDLrOWPHZr30zj6C2kMlGEi09Q8vx290eveQ3Nl49qrN9L+4/L+6/LOZ/wjNq01cte7UCkndu35g6tg3zsK0J/Vn8
# urb-block/1 XXdjhfRRLlcBGQjBGGNCCKYUizgQjEWMqUAliSmVQmXCPhBFJst5gKB0kAEZAEG5WA2DfLZcX0Ufwmh5FoAgjUEGjDDCLCHf
# urb-block/1 Ei7JMi7ICA4eNsCDDIn1AYHtmqJVTkGGZAJJSZQUWC6ynAYzpGBAYgNiMJCgP6rkWLV85XrF7lRxS2Z2dCWen8bLLdX5dNlo
# urb-block/1 wfqp5yusH3RV3RmvWV2rflexh9fav0RJutCwxu/jfkrbOUfN7Xd7bnLjSArneZBZWQM4n9zl90TdJoS8c723U2pkyKf92LHl
# urb-block/1 ZB8kav7XYv51Mf/6YqIyNxU7Vjlrp7InqUI0ejcq8p1HiGJwkFD4ZSCEAQ7QIVigmP2pIFLWiSKjjrKG/x+iOCnkgX+MKELX
# urb-block/1 pzCmCB9O4X6VqXq0HOmal9sTMbndpvViRbtK/SRTd5kUt3XWVLJKTSscvj/tnNVKv40p11DSA6/z4TV5JW0dpSr2cdZ7mKm/
# urb-block/1 F/M/FvdfXszURWOy1Yz0j0+O999GxfbOoTxFP7ilOJ4XMMGcxAkCxZjjhFCFUAOhwTXG5L+8pcgzoAo/SSRX91R4LUlPMRVa
# urb-block/1 vgypSkq8mdSM81cxOxcfjVqx24j7k0hd7AmC20x/rEftO5szhruxvvk4Ug+1y9nsHw==
