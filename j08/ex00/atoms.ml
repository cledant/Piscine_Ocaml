class virtual atom (a_name : string) (a_symbol : string) (a_nb : int) =
    object (self)
        method name = a_name
        method symbol = a_symbol
        method atomic_number = a_nb

        method to_string = self#name ^ " => Symbol : " ^ self#symbol ^ " | Atomic number : " ^ (string_of_int self#atomic_number)
        method equal (rhs : atom) =
            if (self#atomic_number = rhs#atomic_number) then true
            else false
    end

class hydrogen =
    object
        inherit atom "Hydrogen" "H" 1
     end

class carbon =
    object
        inherit atom "Carbon" "C" 6
     end

class oxygen =
    object
        inherit atom "Oxygen" "O" 8
     end

class nitrogen =
    object
        inherit atom "Nitrogen" "N" 7
     end

class boron =
    object
        inherit atom "Boron" "B" 5
     end

class chlorine =
    object
        inherit atom "Chlorine" "Cl" 17
     end
