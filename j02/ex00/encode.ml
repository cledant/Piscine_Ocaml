let encode lst =
    let rec loop lst it lst_tuple = match lst with
    | [] 				-> lst_tuple
    | hd :: elmt :: tl	-> if (hd = elmt)	then (loop (elmt :: tl) (it + 1) lst_tuple)
											else loop (elmt :: tl) 0 (lst_tuple @ [((it + 1), hd)])
	| hd :: []			-> loop [] 0 (lst_tuple @ [((it + 1), hd)])
 
    in
    loop lst 0 []

let display_str (n, m) =
		print_int n;
		print_char ' ';
		print_string m;
		print_char ','

let () =
	List.iter display_str (encode ["a"; "a"; "a"; "b"; "b"; "b"])
