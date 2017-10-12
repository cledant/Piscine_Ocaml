class virtual molecule (name : string) (lst : Atoms.atom list) =
    object
        method virtual name : string
        method virtual formula : string
        val virtual _lst : Atoms.atom list

        method to_string = self#name ^ " : " ^ self#formula
        method equal (rhs : molecule) =
            if (self#formula = rhs#formula) then true
            else false
    end

class water =
    object (self)
        inherit molecule "Water"
        val _lst = [(new Atoms.hydrogen :> Atoms.atom); (new Atoms.oxygen :> Atoms.atom); (new Atoms.hydrogen :> Atoms.atom)]
        method name = "Water"
        method formula = "Todo"

    end 
