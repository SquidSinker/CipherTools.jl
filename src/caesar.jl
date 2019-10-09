alph = collect('a':'z')

function encrypt(enctype::Type{Caesar}, plaintext::String, shift::Int)
    e_str = ""
    if shift < 0
        shift = (shift % 26) + 26
    end
    for a in plaintext
        a = alph[((Int(a) + shift)-96) % 26]
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
        a = alph[((Int(a) - shift)-96) % 26]
        d_str = d_str * a
    end
    return d_str
end
