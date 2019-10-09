module CipherTools

export encrypt, decrypt, Caesar, Vigenere, ROT13


abstract type EncMethod; end

struct Caesar <: EncMethod; end
struct Vigenere <: EncMethod; end
struct ROT13 <: EncMethod; end

include("caesar.jl")
include("vigenere.jl")
include("ROT13.jl")

end # module
