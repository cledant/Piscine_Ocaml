let max_length a1 a2=
	if (Array.length a1 > Array.length a2) then Array.length a1 
	else Array.length a2 

let square x = x *. x

let op a b cur_it =
	square((Array.get a cur_it) -. (Array.get b cur_it))

let eu_dist (a1 : float array) (a2 : float array) =
	let max_len = (max_length a1 a2) in
	if (max_len = 0) then 0.0
	else
		begin
			let rec loop a b acc cur_it max_it =
				if (cur_it > max_it) then sqrt(acc)
				else loop a b (acc +. (op a b cur_it)) (cur_it + 1) max_it
			in
			loop a1 a2 0.0 0 (max_len - 1)
		end

let set_1 x = 1.0

let set_2 x = 2.0

let () =
	print_float (eu_dist (Array.map set_2 (Array.make 5 0.0)) (Array.map set_1 (Array.make 5 0.0)))
