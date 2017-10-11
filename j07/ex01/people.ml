class people name =
    object
        val _name:string = name
        val _hp = 100

        initializer print_endline "Exterminate new People class !"
        method to_string = _name ^ " : HP " ^ (string_of_int _hp)
        method talk = print_endline ("I'm " ^ _name ^ "! Do you know the doctor ?")
        method die = print_endline ("Aaaarghh!")
    end
