# ⚠ 「LED番号」は、その展開関数の中でだけ使えます
pwm5 = PWM.new(5)
np = NeoPixel.new(15)

def func
  (0..14).each do |v|
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
  end
end

def func2
  3.times do
    (5..20).each do |v2|
      wait_ms 100
      np.fill(255, 0, 0)
      v3 = (v2 - 5) * 15 + 30
      pwm5.duty(v3)
    end
    (20..5).each do |v2|
      wait_ms 100
      np.fill(v2 * 10, 0, 0)
      v3 = (v2 - 5) * 15 + 30
      pwm5.duty(v3)
    end
  end
end

np.brightness(10)
v2 = 0
srand
func2
v4 = 22

loop do
  v5 = rand(0..199)
  if v5 == 100
    func2
  end
  func
  v3 = v3 + v4
  if v3 >= 255
    v3 = 255
    v4 = -22
  elsif v3 < 22
    v3 = 22
    v4 = 22
  end
  pwm5.duty(v3)
  wait_ms 150
end

# ------------------------------------------------------------
# ここから下は URB Block Lab のブロックです。消すとブロックに戻せません。
# 上の Ruby を書きかえても、読みこむときはこちらが使われます。
# ------------------------------------------------------------
# urb-block/1 1Zxbj+Jadsc/CzeJizHGxoCNEFdzM/f7RWCMbcBcbGObiwGj9OmJojxE8xAdRVFeRqM8JHnIQ6JoXo6UD1Mazcy3iKr7dFVX
# urb-block/1 l6kGumpUqYeukhovL6+9fmv/197bHMyjhcjMFTN+MC9oYbKmJ1yTkxVeFMw4BDz8b+9gVjWJM+PmtTyiRIFSVFpWzYCZZ824
# urb-block/1 2ZfN9GbOVIKgVvZt+oT6d2neDJh3Ztzt9SGAWTPjbgQDzLwgrdVP90qW7v/9ZP3+j69sC5xIjbgJL3wxTmQycY4eKVoDotvj
# urb-block/1 RXZY6ubMgHnMcwv2k61io2DGvagOmAVup75oV+YnU1XgFOWL8eCg6i5028Ua0p9PVwHuIJsO5q8dbcby97+UKc2K229MMqKg
# urb-block/1 qJSwXn6xpi5hvTczTVp7CsgsothcQrsGrkK6rr/g7YaWeXq04BRK4R5CfELkcFC2djstarHt0AAYrni/cbT6srHJo7F28MSX
# urb-block/1 OuNYDEbGTr1Vr4tZ7Imfvxr79GFQzMYxsBUQuieW2Db0/txGmT8/QTOWbxCG4VnS6vQ+MiNO/nJTbzWe9yMNMRavylJSaA8V
# urb-block/1 uPU8ON+JzX3YFZkWWEqZrsfjBffFemfmyFbzdcQdiWKz+N4LWUoF88t2GHqx+HL5AElvPUWPa9Kq1MsmoOos1BgzYOZ2qkzX
# urb-block/1 VFrl7q+l5YnyiQqFu485pD/xPlYgzLj5z//zr3cf/u3u4+/vPv5y99P/3n38xXztUI8VnIJHclEJzBIhdF7ZJBbSzUNdOgXa
# urb-block/1 S2cRZPdoNB9hK3U0MTk71CjgBosd2t53Er6AtTdMeynHLUPtYYUDUgix6x0C8psgG/b5gs+HGob1Zz/AkxEaizK3eTQL+yq8
# urb-block/1 tRXG1pG2GrNb1qxkg74pMz74wjJzn0Nf7DKLjLAcoNomN7WAbWug5Fmkzsao6dkWoa69ZcJ3/sNEXVkWNf/9EKeqpcKn5KiX
# urb-block/1 zLgXw14YdUYUVFlcKBQ/foBDcjAOD4nrHFwAQ7EhJavbJ2OeTUFGphbihGcoRlxKtPzAgn6Qa0y9F5od5KWcsAppKnZ68jyl
# urb-block/1 8n1drdy7/XiH2KWjO2ZjBBidmnI1JFoun4b1XXViCDJwWYqWNY7ep1b1QQHswU7KmS3vvFeG/1OKxi99AF/L1d5W8yoxcqpa
# urb-block/1 njBJgF42KtPQrzlpTpYMg/9tERE2vWgAVyOEHJphYNZbSUPQqxWR75bFJ+VstWkO4dL8EN9mlWhQCG3h8E2e3H3897uP/333
# urb-block/1 8W/uPv7upUL2KcrMlBYmD1lo0lTfFCLF1HE6r2/zzDxmaZ0d1oVll0kPtYgpMfCzyaQtxUUiZv1JfiaJfP3iHC3vC96VFp5F
# urb-block/1 e8HE0uaQI5bMzGCIL87RHnwa6hZXrFbITDg+i+/HGfz6MnpdTahVSlJXbzqwbaOD9hshsgd3nw0it1C47DghrgX1/nluLRk+
# urb-block/1 CtnYw/yAgINwkCXFwWbke14y0nXixprRqXLprE3fTqtNqV/ZhFxhqvQjNWNw7Mj9A10/KS6QI+3gGjgg1ybXVTUjk+3z43Co
# urb-block/1 bF9vTI62WHX66LXBlIai36kZhjM+gNuiaUb3luZMrTBwHeRj0H/zjC9QrmjoOHcE5oWGXbQ0/c3s8JbQXDXjjwp2LCyN1yOT
# urb-block/1 y48lvI0IuVLPhudaPXSs9V1T2953Wmgxh+/kbUZWN0cn3VDS6Lgwt1GhVis7np5i4uHN9VAtkgBHIDdPUZ2Ikwm56+T++Dw6
# urb-block/1 7kdBBJizKe/F8HY9+Kht7TDsYo6swzOgYtLo5/Dm6++E3ZMX4zkegvZSbNCoOptdYex+U3ZPyDFDpfWVgw05dJgAVrWM7bwc
# urb-block/1 vUfXMPaGyRkE8RqwHxDWXSU300vRtFVc35yck20g4YwsuO1wTjkcaGUdDe/eHN19fRC2hsvpOGUdWLTS2JsmuHPRuZJcDYid
# urb-block/1 +omCP6PS+8JmscTqyfzNwWGzHhcZsru6qhyeDer7Givl3pzc+G4mCMG0F0eCbjXX3bXyE/rFTuZljbYUVVGmJHHLydSGfrhL
# urb-block/1 JW/b2a1HNezYVbOJDQUBZOXJXcrZ4v1DmYHLRNNLLmxpXqWWDwsgEuk/JILN1iFQDwTaMXi5BsknQ1SoXRorixQNYY2U3S2n
# urb-block/1 +o7VEd27wmmjhRroedv3bePHcg8qiAT82KARAirqumHpzRZQl9l8bvowH/ap58O8gJkRFwtaUjjWjKvymru4Mf9eq/ggy2RO
# urb-block/1 4miVug/sr44t00KukYy6o1vWAXV2RzW0UJ5Erp4tEBcH71CC256DUnQLRKTT8Non3ZTnefCQX+vTucHlaGZ639p+pcKLmBjj
# urb-block/1 tjWit/FTdhDoqgX9id3PfSv6uW+FIf0CPO/vtBBF6esUZrQDsq/2oqW0c2jVcUpPEMotS0rnn+2bxPVHdyd0Y8MnuaDFLmbq
# urb-block/1 o57DcmPipuDEQErJopYfgQPV1KKc08LZfvD7q4xjfrGg5MnoYYrozpF+Uy+cHNMTccoQOWlgeuJp1dBRwxVGoJjKrSg/sWZN
# urb-block/1 ocUk4A0SAeGczgLM6csNxyrsymor1VfzMQdCEq8qTtB4de7cxGtoNmFt5QPgIlyQBkW0y80g/1q8bdGPUz9bf+jIiosCGyih
# urb-block/1 pjTgcoFoGtGCzZvnFvjk3XUPDBtJbQFnmwDjXs/57L1p4jWMDr6P2iHKQ8ywuR7I5mrTeD96obJ6tEfLvDr9YjHkhyGJ5oXg
# urb-block/1 ytI27fE4gIDgcykYSyYv0YLGI+pNl1Aq4SV861N30CvlZy6DRDHsrM/4XJCLRDVBKi7AUbZmJaE2XTqf+1xo5OvZcr5zs+N2
# urb-block/1 JjGfQAd5V09h+yG6xftY7cccZxgYaVoJVJrOAMfRP5pO9a6B49lio3az1yt1EGk6cX0Hdhuh1Qqb2bHIFV5/W6YBLwn7Vnqo
# urb-block/1 PHKR2kFpla1h7ZYyfUUJ8HhiUpVF1og3ITvaImqK21bPn+Chb77Csmu/sSLjXDrFRLpSDPAdSaljuDN0vWmwxRDT8EHuoexp
# urb-block/1 uC5k8ChksH6EQD+i+qApHHWs5vTK3ykkUymyj63J21XfhQr0uULAF44ci4B8AXDOy9SmQ9oDRwOFAP+6tI3eqhBo52qPROEh
# urb-block/1 OYJCSm6YOU1H9JsqBGSZbTIhprJWuwGqOEb3J9/xRoVQyUOxxdR9xEvWuhgmMVtLlV9RIeR2SLxbUeZZjIBGw2FRUjzWv4JC
# urb-block/1 uLzQWfZBkw3fifNJ1+GDlkpayb9BhZ6scbqtz6dknug1RC3m2TAGleLiWteMaKM5CrRzFkFsJz0uzwo43zC+Tq2zHSxIP7Fv
# urb-block/1 INg81qnm8VDM6zXKky+kXiHQhr22yRQXqpvumpEQR75c3BgsYlwt0Eh9ZUXUaiWidsMgQOI1blJ/HYHmcCaygkObTeemkqjo
# urb-block/1 Ugi0hG8WaHw1HEoq2X64FsFCa6jVOOKm/5cCTXPWY+lwnuXX3LAeowrKasy+d4EWHKID9TD0Y6QqL3wOi8Pl8b4B/qro9/mk
# urb-block/1 YyA/JgRfroy4ZjntxxznGq5gfOvx71hHIN2MLSb9Qui1BdoPev1t0VLaLdce6XqR1iiFZCtF4NCm3rhoqbsC6c9M3b7W1Opg
# urb-block/1 Uo5KjjZImFtUVH4SINOxnW2iYD1oeKh1TIfmKwk0ugKKgrpRyAm3wDBxbhKS+9cWaH3/smBn6zVXqoHmk7A+J1D4FQTa99e8
# urb-block/1 WqP4BMO5XBAqN6fp1QIKEb7Pa16+oPeKNa9vd28vORjxXCBKolhSRXoeF5W9u4M1+RHqNxCIX44++G4ViAjA95ZojUQ7rp7S
# urb-block/1 8zQnOYQ5m/q1Sbq+D7U02NRM7BGQw5Ng+LsC8etDH4O1Lg5XG+80AS0r6Grj1lPAlaB9c+gjcOWRD0cXKS9OSDrGpBxQqAMQ
# urb-block/1 OPXy9m4AME9phVgo3OcRv3m3d9psR08wSramBS2GD3Bpi1Se18XbD4go9dM6H7OFxs3NTEuupYTJdOGsaTj5V0wVUyPZiqRc
# urb-block/1 hV6toBGHgrv3ejXRaMPIJoWt1ikbDBAFeto5nrDo4Iwo+s7xkHu1f6+MvhL7YVYRuqFDS+SLy9R40oplHKWnR32S7cvrIJdx
# urb-block/1 T2JFEac9wnC+AkXS1yeuUCgSLdMPtkrVZVsqrSsRp7fAMP5Dt5A6fw7qBQCv6FYaoNhPxKPQaAGRu5JlwC/V5ausZ9qdkXCi
# urb-block/1 fcQXtQ4ZFjp5FIKzryCX9Ug9w0dZ5ujzI4yfZOC4PfNCZlyzi5sZadrJGmnEORFY6bSWHH2zhf5jULaL20otgMu64i4JfTuR
# urb-block/1 sXR+aBd3Ohb4LYxm1y5hhLWWs/AkBb4plAtqoedSeqMgQwlqvCaSh5xBA+T9zibuGShbi0qlg1gxjPcgFZFLMxak9j6gVA7T
# urb-block/1 CbZ152PtRhkpaR57wwW/MZSsMMsuqGyERQdlqax5/M2DweIXdC2SJilULYHu/DzHjm3+vi88x6cGAxi8GkqxPQ/JM34gy2ta
# urb-block/1 6Mfzs6MQfxFK+GIoeU8cjPR2dBsbtadjT41LRfF3PFMOQbDnXiccjnr3kOj1Bm0GPn+A4DWg5ONz935KlWaKB/YjxwY2mmAG
# urb-block/1 9fsRSsPQn4GS9CoOpWBtM/5WKZoZxvYnYP4+oDxWxpKlXO/FHCOFLBWSxMR0fGMoRV9P6leR7iZGuhwFRXAJxd6rzJTWfYMo
# urb-block/1 OudbbRwIW+qcbJtUigZY+q7Gsp1fm1a1mdXRh9p7X6oLoyGDtyG+whK5GMvAJLLm22EaLB1BNk9ZQ7uY/RWx3O1bPnlQqS3R
# urb-block/1 COQANRzRyviPYJlv5bf4eoMCrS0L+4YUmYLWbytg0WIr2ZnYnDwgm4SBzgNhAwGLPGJpGPozWHZOQy25QSZUy58El2CtVycT
# urb-block/1 7wNLqSmp+WJPyY3zy5PXDYWjI/KNsRR8lo0V32qmZcrfa3YsyJE1eDvpFizd0e7W7WArfPCAW6PcoVgwwvL62XKT1JGxhW5i
# urb-block/1 sri1eI4VbySNPDeMfcWl72IuE67ydK7I7kH26OJ73nWexd3veLrceO1V4bTqoOsTNXOR8aUl+4q7oQYP4CJ3fH5bkMJ554Iu
# urb-block/1 RfcpOMI/fwDfI5eGoT/D5eDAFe2QMNi6ivQsgdni0kp6H1yGN/VDIJRU1y51c9CHgKmemr0xl3Z0HmjSjdIJ2hxccBnlaitj
# urb-block/1 96+jco/24FGkblFIkmOVoF6Pew1eYvNfDWWAVDwwNOQhtLwCiq3KhHcZ2P3qeHk2hV5MZXuwcgbx1JHUMulpTJ5wZW/9HVMp
# urb-block/1 tIu5iFeqFQvBOhl2+wFt/Ladpes4D2neHAXbJDjNkzGTs2qwB/bVyX7D0J+hkqmKQ27aD/cifNa+Px1JP5V/H1QKx1B15eSR
# urb-block/1 moCRtUai5KlyozemcoIGEEsL2jhAfRlrtvR2w3nmHdCrqAxWaXuYT8OjicDOuie4kZvqrzJXNrL2cobYDxsd/dBp5nC21jBY
# urb-block/1 RXqCpf9iLLtBAmi0KsfZRMnzgVT4lJ4V3zGWba/sqIHgaN4XupNBdL7qT65dML8Oy3axwZVAWGrxuyE19srUzmOggPyPWBqG
# urb-block/1 /gyWEYeywHZimyV8xcEgXSn2wpn3gSUZg5Ft2wPRo2q0neXJNOI7f07mdbBsOm3BPi6T21WaHbtjnJvdOg348V8NZjTawWfp
# urb-block/1 ZsDvaGZP48qq2AgZbABejWUSrTQXDdfOkccTHtKnaKBg0N48wTJwMZYEXZ8jh3Zea9ftB7uaA7fffN/A+8ISNJETxiSWIDSU
# urb-block/1 iiIKGN7D519oeg0sM8EoEU6EeazWbPawXDJZFww6nsAjloahP6dha5zaTCyHp6Dc5ArTdrISfie9pQwtg6ZBwUQt1WPKrsWD
# urb-block/1 XPCtsawxg1EcXlasysbHlLlsO4cb7HHf0FsukSU8XXjiIbJAsp5KOqbWhwaGrz/tvUGXM6KvDwfxUsTvW+nlidFbt48vVhP5
# urb-block/1 GnFFdoSm4qaltSzbXdwaZnCv1hOQ95EdXEgrMvGuAMXmMgJDnM0kjN84O+Y6oBAjFK2eBlpCXIGlZPzMya2rcqPl0fFpcrVs
# urb-block/1 JcWDG0jYvLMi+golG3WsjytP3qsmNAlWsytfqGJwVvfZq0F9HXgse5++hkagl/c3+eMvf7j78PPD3pDhkQvg4dN/+vk//vjb
# urb-block/1 PzyUTOPd/IdP54nk0wuMB+zxgj///X89vaDKqrZciI/aGIcWXfHHLDP0f33BH3//T3c//ebuwz//5e9++xAhw1fWHq/5y+/+
# urb-block/1 9k//8p+PRzLrTGAVXR+Zwaqt0VYa6Itff/ruw893H35z9+Ef7376h4dp3vC7E/r6/wE=
