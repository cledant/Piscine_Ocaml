type 'a ft_ref = { mutable content : 'a;}

let return value =
    {content = value;}

let get my_ref =
    my_ref.content

let set my_ref value =
    my_ref.content <- value

let bind my_ref (fct : 'a -> 'b ft_ref) =
    fct my_ref

let	transform value = match get value with
	| 1			-> return "LA"
	| _			-> return "ICI"

let () =
	let toto = return 42 in
	print_int (get toto);
	print_endline "";
	set toto 84;
	print_int (get toto);
	print_endline "";
	let toto2 = return "hey" in
	print_endline (get toto2);
	set toto2 "toto2";
	print_endline (get toto2);
	print_endline (get (bind toto transform))
