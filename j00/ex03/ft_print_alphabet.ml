let ft_print_alphabet () =
    let ascii_of_a = int_of_char 'a' in
    let ascii_of_z = int_of_char 'z' in
    let rec loop cur_letter =
        let char_of_cur_letter = char_of_int cur_letter in
        if cur_letter < ascii_of_z
        then
            begin
                print_char char_of_cur_letter;
                loop (cur_letter + 1)
            end
        else
            begin
                print_char char_of_cur_letter;
                print_char '\n'
            end
    in
    loop ascii_of_a

let main() = 
    ft_print_alphabet ()

let () = main ()
