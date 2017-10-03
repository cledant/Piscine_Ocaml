let fibonacci n =
    let rec loop x a b =
        if (x < 0) then (-1)
        else if (x = 0) then a
        else if (x = 1) then b
        else loop (x - 1) b (a + b)
    in loop n 0 1

let () =
    print_int (fibonacci (-42));
    print_endline "";
    print_int (fibonacci 0);
    print_endline "";
    print_int (fibonacci 1);
    print_endline "";
    print_int (fibonacci 3);
    print_endline "";
    print_int (fibonacci 6);
    print_endline "";
    print_int (fibonacci 14)
