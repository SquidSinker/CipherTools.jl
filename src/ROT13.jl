alph = collect('a':'z')

function encrypt(enctype::Type{ROT13}, plaintext::String)
    encrypt(Caesar, plaintext, 13)
end

function decrypt(enctype::Type{ROT13}, ciphertext::String)
    decrypt(Caesar, ciphertext, 13)
end
