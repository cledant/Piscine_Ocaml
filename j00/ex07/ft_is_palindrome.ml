let ft_is_palindrome str =
    let length = String.length str in
    let rec loop str front back =
        if (back < 0) then
            true
        else if ((String.get str front) = (String.get str back)) then
            loop str (front + 1) (back - 1)
        else
            false
    in
    loop str 0 (length - 1)

let disp truth =
    if truth = true then
        print_endline "positive"
    else
        print_endline "negative"

let main () =
    disp (ft_is_palindrome "---AAA---");
    disp (ft_is_palindrome "rotor");
    disp (ft_is_palindrome "madam");
    disp (ft_is_palindrome "caca");
    disp (ft_is_palindrome "a");
    disp (ft_is_palindrome "")

let () = main ()
