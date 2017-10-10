let read_jokes joke_array nb_jokes fs =
    let i = ref 0 in
    while !i < nb_jokes do
        let read_str = try input_line fs with
            | _     -> ""
        in
        Array.set !joke_array !i read_str;
        incr i
    done

let () =
    Random.self_init();
    if (Array.length Sys.argv != 2) then 
        begin
            print_endline "Too much or too few args";
            exit 0
        end
    else
    let fs =
        try open_in (Array.get Sys.argv 1) with
            | _     -> begin
                            print_endline "Something bad happend";
                            exit 0
                       end
    in
    let str_nb_jokes = try input_line fs with
            | _     -> begin
                            print_endline "Read number of jokes failed";
    						close_in fs;
                            exit 0
                       end
    in
    let int_nb_jokes = try int_of_string str_nb_jokes with
            | _     -> begin
                            print_endline "Not a number";
    						close_in fs;
                            exit 0
                       end
    in
    if (int_nb_jokes <= 0 || int_nb_jokes > 20) then
        begin
            print_endline "Invalid number of jokes";
    		close_in fs;
            exit 0
        end
    else
    let joke_array = ref (Array.make int_nb_jokes "")
    in
    read_jokes joke_array int_nb_jokes fs;
    close_in fs;
    print_endline (Array.get !joke_array (Random.int int_nb_jokes))
