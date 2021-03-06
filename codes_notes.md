![codes](/codes.png)

#### Using hex to text:
| hex | text |
| --- | ---- |
| 53756231326669 | Sub12fi |
| 6e647468656b6579 | ndthekey |
| 537562313266696e647468656b6579 | Sub12findthekey |

```ruby
irb(main):106:0> puts hex_to_text(codes["tree"].join)
[r1B:1BJBH1r1wAA}zy1}vv1sAxy1r1AAu1~r1C1rYrv1r1^v1i~r1ru1r1YC1_D1jDr

irb(main):107:0> puts hex_to_text(codes["green"].join)
'#BJBH1#tרGXx384gS#XC(5s#烃1~r1ru1r1YC1_D1jDr

irb(main):108:0> puts hex_to_text(codes["tree"].join.scan(/.{1,2}/m).map { |n| hex_minus_int(n, 12) }.join)
Ofs%6.%6>6<%f%k55qnxm%qjyyjw%gw5zlmy%f%|55i~%rfs%7%|fwMf{j%f%Rjww~%]rfx%fsi%f%M7uu~%S8|%^8fw

irb(main):109:0> puts hex_to_text(codes["green"].join.scan(/.{1,2}/m).map { |n| hex_minus_int(n, 12) }.join)
Sc{h˜;,(ŷǈ7Ǳ{ww&gVg6VbTWW3p

irb(main):110:0> puts hex_to_text(codes["tree"].join.scan(/.{1,2}/m).map { |n| hex_minus_hex(n, "12") }.join)
I`m0(0806`e//khrgkdssdqaq/tfgs`v//cxl`m1v`qG`ud`LdqqxWl`r`mc`G1ooxM2vX2`q

irb(main):111:0> puts hex_to_text(codes["green"].join.scan(/.{1,2}/m).map { |n| hex_minus_hex(n, "12") }.join)
ab%Ŗ5\Udfb&"eWXdg"Ti1gQb8WV=W!'a&

irb(main):114:0> codes["tree"].map { |hex| hex_to_text(hex.scan(/.{1,2}/m).map { |n| hex_minus_int(n, 12) }.join) }
=> ["O", "fs", "%6.", "%6>6", "<%f\xD9", "\xB6\x88\xB1", "nxm%q\xD5", "\\LK\\'\xBD\x90", "w5zlm\xD4", "G\xB1|x\x8D\xB0", "i~%rfs%", "7%|fwMf{\xD5", "W\xB1y\xDB\\,,\x97\xDB", "]rfx%fsi%f\xD9", "\x98\x82\xCC\xC9y\xE8<w\xAD ", "8\xD5", "\x1C\xD9"]

irb(main):115:0> codes["green"].map { |hex| hex_to_text(hex.scan(/.{1,2}/m).map { |n| hex_minus_int(n, 12) }.join) }
=> ["\xD1", "fs", "%6.", "\x81\x89\x8D\xA0", "<%\x17", "\xB6\x88\xB1", "nxm%q\xD5", "\\Ll'\xBD\x90", "w5zlm\xD4", "G\xB1|x\x8D\xB0", "i~%rk0", "7\xC7\xB1\xC2\x98\xB7\xBDP", "%f%Rl,,\x97\xDB", "rfx%fsi%f\xD9", "\x98\x82\xCC\xC9y\xE8<w\xAD ", "8\xD5", "\x1C\xD9"]

irb(main):121:0> codes["tree"].map { |hex| hex_to_text(hex.scan(/.{1,2}/m).map { |n| hex_minus_hex(n, "12") }.join) }
=> ["I", "`m", "\x1F0(", "\x1F080", "6\x1F`\xDF", "V\"]P", "hrg\x1Fk\xDB", "VFEV!]\xF0", "q/tfg\xDA", "AQ\x16r-\x11", "cx\x1Fl`m\x1F", "1\x1Fv`qG`u\xDB", "QQ\x13\xD5V&&\x91\xD1\x10", "Wl`r\x1F`mc\x1F`\xDF", "8\"fi\x13\xE26qM\x80", "2\xDB", "\x16\xDF"]

irb(main):122:0> codes["green"].map { |hex| hex_to_text(hex.scan(/.{1,2}/m).map { |n| hex_minus_hex(n, "12") }.join) }
=> ["\xD7", "`m", "\x1F0(", "!)-\x10", "6\x1F\x11", "V\"]P", "hrg\x1Fk\xDB", "VFf!]\xF0", "q/tfg\xDA", "AQ\x16r-\x11", "cx\x1Fle\xD3", "1gQb8W]\xB0", "\x1F`\x1FLf&&\x91\xD1\x10", "l`r\x1F`mc\x1F`\xDF", "8\"fi\x13\xE26qM\x80", "2\xDB", "\x16\xDF"]

irb(main):127:0> codes["fire"].map { |text| text_to_hex(text).scan(/.{1,2}/m).map { |n| hex_minus_hex(n
, "12") }.join }
=> ["1717161717", "161616171616", "1d4d4d4d161b", "4d161d3a1d161d174d"]
irb(main):128:0> codes["fire"].map { |text| text_to_hex(text).scan(/.{1,2}/m).map { |n| hex_minus_int(n, 12) }.join }
=> ["1d1d1c1d1d", "1c1c1c1d1c1c", "235353531c21", "531c2340231c231d53"]
```

#### green text:
| hex                      | text         |
| ------------------------ | ------------ |
| b                        |              |
| 727f                     |   r          |
| 31423a                   |   1B:        |
| 1424a42                  |   $�         |
| 483123                   |   H1#        |
| 17741417d                |   t          |
| 7a8479317d7              |   z�y1}      |
| 68587833173              |   hXx3       |
| 83418678798              |   �A�xy      |
| 5317231884141            |   S#�        |
| 758a317e77f              |   u�1~w      |
| 431887283597877          |   C�(5��     |
| 3172315e783838a31        |   1r1^x88�   |
| 7e728431727f7531723      |   ~r�1u1r    |
| 1594381818a315f4488316a  |   �8��H�     |
| 447                      |   D          |
| 283                      |   (          |

#### green sub 0x12:
| hex                      | text         |
| ------------------------ | ------------ |
| -7                       |              |
| 606d                     |  `m          |
| 1f3028                   |  0(          |
| 21292-10                 |  !)!         |
| 361f11                   |  6           |
| 56225-5                  |  V"U         |
| 6872671f6b-b             |  hrgk        |
| 564666215-f              |  VFf!_       |
| 712f746667-a             |  q/tfg       |
| 415116722-11             |  AQr!        |
| 63781f6c65-3             |  cxle        |
| 3167516238575-b          |  1gQb8W[     |
| 1f601f4c66262691-11      |  `Lf&&�      |
| 6c60721f606d631f60-f     |  l`r`mc`     |
| 3822666913e236714-8      |  8"fi�6qH    |
| 32-b                     |  32-b        |
| 16-f                     |              |

stuff after dashes: 7105bfa113b11f8bf -> q����

#### green sub 12:
| hex                      | text         |
| ------------------------ | ------------ |
| -1                       |              |    
| 6673                     |  fs          |
| 25362e                   |  %6.         |
| 81898-a                  |  ���         |
| 3c2517                   |  <%          |
| b688b1                   |  ���         |
| 6e786d2571-5             |  nxm%q       |
| 5c4c6c27b-9              |  \Ll'�       |
| 77357a6c6d-4             |  w5zlm       |
| 47b17c788-b              |  G�|x�       |
| 697e25726b3              |  i~%rk       |
| 37c7b1c298b7b-5          |  7Ǳ��    |
| 256625526c2c2c97-b       |  %f%Rl,,�    |
| 726678256673692566-9     |  rfx%fsi%f   |
| 9882ccc979e83c77a-2      |  ����y�<w�   |
| 38-5                     |  8           |
| 1c-9                     |              |

stuff after dashes: 1a594b5b9259 -> YK[�Y

#### tree:
| hex                      | text         |
| ------------------------ | ------------ |
| 5b                       |  [           |
| 727f                     |  r           |
| 31423a                   |  31423a      |
| 31424a42                 |  1B:         |
| 4831723                  |  H1r         |
| 17741417d                |  t           |
| 7a8479317d7              |  z�y1}       |
| 6858576833173            |  hXWh3       |
| 83418678798              |  �A�xy       |
| 5317231884141            |  S#�         |
| 758a317e727f31           |  u�1~1       |
| 43318872835972877        |  C1�r�Yr�    |
| 63172315e7683838a31      |  c#�h88�     |
| 697e728431727f7531723    |  i~r�1u1r    |
| 1594381818a315f4488316a  |  �8��H�      |
| 447                      |  D           |
| 283                      |  (           |

#### tree sub 0x12:
| hex                      | text         |
| ------------------------ | ------------ |
| 49                       |  I           |
| 606d                     |  `m          |
| 1f3028                   |  0(          |
| 1f303830                 |  080         |
| 361f60-f                 |  6`          |
| 56225-5                  |  V"U         |
| 6872671f6b-b             |  hrgk        |
| 56464556215-f            |  VFEV!_      |
| 712f746667-a             |  q/tfg       |
| 415116722-11             |  AQr!        |
| 63781f6c606d1f           |  cxl`m       |
| 311f766071476075-b       |  1v`qG`u     |
| 515113d556262691-11      |  QQ�V&&�     |
| 576c60721f606d631f60-f   |  Wl`r`mc`    |
| 3822666913e236714-8      |  8"fi�6qH    |
| 32-b                     |  2           |
| 16-f                     |              |

stuff after dashes: f5bfab11f8bf -> �����

#### tree sub 12:
| hex                      | text         |
| ------------------------ | ------------ |
| 4f                       |  O           |
| 6673                     |  fs          |
| 25362e                   |  %6.         |
| 25363e36                 |  %6>6        |
| 3c2566-9                 |  <%f         |
| b688b1                   |  ���         |
| 6e786d2571-5             |  nxm%q       |
| 5c4c4b5c27b-9            |  \LK\'�      |
| 77357a6c6d-4             |  w5zlm       |
| 47b17c788-b              |  G�|x�       |
| 697e2572667325           |  i~%rfs%     |
| 37257c66774d667b-5       |  7%|fwMf{    |
| 57b179db5c2c2c97-b       |  W�y�\,,�    |
| 5d726678256673692566-9   |  ]rfx%fsi%f  |
| 9882ccc979e83c77a-2      |  ����y�<w�   |
| 38-5                     |  8           |
| 1c-9                     |              |

stuff after dashes: 9594b5b9259 -> ����%

#### fire minus 0x12:
| hex                      | text         |
| ------------------------ | ------------ |
| 1717161717               |              |
| 161616171616             |              |
| 1d4d4d4d161b             | MMM          |
| 4d161d3a1d161d174d       | M:M          |

#### fire minus 12:
| hex                      | text         |
| ------------------------ | ------------ |
| 1d1d1c1d1d               |              |    
| 1c1c1c1d1c1c             |              |
| 235353531c21             | #SSS!        |
| 531c2340231c231d53       | S#@##S       |

#### fire with spaces minus 0x12:
| hex                      | text         |
| ------------------------ | ------------ |
| 17e17e16e17e17           |  �~�~        |
| e16e16e16171616          |  �n�aqa      |
| 1d4d4d4d161b             |  MMM         |
| 4d161d3a1d161d174d       |  M:M         |

#### fire with spaces minus 12:
| hex                      | text         |
| ------------------------ | ------------ |
| 1d141d141c141d141d       |              | 
| 141c141c141c1d1c1c       |              |
| 235353531c21             |  #SSS!       |
| 531c2340231c231d53       |  S#@##S      |

#### fire color sort minus 12:
| hex            | text |
| -------------- | ---- |
| 1d1d1c1c2353   | #S   |
| 1c1d1d53531c21 | SS!  |
| 1c1c1c         |      |
| 1d1c40         | @    |
| 23231c231d     | ###  |

#### fire color sort minus 0x12:
| hex            | text |
| -------------- | ---- |
| 171716161d4d   | M    |
| 1617174d4d161b | MM   |
| 161616         |      |
| 17163a         | :    |
| 1d1d161d17     |      |

