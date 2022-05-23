require 'pry-byebug'
def caesar_cipher(string, shift)
    ascii_arr = string.bytes
    shifted_ascii_arr = ascii_arr.map do |char|
        if (char >= 65 && char <= 90)
            temp = char + shift
            if (temp < 65)
                char = temp + 26
            elsif (temp > 90)
                char = temp - 26
            else
                char + shift
            end
        elsif (char >= 97 && char <= 122)
            temp = char + shift
            if (temp < 97)
                char = temp + 26
            elsif (temp > 122)
                char = temp - 26
            else
                char + shift
            end
        else
            char
        end
    end
    string_form_arr = shifted_ascii_arr.map {|char| char.chr}
    string_form = string_form_arr.join("")
    p string_form
    p shifted_ascii_arr
    p ascii_arr
    return string_form
end

caesar_cipher("What a string!", -5)