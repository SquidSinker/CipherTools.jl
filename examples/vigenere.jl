print("Key: ")
key = readline()
print("Message: ")
plaintext = readline()
println(encrypt(Vigenere, plaintext,key))

println("Decryption!")
print("Key: ")
key = readline()
print("Received Message: ")
ciphertext = readline()
print(decrypt(Vigenere, ciphertext, key))
