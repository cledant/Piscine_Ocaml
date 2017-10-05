type phosphate = string
type deoxyribose = string
type nucleobase = A | T | C | G | None
type nucleotide = 
{
	phosphate : phosphate;
	deoxyribose : deoxyribose;
	nucleobase : nucleobase;
}

let generate_nucleotide nucleobase = match nucleobase with
	| 'A'					-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = A}
	| 'T'					-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = T}
	| 'C'					-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = C}
	| 'G'					-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = G}
	| _						-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = None}

let print_nucleotide nucle =
	begin
		print_endline (nucle.phosphate);
		print_endline (nucle.deoxyribose);
		match nucle.nucleobase with
			| A			-> print_endline "A";
			| T			-> print_endline "T";
			| C			-> print_endline "C";
			| G			-> print_endline "G";
			| None		-> print_endline "None";
	end

type helix = nucleotide list

let random_nucleobase x=
	match x with
		| 0			-> 'A'
		| 1			-> 'T'
		| 2			-> 'C'
		| 3			-> 'G'
		| _			-> 'f'

let generate_helix n =
	let rec loop (lst : helix) m =
		if (m > 0) then
			loop (lst @ [generate_nucleotide (random_nucleobase (Random.int 4))]) (m - 1)
		else lst
	in 
	loop [] n

let str_of_nucleobase nucle = match nucle with
		| A			-> "A";
		| T			-> "T";
		| C			-> "C";
		| G			-> "G";
		| None		-> "None"

let helix_to_string (hel : helix) =
	let rec loop_2 str h = match h with
		| hd :: tl			-> str ^ "Nucleobase : " ^ hd.phosphate ^ " " ^ hd.deoxyribose ^ " " ^ str_of_nucleobase hd.nucleobase ^ "\n" ^ (loop_2 str tl)
		| []				-> ""
	in
	loop_2 "" hel

let complementary_nucleobase nuc = match nuc.nucleobase with
	| A			-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = T}
	| T			-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = A}
	| C			-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = G}
	| G			-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = C}
	| None		-> {phosphate = "phosphate"; deoxyribose = "deoxyribose"; nucleobase = None}

let complementary_helix (hel : helix) =
	let rec loop_3 h_base (h_comp : helix) = match h_base with
		| []			-> h_comp
		| hd :: tl		-> loop_3 tl (h_comp @ [complementary_nucleobase hd])
	in
	loop_3 hel []

let () =
	print_endline (helix_to_string (generate_helix 4));
	print_endline (helix_to_string (generate_helix 4));
	let toto = generate_helix 10 in
	print_endline (helix_to_string toto);
	print_endline (helix_to_string (complementary_helix toto))
