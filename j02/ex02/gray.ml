let bin_to_gray x = ((x lsr 1) lxor x)

let rec itoa_2 x n =
	if (x = 0) && n > 0 then 
		begin
			print_char '0';
			itoa_2 0 (n - 1)
		end
	else if (x != 0) then
		begin
			itoa_2 (x / 2) (n - 1);
			print_int (x mod 2)
		end
	else ()

let gray n =
	let rec loop m l =
		if (m < l) then
			begin
				itoa_2 (bin_to_gray m) n;
				print_char ' ';
				loop (m + 1) l
			end
		else print_endline "";
	in loop 0 (int_of_float(2.0 ** float_of_int(n)))

let () =
	gray 1;
	gray 2;
	gray 3;
	gray 4
