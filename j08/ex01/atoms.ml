class virtual atom =
    object (self)
        method virtual name : string
        method virtual symbol : string
        method virtual atomic_number : int

        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) =
            if (self#atomic_number = rhs#atomic_number) then true
            else false
    end

class hydrogen =
    object
        inherit atom
        method name = "Hydrogen"
        method symbol = "H"
        method atomic_number = 1
     end

class carbon =
    object
        inherit atom
        method name = "Carbon"
        method symbol = "C"
        method atomic_number = 6
     end

class oxygen =
    object
        inherit atom
        method name = "Oxygen"
        method symbol = "O"
        method atomic_number = 8
     end

class nitrogen =
    object
        inherit atom
        method name = "Nitrogen"
        method symbol = "N"
        method atomic_number = 7
     end

class boron =
    object
        inherit atom
        method name = "Boron"
        method symbol = "B"
        method atomic_number = 5
     end

class chlorine =
    object
        inherit atom
        method name = "Chlorine"
        method symbol = "Cl"
        method atomic_number = 17
     end
