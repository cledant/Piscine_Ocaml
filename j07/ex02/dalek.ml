class dalek =
    object (self)
        val _name : string = 
            begin
                ignore (Random.self_init());
            "Dalek" ^ (String.make 1 (char_of_int ((Random.int 26) + (int_of_char 'A')))) ^ (String.make 1 ((char_of_int ((Random.int 26) + int_of_char ('a'))))) ^ (String.make 1 (char_of_int ((Random.int 26) + int_of_char('a'))))
            end
        val _hp : int = 100
        val mutable _shield : bool = true

        initializer Random.self_init()
        method to_string = _name ^ " : HP = " ^ (string_of_int _hp) ^ "\nSheild = " ^ (string_of_bool _shield)
        method talk =
            let str1 = "Explain ! Explain !" in
            let str2 = "Exterminate ! Exterminate !" in
            let str3 = "I obey!" in
            let str4 = "You are the Doctor! You are the enemy of the Daleks!" in
            let display nbr = match nbr with
                | 0         -> print_endline str1
                | 1         -> print_endline str2
                | 2         -> print_endline str3
                | 3         -> print_endline str4
                | _         -> print_endline "Shit happend bro :/"
            in
            display (Random.int 4)
         method exterminate (ppl : People.people) =
             begin
                 ppl#set_hp (-9999);
                 if _shield = true then _shield <- false
                 else _shield <- true
             end
         method die = print_endline "Emergency Temporal Shift"
     end
