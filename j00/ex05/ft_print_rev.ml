let ft_print_rev str =
    let length = String.length str in
    let rec loop str pos =
        if pos < 0 then
            print_char '\n'
        else
            begin
                print_char (String.get str pos);
                loop str (pos - 1)
            end
    in
    loop str (length - 1)

let main () =
    ft_print_rev "Hello World !";
    ft_print_rev "";
    ft_print_rev "Nyan !"

let () = main ()
