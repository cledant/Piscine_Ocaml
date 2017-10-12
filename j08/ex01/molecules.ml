class virtual molecule (m_name : string) (a_lst : Atoms.atom list) =
    object (self)
        method name = m_name
        val _lst = a_lst

        method formula = "todo"


        method to_string = self#name ^ " : " ^ self#formula
        method equal (rhs : molecule) =
            if (self#formula = rhs#formula) &&  (self#name = rhs#name) then true
            else false
    end

class water =
    object
        inherit molecule "Water" [new Atoms.hydrogen; new Atoms.oxygen; new Atoms.hydrogen]
    end 
