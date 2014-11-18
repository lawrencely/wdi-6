class Number

  def self.bin2dec(bin)
    return 0 unless bin =~ /^[01]+$/ # Reject strings with anything other than 1s and 0s

    total = 0
    bin.chars.reverse.each_with_index {|c, i| total += c.to_i * (2 ** i) }
    total
  end

  def self.dec2bin(dec)
    return 0 unless dec.is_a? Fixnum

    total = ''
    while dec > 0
      dec, binary = dec.divmod(2)
      total << binary.to_s
    end
    total.reverse
  end

  def self.bin2hex(bin)
    return 0 unless bin =~ /^[01]+$/
    bin.to_i(2).to_s(16)
  end

  def self.hex2bin(hex)
    return 0 unless hex =~ /^[0-9a-f]+$/
    hex.to_i(16).to_s(2)
  end
end