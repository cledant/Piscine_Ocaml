class ['a] army =
    object
        val _lst : 'a list = []

        method add trooper = {< _lst = ([trooper] @ _lst)>}
        method delete = if (List.length _lst = 0) then {< _lst = []>}
						else {< _lst = List.tl _lst>}
		method print =
			let rec loop lst = match lst with
				| hd :: tl				-> print_endline (hd#to_string); loop tl
				| []					-> print_endline ""
			in
			loop _lst
    end
