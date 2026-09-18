np = NeoPixel.new(64)

np.brightness(50)

loop do
  puts 'りんご'
  np.auto = false
  np.fill(0, 0, 0)   # いちばん多い色
  np.set(7, 74, 74, 74)
  np.set(6, 74, 74, 74)
  np.set(1, 74, 74, 74)
  np.set(0, 74, 74, 74)
  np.set(8, 74, 74, 74)
  np.set(10, 240, 50, 73)
  np.set(11, 240, 50, 73)
  np.set(13, 189, 0, 57)
  np.set(15, 74, 74, 74)
  np.set(22, 240, 50, 73)
  np.set(21, 240, 50, 73)
  np.set(17, 189, 0, 57)
  np.set(25, 240, 50, 73)
  np.set(26, 255, 255, 255)
  np.set(27, 240, 50, 73)
  np.set(28, 217, 0, 52)
  np.set(29, 217, 0, 52)
  np.set(30, 189, 0, 57)
  np.set(38, 240, 50, 73)
  np.set(37, 240, 50, 73)
  np.set(36, 217, 0, 52)
  np.set(35, 217, 0, 52)
  np.set(34, 217, 0, 52)
  np.set(33, 189, 0, 57)
  np.set(41, 240, 50, 73)
  np.set(42, 217, 0, 52)
  np.set(43, 217, 0, 52)
  np.set(44, 217, 0, 52)
  np.set(45, 189, 0, 57)
  np.set(46, 189, 0, 57)
  np.set(55, 74, 74, 74)
  np.set(53, 189, 0, 57)
  np.set(52, 189, 0, 57)
  np.set(51, 189, 0, 57)
  np.set(50, 189, 0, 57)
  np.set(48, 74, 74, 74)
  np.set(56, 74, 74, 74)
  np.set(57, 74, 74, 74)
  np.set(62, 74, 74, 74)
  np.set(63, 74, 74, 74)
  np.show
  np.auto = true
  wait_ms 1000
  puts 'ばなな'
  np.auto = false
  np.fill(74, 74, 74)   # いちばん多い色
  np.set(2, 0, 0, 0)
  np.set(12, 0, 0, 0)
  np.set(13, 80, 212, 0)
  np.set(14, 0, 0, 0)
  np.set(18, 0, 0, 0)
  np.set(17, 255, 255, 255)
  np.set(16, 0, 0, 0)
  np.set(29, 0, 0, 0)
  np.set(30, 209, 163, 0)
  np.set(31, 0, 0, 0)
  np.set(35, 0, 0, 0)
  np.set(34, 255, 255, 255)
  np.set(33, 255, 230, 0)
  np.set(32, 0, 0, 0)
  np.set(41, 0, 0, 0)
  np.set(42, 0, 0, 0)
  np.set(43, 0, 0, 0)
  np.set(44, 255, 255, 255)
  np.set(45, 209, 163, 0)
  np.set(46, 255, 230, 0)
  np.set(47, 0, 0, 0)
  np.set(55, 0, 0, 0)
  np.set(54, 255, 255, 255)
  np.set(53, 209, 163, 0)
  np.set(52, 209, 163, 0)
  np.set(51, 209, 163, 0)
  np.set(50, 255, 230, 0)
  np.set(49, 255, 230, 0)
  np.set(48, 0, 0, 0)
  np.set(56, 0, 0, 0)
  np.set(57, 255, 230, 0)
  np.set(58, 255, 230, 0)
  np.set(59, 255, 230, 0)
  np.set(60, 255, 230, 0)
  np.set(61, 255, 230, 0)
  np.set(62, 0, 0, 0)
  np.show
  np.auto = true
  wait_ms 1000
  puts 'みかん'
  np.auto = false
  np.fill(0, 0, 0)   # いちばん多い色
  np.set(7, 74, 74, 74)
  np.set(6, 74, 74, 74)
  np.set(1, 74, 74, 74)
  np.set(0, 74, 74, 74)
  np.set(8, 74, 74, 74)
  np.set(10, 255, 153, 0)
  np.set(11, 80, 212, 0)
  np.set(12, 80, 212, 0)
  np.set(13, 227, 136, 0)
  np.set(15, 74, 74, 74)
  np.set(22, 255, 153, 0)
  np.set(21, 255, 255, 255)
  np.set(20, 255, 153, 0)
  np.set(19, 227, 136, 0)
  np.set(18, 227, 136, 0)
  np.set(17, 196, 106, 0)
  np.set(25, 255, 153, 0)
  np.set(26, 255, 153, 0)
  np.set(27, 227, 136, 0)
  np.set(28, 227, 136, 0)
  np.set(29, 227, 136, 0)
  np.set(30, 196, 106, 0)
  np.set(38, 255, 153, 0)
  np.set(37, 227, 136, 0)
  np.set(36, 227, 136, 0)
  np.set(35, 227, 136, 0)
  np.set(34, 227, 136, 0)
  np.set(33, 196, 106, 0)
  np.set(41, 227, 136, 0)
  np.set(42, 227, 136, 0)
  np.set(43, 227, 136, 0)
  np.set(44, 227, 136, 0)
  np.set(45, 196, 106, 0)
  np.set(46, 196, 106, 0)
  np.set(55, 74, 74, 74)
  np.set(53, 196, 106, 0)
  np.set(52, 196, 106, 0)
  np.set(51, 196, 106, 0)
  np.set(50, 196, 106, 0)
  np.set(48, 74, 74, 74)
  np.set(56, 74, 74, 74)
  np.set(57, 74, 74, 74)
  np.set(62, 74, 74, 74)
  np.set(63, 74, 74, 74)
  np.show
  np.auto = true
  wait_ms 1000
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 rZT/UtpAEMefpQvMoJxyl9wlkA6jFVBRRBRFWkYDIQGikkAIIDI4g3+2f9qn8K++QR+GF+lcUilM/d3eTO57u8ntbfY+syPQ
# urb-block/1 Lu3aRReUEVxWrUav2jCKhtM1bQsUjGZvyyNwh20DFOg5mmpbatetOi4gMHVQQMdCz9jqR/JhOel0KmkRSReA4AoUihEMfTGt
# urb-block/1 ds/1Dkrt89kLzRdzgS3DVjXHbDRdy+h2H8IHxdx2TNuq50Or6GSvmR3JsgMI6qZxqXsBi5+yoDA85gMtBKzbjtE3nIdI69lO
# urb-block/1 JxnNLZ/oujrcKfWKeGD4iYqMeJmuECK/Ltdu0x6ornE1q0IA1WgqE4hV9BQ7jF4vX7JTcSHNo3TpCBSY3n6d3t5NJ99hjMDi
# urb-block/1 AZ6pRrtqWrMTkLJ0vdrQsWU0NmoabY+ju82FE5LpbLYAChCCMcaEEMwYlrAnGEsYM8pkmSuTfeXCP5AkLg/7AEESgwIYYYS5
# urb-block/1 QX4bQpxbgmcR7D3cIYICsXkH5UkwNLMZKBCPITmO4pTbEreZt0P2HDJ3SJ4jxl4qzKBqumprxsdI7eQbmf6FdLwdPaxU7fPT
# urb-block/1 cgXmL3GvwOdus6rbg7lQrarbVK1eS/sDiKzTsjk4iLoJbekYnYV21zrxhQrnjvdA4VXyWHs2y78BuY7RPbu1tpQvp8j5emTT
# urb-block/1 tDOPAjL5MZ3cTyf3bwYkdVWwIoWdWiKzlciFwzf9fbH+BCD8rokv4sOC+gvskUAwZZj/KZUYnySJQ8T4wO8CRJD96xWfAoSw
# urb-block/1 +S0cESL6W4R/RaQUPgw0G6ehoRQP1Vhpv6BdJN6JyE0qIQR3ztSMWtRyGwfb9Z1i/r8h0jHUZNepf14hH+RgOlGwNjPO44j8
# urb-block/1 nE6+TW/v3ozISXkYPAu0N7c21z+GpdrShjJCL/QQQRQpJliQBUoZxoJAfaW+esK8JsPlDT2EvIIR/5NYfNZF/KYhP4eIH/Jt
# urb-block/1 hBQS0tWwaBx/iFjZaL9fiVwHOu8k5GSN0s5Z8kspbN1YgtFbjrQbTxPy2Dgdj38B
