let ft_sum f min max =
	let rec loop cur acc =
		if (max < min) then nan
		else if (min = cur) then ((f cur) +. acc)
		else loop (cur - 1) ((f cur) +. acc)
	in loop max 0.0

let () =
	print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10);
    print_endline "";
    print_float (ft_sum (fun i -> float_of_int (i * i)) 10 10);
    print_endline "";
    print_float (ft_sum (fun i -> float_of_int (i * i)) 10 (-10));
    print_endline ""
