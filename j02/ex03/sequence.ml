let encode lst =
    let rec loop lst it lst_tuple = match lst with
    | [] 				-> lst_tuple
    | hd :: elmt :: tl	-> if (hd = elmt)	then (loop (elmt :: tl) (it + 1) lst_tuple)
											else loop (elmt :: tl) 0 (lst_tuple @ [((it + 1), hd)])
	| hd :: []			-> loop [] 0 (lst_tuple @ [((it + 1), hd)])
 
    in
    loop lst 0 []

let create_list str =
	let rec loop lst cur max =
		if (cur > max) then lst
		else
			loop (lst @ [string_of_int (int_of_char(str.[cur]) - 48)]) (cur + 1) max
	in loop [] 0 ((String.length str) - 1)

let rec create_string lst = match lst with
	| [] 					-> ""
	| (nb, str) :: tl 		-> (string_of_int(nb) ^ str ^ create_string (tl))
	
let rec sequence n =
	if (n <= 0) then ""
	else if (n = 1) then "1"
	else create_string (encode (create_list (sequence (n - 1))))

let () =
	print_endline (sequence 1);
	print_endline (sequence 2);
	print_endline (sequence 3);
	print_endline (sequence 4);
	print_endline (sequence 5);
	print_endline (sequence 6);
	print_endline (sequence 7);
	print_endline (sequence 8);
