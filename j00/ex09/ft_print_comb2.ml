let ft_print_comb2 () =
    let rec loop x y =
        if (y <= x) then
            loop x (y + 1)
        else if (y >= 100) then
            loop (x + 1) (x + 2)
        else if (x = 98 && y = 99) then
            begin
                print_int x;
                print_char ' ';
                print_int y;
                print_char '\n'
            end
        else if (x < 10 && y < 10) then
            begin
                print_char '0';
                print_int x;
                print_char ' ';
                print_char '0';
                print_int y;
                print_char ',';
                print_char ' ';
                loop x (y + 1)
            end
        else if (x >= 10 && y < 10) then
            begin
                print_int x;
                print_char ' ';
                print_char '0';
                print_int y;
                print_char ',';
                print_char ' ';
                loop x (y + 1)
            end
        else if (x < 10 && y >= 10) then
            begin
                print_char '0';
                print_int x;
                print_char ' ';
                print_int y;
                print_char ',';
                print_char ' ';
                loop x (y + 1)
            end
        else if (x >= 10 && y >= 10) then
            begin
                print_int x;
                print_char ' ';
                print_int y;
                print_char ',';
                print_char ' ';
                loop x (y + 1)
            end
    in
    loop 0 0

let main () =
    ft_print_comb2 ()

let () = main ()
