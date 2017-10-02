let ft_print_comb () =
    let rec loop x y z =
        if (z == 10) then
            loop x (y + 1) 0
        else if (y == 10) then
            loop (x + 1) 0 0
        else if (z <= y) then
            loop x y (z + 1)
        else if (y <= x) then
            loop x (y + 1) 0
        else if x < y && y < z then
            begin
                print_int x;
                print_int y;
                print_int z;
                if (x = 7) && (y = 8) && (z = 9) then
                    print_string "\n"
                else
                    begin
                        print_string ", ";
                        loop x y (z + 1)
                    end
            end
     in
     loop 0 0 0
            
let main() = 
    ft_print_comb ()

let () = main ()
