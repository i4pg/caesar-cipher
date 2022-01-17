class Cipher
  def caesar_cipher(message, shift, result = '')
    alpha = ('a'..'z').to_a
    caesar = ('a'..'z').to_a
    caesar.push(caesar.slice!(0, shift)).flatten!
    message.split('').each do |msg_chr|
      if msg_chr.match(/\w/)
        alpha.each do |alpha_char|
          next unless alpha_char == msg_chr.downcase

          result += if msg_chr == msg_chr.upcase
                      caesar[alpha.index(alpha_char)].upcase
                    else
                      caesar[alpha.index(alpha_char)]
                    end
        end
      else
        result += msg_chr
      end
    end
    result
  end
end
