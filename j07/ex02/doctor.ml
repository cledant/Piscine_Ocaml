class doctor name sidekick age =
    object (self)
        val _name : string = name
        val _age : int = age
        val _sidekick : People.people = sidekick
        val _hp : int = 100

        initializer 
            begin
                print_endline "A new timelord is born !";
            end
        method to_string = _name ^ " : HP = " ^ (string_of_int _hp) ^ "\n" ^ "age = " ^ (string_of_int _age) ^ "\n" ^ _sidekick#to_string
        method talk = print_endline "Hi! I'm the Doctor!"
        method use_sonic_screwdriver = print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"
        method private regenerate : doctor = new doctor _name _sidekick _age
        method travel_in_time start arrival = 
            begin
                print_endline ("Moving from " ^ string_of_int(start) ^ " to " ^ string_of_int(arrival));
                print_endline ("
                              ___
                      _______(_@_)_______
                      | POLICE      BOX |
                      |_________________|
                       | _____ | _____ |
                       | |###| | |###| |
                       | |###| | |###| |   
                       | _____ | _____ |   
                       | || || | || || |
                       | ||_|| | ||_|| |  
                       | _____ |$_____ |  
                       | || || | || || |  
                       | ||_|| | ||_|| | 
                       | _____ | _____ |
                       | || || | || || |   
                       | ||_|| | ||_|| |         
                       |       |       |        
                       *****************")
            end
    end
