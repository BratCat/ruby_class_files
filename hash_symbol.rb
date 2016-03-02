#simple hash
#pets = { "BratCat" => cat, "Midnight" => rat, "Nissa" => dog }

#rewrite to use symbols
#pets = { :cat => "BratCat", :rat => "Midnight", :dog => "Nissa" }

#rewrite to not use => at all
pets_01 = { type: "cat", name: "BratCat"}
pets_02 = { type: "rat", name: "Midnight"}
pets_03 = { type: "dog", name: "Nissa"}
pets_04 = { type: "cat", name: "Kobal"}

favorite_pet = pets_01[:name]
puts "My favorite pet is #{favorite_pet}."