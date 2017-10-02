let rec ft_power x y =
    if y = 0 && x = 0 then 1
    else if y <= 0 then 1
    else (x * ft_power x (y - 1))

let main () =
    print_int (ft_power 2 2);
    print_char '\n';
    print_int (ft_power 10 3);
    print_char '\n';
    print_int (ft_power 0 2);
    print_char '\n';
    print_int (ft_power 10 0);
    print_char '\n';
    print_int (ft_power 0 0);
    print_char '\n'

let () = main ()
