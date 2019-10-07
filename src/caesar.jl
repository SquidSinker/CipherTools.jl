alph = collect('a':'z')

function encrypt(enctype::Type{Caesar}, plaintext::String, shift::Int)
    e_str = ""
    num = 1
    for a in plaintext
        a = alph[((Int(a) + shift)-96) % 26]
        e_str = e_str * a
        num += 1
    end
    return e_str
end

function decrypt(enctype::Type{Caesar}, ciphertext::String, shift::Int)
    d_str = ""
    num = 1
    for a in ciphertext
        a = alph[((Int(a) - shift)-96) % 26]
        d_str = d_str * a
        num += 1
    end
    return d_str
end
