type t = {
	grids : Grid.t list;
	p1 : Color.t;
	p2 : Color.t;
	won : Grid.t
}

let newMaster player1 player2 =
	let rec loop grids = function
		| 9 -> grids
		| _ as n -> loop (grids @ [Grid.newGrid]) (n + 1)
	in
	{
		grids = loop [] 0;
		p1 = player1;
		p2 = player2;
		won = Grid.newGrid;
	}

let isValidMove master grid_nbr slot_nbr =
    if (grid_nbr < 0 || slot_nbr < 0) then false
    else
    	(Grid.isValidMove (List.nth master.grids grid_nbr) slot_nbr)
    	&& (Grid.getValue master.won grid_nbr) = Color.None

let play master grid_nbr slot_nbr p_nbr =
	let player = match p_nbr with
		| 0 -> master.p1
		| _ -> master.p2
	in
	let new_grids =
		let rec loop n acc =
			if n = grid_nbr then
				loop (n + 1) (acc @ [Grid.setValue (List.nth master.grids grid_nbr) slot_nbr player])
			else if n >= 9 then acc
			else loop (n + 1) (acc @ [List.nth master.grids n])
		in
		loop 0 []
	in
	let new_won =
		if Grid.checkVictory (List.nth new_grids grid_nbr) then
			Grid.setValue master.won grid_nbr player
		else master.won
	in
	{
		grids = new_grids;
		p1 = master.p1;
		p2 = master.p2;
		won = new_won;
	}

let toStringRN row n master =
	let wonToString color = function
		| 1 -> "  " ^ Color.toString color ^ "  "
		| _ -> "     "
	in
	if (Grid.getValue master.won n) = Color.None then Grid.toStringN row (List.nth master.grids n)
	else wonToString (Grid.getValue master.won n) row

let printMaster master =
	let rec loop n =
		if n = 3 || n = 6 then print_endline "---------------------";
		print_endline (
			(toStringRN (n mod 3) (n - (n mod 3)) master) ^ " | " ^
			(toStringRN (n mod 3) (n - (n mod 3) + 1) master) ^ " | " ^
			(toStringRN (n mod 3) (n - (n mod 3) + 2) master));
		if n < 8 then loop (n + 1)
	in
	loop 0

let checkVictory master =
	Grid.checkVictory master.won

let toStringPlayer mg index = match index with
    | 0         ->  Color.toString mg.p1
    | 1         ->  Color.toString mg.p2
    | _         -> "?"
