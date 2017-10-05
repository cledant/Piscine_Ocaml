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

let () =
	print_nucleotide (generate_nucleotide 'A');
	print_endline "";
	print_nucleotide (generate_nucleotide 'T');
	print_endline "";
	print_nucleotide (generate_nucleotide 'C');
	print_endline "";
	print_nucleotide (generate_nucleotide 'G');
	print_endline "";
	print_nucleotide (generate_nucleotide 'n')
