let is_digit c =
    c >= '0' && c <= '9'

let ft_string_all fct str =
    let len = String.length str in
    if len = 0 then
        false
    else
        let rec loop fct str pos max_length =
            if (pos = max_length) then
                true
            else if fct (String.get str pos) = true then
                loop fct str (pos + 1) max_length
            else
                false
        in
        loop fct str 0 len

let disp truth =
    if truth = true then
        print_endline "positive"
    else
        print_endline "negative"

let main () = 
    disp (ft_string_all is_digit "0123456789");
    disp (ft_string_all is_digit "01234AB789");
    disp (ft_string_all is_digit "")

let () = main ()
