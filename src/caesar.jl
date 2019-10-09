alph = collect('a':'z')

function encrypt(enctype::Type{Caesar}, plaintext::String, shift::Int)
    e_str = ""
    if shift < 0
        shift = (shift % 26) + 26
    end
    for a in plaintext
        x = (Int(a) - 96 + shift) % 26
        if x == 0
            x += 26
        end
        a = alph[x]
        e_str = e_str * a
    end
    return e_str
end

function decrypt(enctype::Type{Caesar}, ciphertext::String, shift::Int)
    d_str = ""
    if shift < 0
        shift = (shift % 26) + 26
    end
    for a in ciphertext
        x = (Int(a) - 96 - shift) % 26
        if x < 1
            x += 26
        end
        a = alph[x]
        d_str = d_str * a
    end
    return d_str
end
