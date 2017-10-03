let iter f x n =
    if (n < 0) then (-1)
    else
        let rec loop m acc =
            if (m = 0) then (loop (m + 1) (x + acc))
            else if (m > n) then acc
            else loop (m + 1) (f acc)
        in loop 0 0

let () =
    print_int (iter (fun x -> x * x) 2 4);
    print_endline "";
    print_int (iter (fun x -> x * 2) 2 4);
    print_endline "";
    print_int (iter (fun x -> x * 3) 2 4);
    print_endline ""
