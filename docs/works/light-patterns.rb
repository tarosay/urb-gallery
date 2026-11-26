# ⚠ 「LED番号」は、その展開関数の中でだけ使えます
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
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(3, 1, 255, 0, 0)
  np.paint(4, 1, 255, 0, 0)
  np.paint(8, 1, 255, 0, 0)
  np.paint(15, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(10, 1, 255, 0, 0)
  np.paint(13, 1, 255, 0, 0)
  np.paint(1, 1, 255, 0, 0)
  np.paint(6, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(2, 1, 255, 0, 0)
  np.paint(5, 1, 255, 0, 0)
  np.paint(9, 1, 255, 0, 0)
  np.paint(14, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
  np.auto = false
  np.paint_fill(0, 255, 255, 255)   # いちばん多い色
  np.paint(11, 1, 255, 0, 0)
  np.paint(12, 1, 255, 0, 0)
  np.paint(0, 1, 255, 0, 0)
  np.paint(7, 1, 255, 0, 0)
  np.show
  np.auto = true
  wait_ms 100
end

def func3
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

def func4
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

np.brightness(10)
np.clear
np.palette(0, 0, 0, 0)
v2 = 0
srand

loop do
  np.palette(1, 51, 255, 0)
  5.times do
    func3
  end
  np.palette(1, 0, 26, 255)
  5.times do
    func2
  end
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 5Zxpj+pKesc/CwYkaIzxglmMEKuh2VdjAwJjwBiDscE2+6KceyczGUWj+yK6SqKJklEUJcq8GEUZRfNm8ml6zizfIqJ3znGf
# urb-block/1 S/ftljo6SCA3uJ4q1//5VZXLz9NboCspvbEGEFtA4mRhzgl8jVc1UZEBAgbvf21uAX095QECmKtddqCo/IJXARAQ+wABoO6S
# urb-block/1 aKGD/nmI0SM287w/tcIACKwAwo+AwBognCiKgIAoT+f6dU3xwvHz2vbx4JFlmVfYKSfxus6zU7E3ZnuKdFeN97IPFUk+msP3
# urb-block/1 sneAZhqe2RAAgYHIS/1rsxmAABAABGKFbKEMEAAGgwh8/Qb2ICDzK92o2p4i66oiaazKT3lOZ4+n3dboknu+ZGxeptPWcHJs
# urb-block/1 n7igPQE8vpBqKkdWjgfakOsry0dWJ5w+ZOX5pPvQTclhVN0n+ljN2eOXJJERQ6H2SfvzVA4g8P1+D36hh3qcdN8jYIgVerBq
# urb-block/1 i0wCDVrOLULteBIAAX6lq1xF53T+WJZTBe1aS40/Nhren1QZyZEAAfz5Z7/++Dc/vfrwH3/433+6+uYXVx9+igD764Y81Ws/
# urb-block/1 JNbUxpkDbrpcca0pItgs0bC/+EWxPPiPFAutJ2g8GEJcVDesdjxxNUDvXi4WOkInuWKta3ET2WlsUdfA1vjHiZUQLExhQ1/a
# urb-block/1 8hS94hIboe9UXkks9Fqshxd40og+P7hrA92NCn6CT/vgYm2YnElwgHTfkOr1YzeoIn7coM6rb//z6tvfXn37V1ff/uqozzks
# urb-block/1 81xvyKqcLPD3TqEoBV3hxlFF2zjr/prYxT0nnZooF3LXl18tAASCn1RUi5SfqklSlCm74O7Fw0CxOcErGbzuaGpNV01IY72T
# urb-block/1 em5tXZ9cEZLVTYBeo6ZabINBPBGHgrfO//S1qZzcv6utPd8rndkCGcbgSQmfLZz7BPhkbZCSivoh2is3Dn1ySe1bYyt77NCT
# urb-block/1 K/eeQ4B4rypib2BF6YAlI72EHQ7UQZJgP/MsXtL41CCmzGUdILwgMOQ0UtJ4gNDVOX/S0akEbFSxpAhij+0pkymn3is6rDHh
# urb-block/1 A4pn6GFuHSHaxHSJlU6uvVAECIAsnfpM5FwKB1r1MM9GrIFBbTFax+fTmMn0OYXwUatPm7vgVJHrSrzGCvz9GFEylUxUnA4l
# urb-block/1 HLlmJbcmtzln85lSXTtG9NwLOFinQYtl2Pd5yRw3rO8O/rDBmA/fYgvEC4ZdfzfYarzOqkL3zniwr8mNwJZWxPwkMRDoyKW9
# urb-block/1 cDLipeKMYUOvhyZF1vRja++s8ZdOIZJXCM4ld8YzSMm4W+SZfX20N+VU7t5WoTxhpoV5KXSB5Ho9z7aRSyReAmD5/OZTkNKK
# urb-block/1 RcNwV4Izq4K5LU70yefNR/GbITt5vmHbRSgYY3aEVKlngnI9i8NoyljCp/zC0Ow+VL0Uw/3ezu3Bep5MD43aLr/gGakEcjaU
# urb-block/1 l931+mAJUVFeAWd7bh3vzvRXhJLJL0sVL6HuNWdBbtnIS3O98GOgHA5kcYniqblD7vrpySgoJKA3hVJipX06sadyKhxjB3My
# urb-block/1 vk1bP78A5AFKw65/AkpaKpXqmMXvF11YSeGTPTNWeR9Qatuh4F86sxGGKmKFtctGOdA3hrIvj1ISmwr18XZxWly7PLXt6Cl2
# urb-block/1 noGkaRooFyBndpzuD6yeljs4JoYGAvqeDaXCjAPqSGyr6pyTW9HsaCdHvwglejaUoisKhZorjvF3meHAVeETYeIdz5QdCGo6
# urb-block/1 5zG7vdrYxprNNtNDV28KpRgdOzdDtjDSXKgH21H+ruA3GL8foDTs+iegzCCaXctZmJ6HLoQvO5HNARy/Dyh3pcHUXKw2I/au
# urb-block/1 link4qRg2r0xlIq7OW2VscYiknHYc5rskPPNV5kpLRuKzF+Ml+uBN2iu8qpVKOUNsHQ/G0smOzfNKiOLvQUzG3eigeKBxhex
# urb-block/1 xM7G0iuE5iIT5KDCDupnWUtgFbG9IparDe1W26XKBA/BdmhNYOsi8WOwzNLZJTFf4CC97KPuDptJwPO3XcDieTpeF6wXIqia
# urb-block/1 5PZeBIMGC1jsAUvDrn8Cy/qhs44vMIGlPXFoAlWa1UzsfWA5rU31bL6ppQfZyQFxwsFwN/PGWMpu88JCLNemScLTrNXN2K6f
# urb-block/1 fh0sneHG0mnvl0TflrCE+W0+Z4Tl82fLRXyPDcxcza8qS7NrV0JCSexzw/5HXLrP5jLmKA7Hmupsp3YOsYnMs33C+Y6nywVi
# urb-block/1 K8uHWR2fH9iRIxOdmFPrN+XSkVmJ2WVuGsxeSFwhvEmgIfHzC3A/cGnY9U9w2d7yeRsst5eOPDeK+a3R6Wz6PrgMLqpbbyCu
# urb-block/1 zx36YrvvgKZqYvTGXNrwsbfGUYUDvNg60CLOV2bGzX8elRu8iXZDVbOWyfB9zbevRhH6c7OeZ0PpzWguFO6IMF6cgXm6JIgO
# urb-block/1 A7s3w8gtlfjZVDLt2YWPSOwy68vkMKIKfBGpvmMqZSafDiHTSj7nq2aCTg+4HrztnaVjNw6skTSLWqdoUsxETBfl6ucXgD9Q
# urb-block/1 adj1T1DZKysdftgKNkNiyrY57DIeNvs+qJR3gfLsQsQqsj9ToWIFV5nvvjGVAu7FzDS8sEP7SaRG7xnqwsDNn02lr8zZgmIS
# urb-block/1 7Qpyf9Q4oFR6uH+VuZJK2YqX5KZD1ffbei1N9CuUwS7SCZaes7Fs+EiQoku7kaBlRW8ieEiO8u8YSwZR7RUI6o5bckNoh8ez
# urb-block/1 lvDcDfPnYcnkKb4AoVNaXHXYAaKyK5fBCsjzgKVh1z+BZciuSf6VwvRJd77dTpbyzeDl+8AyE0GxJeOCuW45zKTETBJzc2+M
# urb-block/1 Ze3C6msRamY5S/YHzgjv7C8vDPjxPBvMcLhOjJI1r8deSx0GpVmeCtReYRc2jpdqEuVY2bNEzJVxa2tINri9OcHSezaWJFcd
# urb-block/1 Y1smu2aqtq1NT0PLRvodYwmZMkLPpBRgPJAIYxoU3KDbN8Xy0hcmg7Gg6K/Uak1/Oh6vygZ3PN4HLA27/qk1bIXXa7FJ5+BT
# urb-block/1 a3xuyMRLwXdyb6nCE5+pnTOxE32XsK2jPt731lhWeu1uFJ2ULNrC3SvyKSZNbF7l3nKCTdCh5IoGMrlM31VKRvRqx8Dws7mM
# urb-block/1 LfDJiGztO+1oIeRxz/ZFwWDjGIHv7y3JbIV8hncEhsqCXtPm5SpqCfYIZN2UsffhHXxgne9FGzIcGasYCvNWkzx4Y+8Y70GN
# urb-block/1 7OJ4+dBex5QZVIhHDVatzx6yadeeGMZnEzqubJ1gzIqM8vgrDNm4fb6bubKIHltPUT01cwdK9Sc3A38ggmXJiTo70e5Mc3tV
# urb-block/1 wxOzSYnJQp4Ms1na++iJV+TOjh9pQu5ODy6xlzMul9mtsiVhm3m6lT8YuKGMdH7dJVZYXhST4mTohRDqJnDDiWM3kRuIx39u
# urb-block/1 sMhzYrFEWXfftWI72fIZn2TFE4mANugIBah4us6Pkdls5RiRgMCPXsgxzqcYiQMEAIBAuVC9Ocilysz9Uf3mqFKNlG9/jsEA
# urb-block/1 AcDgTUgQCMSQ6z/vYoRAIIYe1+uPv8CONeOPv3Efg0Gwx9/gx1Ajz+NvPEczJ4a9txV/MRLJwH0YNlgOKkvSXODUqT0XSdsq
# urb-block/1 jhe6z6Ele9VlK7kb9pPTxM6t7bPlJ8e/c6K0HstIRduuYJFZiXYBXagh33awlQ1lvJPvTs6vQ0bvYkEl0R5M1S3DysVsqjLz
# urb-block/1 zAtlzKtMgJIol79mwzXJFWaGMvVqMtrc1nBz7rK6dV+i6Nmh3aigPynjjYQ3n1+HjE1KyjGwxyMKo3KQVxYRe2j5QhlpspXd
# urb-block/1 M5ydmvKiKY5HoxUVfTUZlcN4rdhre0Qa25esQ/avycQTMj4MqwjytchISbm5PZx1rPLpPXbJuDSMk14oI5tQd02tpiGmal2v
# urb-block/1 NQYmxmSwB3O/qPz09eTk7JqAU2t4cKBkupbDa7bLdT7y6eSMYkZhlR9/9+9XH/726puff/zuty+flufNdtpc27UGc1+Dsi8q
# urb-block/1 cgAyGU/LR8959P46PMiKCxZiPmcrok52pqN6mFynXuhBOuvyzUUov/Q0nf2tr41uVvKrDQS7gGyzpDezkd19EZUil6ExtDxL
# urb-block/1 xjACfiVSkny4UBJaWCoDHXRtlOqVR+QLpaxFdwGHl9Dj/WBv5VajWpSEX03KuRSg0sVBnyAPW3kTTTCrBX6elOjXImUDj5nD
# urb-block/1 y2qldVAV3YQd1N74peO6SUc6JhddBOl0mGoyqI8VDEIpXyhlU5KhWpYKh4aretHhTg1XF6XzpMT+H0v55blPkVlN59T7ncPA
# urb-block/1 TExmy+EistqXUgQ/Ffc4eTsBoj74LgXId/781uUFUb6znna1XbFKNa/n4/lyYzvv5y1Gi2jPGdJ2VVEY6jKv3bthYO5QyUYY
# urb-block/1 kuCyS+glO3vn8nQjqBbJnr83oU/QfXNkEugNC15KYf94ihsEKiFnOmJP4h9yGnwOUy6E1zVrwXXwcb2d8wAd70pemp9TwiXn
# urb-block/1 NDWhM32v3EarfsU2PQ1MOubnwI/yc/Abl/si5g/bytrDtjI111MuV0e0sPma2RHf6K1uFTgjscNwj9oWv1htEFeIXacpuzln
# urb-block/1 q48dT2d2fGGPuhbJUuS54wtSjmY9GKVEomV1GpeZjoY+8azxB0TVjmkjrDacDwbS/VMCUHfPbLRmvrBOl9HRDi6BCeLcfJ5R
# urb-block/1 AQn0onJsvmNgDokFR1wrcwseAqPem6WnYUKPYcbXSxegQtnUE2gr59qbij12zPDlYtl4jPQi3vsX4v1K9oUauYw1gq8zQWqR
# urb-block/1 9YcJyJO5pF441WVdDjjmpN2RgL+YHJO7/KCUfLWprosdmIQnYV+BLrvW8Kl8AV8bynir3u2H1/t1yIiNWLkxZjcC7Q+qWnII
# urb-block/1 WXMvlXEvQ91qITeiXCS0zmd61a4v92oy+iYXImlHg8uUCedTk8JaLxjTeEfhHZVfh4z+pTzsL+HiJhiWSFK5oKQY+EIZeXc2
# urb-block/1 hZQSdnYYA8vbUA7mue2ryag5l15OnPZNeIosq9Zt/5BrGMv4aFQ9Hn4dMg6SE5CalyJKoU96SC42G4LtF8o4Qyv9JJkuSMl+
# urb-block/1 OsGwmz5kVl+0L/SF7OTiZU7rjbYD1rSqVbzuZJOzjG9majeO32beHh/gvDBdWW5qNpXc+ZqpiKdRmBNVdsk8+Rz2vHzl9mxR
# urb-block/1 66CF8Ta6TGlhnxxYosEX5St/mjv8DJGnGc825qvRW2/V62Ui6GQOvXQr3jwNB/xUwuZUEy37bIdvHEGjmRN/JHJrDz6sQq//
# urb-block/1 B4LMTY7mP/7+d1cfvr+zLJlXl8nOOmSKtT39eNya4EMh4OgVt2f/6ftff/zud/dRFsYJwPdnZ8n4aQHjZ7wPBf788/8+LVDu
# urb-block/1 69Z0QAxbe/Z1eCbuUr2O53GBj//691ff/OTqwz/+5Wff3T9UBZ1Qvs7ZWhek22tpdpIIa39c5i+/+us//fI395GI5mrPOwvP
# urb-block/1 d732jFlzFg5sKY/Pvvrw/dWHn1x9+Lurb35xv9/iWubhho02ESvPVtBnZqly0qo//sO/nHZrDuOwgYJ18jkaDES9dktUWX1S
# urb-block/1 QLw7d5X15eCJ05rKHkQirPvqjvVJgz7+/vs/fv9f93ckllUK0x15tsmXsSAkjWkwd9Kj//NvVx9+8/GX//yoTN5KLrWdb8ZW
# urb-block/1 a6o/PzZFZmDskzKnBSBcl2pijZ6R+2q4unGWK7MDsG/t/w8=
