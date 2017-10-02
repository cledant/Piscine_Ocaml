let rot_1 c =
    if (c >= 'a' && c <= 'z') then
        if (c = 'z') then
            'a'
        else
            char_of_int ((int_of_char c) + 1)
    else if (c >= 'A' && c <= 'Z') then
        if (c = 'Z') then
            'A'
        else
            char_of_int ((int_of_char c) + 1)
    else
        c

let ft_rot_n n str =
    let rec loop n str =
        if (n > 0) then
            loop (n - 1) (String.map rot_1 str)
        else
            str
    in
    loop n str

let main () =
    print_endline (ft_rot_n 1 "abcdefz");
    print_endline (ft_rot_n 42 "!! 123 CaCa 456 !!");
    print_endline (ft_rot_n 4 "ABCDEFZ");
    print_endline (ft_rot_n 4 "!@#$%^&*()_+=-");
    print_endline (ft_rot_n 23 "")

let () = main ()
