class virtual atom =
    object
        method virtual name : string
        method virtual symbol : string
        method virtual atomic_number : int
    end

class hydrogen =
    object (self)
        inherit atom
        method name = "Hydrogen"
        method symbol = "H"
        method atomic_number = 1
        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) =
            if (self#atomic_number = rhs#atomic_number) then true
            else false
     end

class carbon =
    object (self)
        inherit atom
        method name = "Carbon"
        method symbol = "C"
        method atomic_number = 6
        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) = 
            if (self#atomic_number = rhs#atomic_number) then true
            else false
     end

class oxygen =
    object (self)
        inherit atom
        method name = "Oxygen"
        method symbol = "O"
        method atomic_number = 8
        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) = 
            if (self#atomic_number = rhs#atomic_number) then true
            else false
     end

class nitrogen =
    object (self)
        inherit atom
        method name = "Nitrogen"
        method symbol = "N"
        method atomic_number = 7
        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) = 
            if (self#atomic_number = rhs#atomic_number) then true
            else false
     end

class boron =
    object (self)
        inherit atom
        method name = "Boron"
        method symbol = "B"
        method atomic_number = 5
        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) = 
            if (self#atomic_number = rhs#atomic_number) then true
            else false
     end

class chlorine =
    object (self)
        inherit atom
        method name = "Chlorine"
        method symbol = "Cl"
        method atomic_number = 17
        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) = 
            if (self#atomic_number = rhs#atomic_number) then true
            else false
     end
