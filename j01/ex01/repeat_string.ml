let repeat_string ?(str = "x") n =
    let rec loop n acc =
        if n < 0 then "Error"
        else if n = 0 then acc
        else loop (n - 1) (acc ^ str)
     in loop n ""

let () =
    print_endline (repeat_string ~str:"Toto" (-1));
    print_endline "";
    print_endline (repeat_string 5);
    print_endline "";
    print_endline (repeat_string ~str:"NyaN" 0);
    print_endline "";
    print_endline (repeat_string ~str:"Nyu" 10);
    print_endline "";

