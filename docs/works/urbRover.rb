pin9 = GPIO.new(9, GPIO::OUT)
pin10 = GPIO.new(10, GPIO::OUT)
pin11 = GPIO.new(11, GPIO::OUT)
pin12 = GPIO.new(12, GPIO::OUT)
pwm5 = PWM.new(5)
pwm6 = PWM.new(6)

def func
  v = v2
  v3 = v4
  if v2 >= 0
    pin9.on
    pin10.off
  else
    pin9.off
    pin10.on
    v = -1 * v
  end
  if v4 >= 0
    pin11.on
    pin12.off
  else
    pin11.off
    pin12.on
    v3 = -1 * v3
  end
  if v >= 60
    pwm5.duty(60)
    wait_ms 200
  end
  if v3 >= 60
    pwm6.duty(60)
    wait_ms 200
  end
  pwm5.duty(v)
  pwm6.duty(v3)
end

v2 = 0
v4 = 0
func
wait_ms 3000

loop do
  v2 = 90
  v4 = 90
  func
  wait_ms 1000
  v2 = 0
  v4 = 0
  func
  wait_ms 2000
  v2 = -90
  v4 = -90
  func
  wait_ms 1000
  v2 = 0
  v4 = 0
  func
  wait_ms 2000
  v2 = 90
  v4 = -90
  func
  wait_ms 1000
  v2 = 0
  v4 = 0
  func
  wait_ms 2000
  v2 = -90
  v4 = 90
  func
  wait_ms 1000
  v2 = 0
  v4 = 0
  func
  wait_ms 2000
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 1ZrZbuJYGsefBQMSxjbYGAM2Qixh38GAWWTA4AWDFzBmx6h7XmCu6mqkGWku52o0N30x/TatnuUtRklV0kmFVAUq06r4AkXh
# urb-block/1 5NvO7/zP8XdyAEaKPp4tAeoAKJwmrThJaAnGUtY1gELhh297B8DczQWAAlbGaKBrg6XJGSYAAzIPUMCkvKVgrQ7FJvNoCl1H
# urb-block/1 QbTEATCwBSjEj+IwsAMoBMNhQNbmK/POV7Jy+3ln/faHR7bHnKLc280yFSLXmo8SPYlyJJ0oPV1FARgQtqbB0SZnCrd/yxnS
# urb-block/1 8i7WpXBr22fBgCgLCn/npxwvpQAK+O8P//jlDz8AMNBCb397Z5wXoiu97MAj7mh0tdpVtNAgB1gw0MIehsCtVp2yFVrNxXAv
# urb-block/1 r6U2mD9QgGU9ToRONe5MLiccr28e5aJy5mSgrdSRYNyn04ED7O4EDUZzLxM8JfPlPWMDnkTbLAEUat16oFMN7LV2m+F1TZl3
# urb-block/1 qGhKpPqL0sRTR5jzdi0Y0ISt+VLtN5xsDtTlvV2vZJMb5RmHeI69+r45KN5QPuBx8iX6tSG2MTwLj9ea4YkWxvnqPKLy7ech
# urb-block/1 4ih6F+XHB34SGy+I98ZsYQfu15FpLNzckXgrQ4UcwY+4BQKfaAsQL1NgfR3ENWfI3EgRloOl8EC5d3fobDUW7EWHc85bFIQK
# urb-block/1 5XySQytef0DH465ChVEOmTdLucwep5Pl8ufotOLFZuq1BYyXb3CsXihmM+maXgy0W5gPPzvH8BeSkX5Lxu6s90zUAquii4YU
# urb-block/1 HMkHvb4Xkzm/VL7M09kSdttDbA8ebTP1aBCIo5g6FPAXvUZS/igYpDh3MOKXy5nyxur1v6cSevOOOOYQXGp/2slMOvNDJqS/
# urb-block/1 mMwLUvLFEo51zTR0ZTmQH9Cv5zpBL5kNHJ0zPdiG0HBRYp4p4oRbppSlAFCmsRKe1CuXRs85UnRJHg/GujrnDOHeFVYOq2PK
# urb-block/1 zs7gOpZu2yOBrC48Sa9SBSgg00g9XVDx107HvCpBZXsjylZB3W2XBjEm5PuW6WDdN1YVZXDIya35JeaMyQ3scqJhIPHaBJLO
# urb-block/1 9GFSOi13w+ExNVjH0Vho8YLs3tpNVs7W/k7bZEk2OWWwMWTzof6j0k7ZGEky4aXV2Y43y+3e092imisDFEACMEA34o1bgdM1
# urb-block/1 4CsKf9YTyHAuaFJIkllfMJFI9b0wzJ7xhKGPXYniPb6pIp26yJ+H2bdZe24WXPhbqnfU9Qfo6dcyu3V3RWqTtI8yoz5hEsAr
# urb-block/1 cTTdSZmV+VdT+2IVz+raEB2OPTFNmU5sXqjhNLaRSPJ32xqGK5TK79U9ZOKF5IDUw56i/ZUL6c4aZ8jmRBVMefxA9vzY2Pgm
# urb-block/1 nDgmu3R0j806ov/50i81i41ctdi5cv2HnH3TPtu1qi4CyYZtgU6gunweNoJdtigxLeqoDBS6cWSIxQnqgD1tdt7qK2XF8mXH
# urb-block/1 vKpFO/bWdBya+gt8NXfp1D55LtJ7A3LVZrranpPuZGZK3Oy17ub/pPcOU0Q6gQo/HPVbyZQLyXQI7/es9+4NHCazG7XAie5d
# urb-block/1 Oq1CgtW4fPu9AK1KIxFv0TY81UXjs1oPt2HCGWCv1nsx0kKhPmwVnBKMTyHLljwOz0kV9u2CzwxmNTSxqYrYpiBC+bE3DAfO
# urb-block/1 ufK9keCvZVuUM1KbrSkWRomY5nNL4ldTu1Lxk5pTCnV85L69imjG2LaLMYWv5na54i9iXVaJeYsqXysxWJOMZKKF3+0k+/aK
# urb-block/1 L2dFhA1HZjfd7tTW3O7pTePMYe8bFb+uOej1IYApGaziG7SgiAdqfoeKryf2CXoTFp0BPzjsnqgqkhAvndrrFb8Ktmcu/gDy
# urb-block/1 iXov5SLTtFxOANdq+paxN0Ep0vWzxpLI9RQoOYu9paajlcRW9VgH27ZhDJyUQBKK+i2aPiqDg2ho4EOWsXWejpCn8ES+fLO9
# urb-block/1 AB6tu8L2oZkeDRFYLXRE+D7YfZ5A4DWiruqmbgzm+uY36w5j3q9tAkUhgUCdo3tXr/jcZ7SIAGAg2Wx07hxd1KHptdVQM99g
# urb-block/1 WkUuFJu6c1bVJ1/ZobGNQn1yXtRr0k5R5mzIIfKu55XwPWrQXIR1rqlXRrlASsa7Tps+cm0WXfhqrKs3QtBg8VivjmxKo+yq
# urb-block/1 ug1K3zPWFcOS2B1MMvutVOgpHBRBJ5crygVYpxRZ2yJkv1jNB6queAbNszdvhzWdmbnQIG8cNvDOv85I8c9Pih+xDlyNdUd2
# urb-block/1 EsPmoWPx485NYQLOUV68EmvXAct78xMkap/HC2CkOTyMp9di/Vk5BmvuwQ3USDYy08WGrdmmu5ZzRExSxAsr/VWvgleEsGWr
# urb-block/1 jj16I3h2XiuLkeVedqm8MCuXbmBn2rGibgjr38rsDR7AKFxH6q31bEP010zO0D/dAGD+jz1ZDAtefgNg9a1iNtdmCsKBwNrB
# urb-block/1 g+yvdd/xDYCwWZcnYbpmbc3DHGQ6KUPpPaeRvPwKgNCEk+gJqfUTk+r1GtQWp70vGL5sKcZ4T0Yg0b3TdPsoyMZYg8q1dwC1
# urb-block/1 ZdrBF8u+aSPU2e9ZqJsXpOcxYp/uAL4c5WNGVidQyTMrp07jXjMTIXOx5uIdM9Jzojya1FCnlz4shi3E8miht7glSnuJuhEG
# urb-block/1 M1vV7+zCm5EUVYtvcUtE6Yy/sS4sq6HDhI0cbvRMh732DLLth/hQy5ADxWy8knEQsKqfFetLCQkdoNwJlc2QpB+HBTpyqCnv
# urb-block/1 mJB61uSTPBQPFeyUG6/JNj67PfPGc4WMSHx/w+ZAn9wiG0jncNryO/dLli/UkaZTErWlODejG7sL9c8RJXslJbJAY6SUo7Ns
# urb-block/1 k28ckg5WIaNvoSMqaE+La2lvtZM52TtHdhA7fMeU4OOBT1usQrtZa2DXywk33C28hY744uVNrZsYz9pyboP1WPu0d775cCEh
# urb-block/1 TTMHhterdrdvDmfmjRZvFlJXEhLLgIlqS4BVI6A0h0uy2feceau7XEcWp/T0uLDvlYSE3HQbLE5UwHdMSEHRlhMGJbbHxNax
# urb-block/1 7aLY2Ei/yWmE82RbumYy20Sq0O5Uj13N03obGVnsEmWPKNHiMHTCwyAnB5LWtZsNKvoTfIjF48GRZyQdFnTtzAvv5TKSLS1u
# urb-block/1 MnyTXOGiUpqWAzjdQ98xJArRcQW20oo9jPmTc4Dlc+4zR9bLGfEYLmZUPrJ7f9eyiPSGclnkW8hIEk7HGYGwG36CYFeRaD5V
# urb-block/1 Uq4kpOnKhVripGzvwV50loBVZHp6CxkpdKCEtK8gQeEEzctbSybMwTsmpD2oF1t2MoBGpj2ECaB9KIO9zXEETK3w4lw9Zha9
# urb-block/1 5ZKvysJN+cxWc4WMpHO0lMkVjGh7MnXZ0MrazVx7Zl2ZWgdFeuBxBkMG6ZtPwmb9LWSEWmi1NVwcBSl/FqpOlvoYGb9jSLIV
# urb-block/1 0WHpvIrnWIphk558ORZ4CxkZEWQNnu025ggcdFdZXCIDZ+C7nBDbtlRY3BS4zInxuugsOc+SxJWEIBAT9GNMhpt2JoTb2ZSM
# urb-block/1 XexlGfn6w1rwb23Gu3/N1Dj11vevP//0y48fHnqAq7WuNE7pks/fqKQ38QwWA4HbLs6n0f/+8Ldf//jTw8s5up5pZcY8ppNe
# urb-block/1 nnSASaHYfDz6158//OvD3x96TQ64w6+XQjgLxVzj9nyTyjHPR/seGoZ519ZUVoUsuU5li1OyKhGVx8P/+8NffvnxQ/x++At0
# urb-block/1 fjY8cT/8PKmPgvnTn//zz78+WD/fc/t8+IP18/0x1vof
