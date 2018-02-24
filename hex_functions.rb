module Hexadecimal
  def hex_to_text(hex_string)
    [hex_string].pack('H*')
  end

  def text_to_hex(text_string)
    text_string.unpack('U'*text_string.length).collect {|x| x.to_s 16}.join
  end

  def hex_minus_int(hex_string, integer)
    ("0x#{hex_string}".hex - integer).to_s(16)
  end

  def hex_minus_hex(l, r)
    ("0x#{l}".hex - "0x#{r}".hex).to_s(16)
  end
end
