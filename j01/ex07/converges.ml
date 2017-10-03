let converges f x n =
   if (n < 0) then false
    else
        let rec loop m acc acc_fix =
            if (acc = acc_fix) then true
            else if (m = n) then false
            else loop (m + 1) (f acc) (acc_fix + 1)
        in loop 0 x 0

let () =
    print_endline (string_of_bool (converges (( * ) 2) 2 5));
    print_endline (string_of_bool (converges (fun x -> x / 2) 2 3));
    print_endline (string_of_bool (converges (fun x -> x / 2) 2 2));
    print_endline (string_of_bool (converges (fun x -> x ) 2 5));
