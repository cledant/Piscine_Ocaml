let tak a b c =
    let rec loop x y z =
        if (y < x) then loop (loop (x - 1) y z) (loop (y - 1) z x) (loop (z - 1) x y)
        else z
    in loop a b c

let () =
    print_int (tak 1 2 3);
    print_endline "";
    print_int (tak 5 23 7);
    print_endline "";
    print_int (tak 9 1 0);
    print_endline "";
    print_int (tak 1 1 1);
    print_endline "";
    print_int (tak 0 42 0);
    print_endline "";
    print_int (tak 23498 98734 98776)
