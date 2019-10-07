row = collect('a':'z')
vigenere = [row]

for i in 'b':'z'
	global row = vcat(row[2:end], row[1])
	push!(vigenere, row)
end

function encrypt(enctype::Type{Vigenere}, plaintext::String, key::String)
	e_str = ""
	num = 1
	len = length(key) - 1
	for a in plaintext
		b = key[(len % num)+1]
		e_str = e_str * (vigenere[Int(a)-96][Int(b)-96])
		num += 1
	end
	return e_str
end

function decrypt(enctype::Type{Vigenere}, ciphertext::String, key::String)
	d_str = ""
	num = 1
	len = length(key) - 1
	for a in ciphertext
		b = key[(len % num) + 1]
		c = Int(a) - Int(b)
		if c < 0
			c += 26
		end
		d_str = d_str * Char(c + 97)
		num += 1
	end
	return d_str
end
