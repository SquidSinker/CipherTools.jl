using Test
using CipherTools

s = encrypt(Vigenere, "rootvegetables", "potato")
@test "rootvegetables" == decrypt(Vigenere, s, "potato")

@test encrypt(ROT13, "potato") == "cbgngb"
@test decrypt(ROT13, "cbgngb" ) == "potato"

@test encrypt(Caesar, "potato", 13 ) == "cbgngb"
@test decrypt(Caesar, "cbgngb", 13 ) == "potato"
