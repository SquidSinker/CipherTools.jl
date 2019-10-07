module CipherTools

export encrypt, decrypt, Caesar, Vignere

abstract type EncMethod; end

struct Caesar <: EncMethod; end
struct Vigenere <: EncMethod; end

include("caesar.jl")
include("vigenere.jl")

end # module
