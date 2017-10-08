type t = Color.t list

let newGrid = [Color.None; Color.None; Color.None; Color.None; Color.None; Color.None; Color.None; Color.None; Color.None]

let toStringN nth grid =
	(Color.toString (List.nth grid (3 * nth))) ^ " " ^
	(Color.toString (List.nth grid (3 * nth + 1))) ^ " " ^
	(Color.toString (List.nth grid (3 * nth + 2)))

let isValidMove grid index =
	if (index < 0 || index > 8 || grid = [] || ((List.nth grid index) != Color.None)) then false
	else true

let getValue grid index =
	List.nth grid index

let setValue grid index color =
	let rec loop grid new_grid index cur_index color =
		if (cur_index >= 9) then new_grid
		else if (cur_index = index) then
			(new_grid @ [color]) @ (loop grid new_grid index (cur_index + 1) color)
		else
			(new_grid @ [List.nth grid cur_index]) @ (loop grid new_grid index (cur_index + 1) color)
		in
		loop grid [] index 0 color

let checkVictory grid = match grid with
	| e1 :: e2 :: e3 :: e4 :: e5 :: e6 :: e7 :: e8 :: e9 :: []	->
			if (e1 = e2 && e2 = e3 && e1 <> Color.None) then true
			else if (e4 = e5 && e5 = e6 && e4 <> Color.None ) then true
			else if (e7 = e8 && e8 = e9 && e7 <> Color.None ) then true
			else if (e1 = e4 && e4 = e7 && e1 <> Color.None )  then true
			else if (e2 = e5 && e5 = e8 && e2 <> Color.None )  then true
			else if (e3 = e6 && e6 = e9 && e3 <> Color.None )  then true
			else if (e1 = e5 && e5 = e9 && e1 <> Color.None )  then true
			else if (e3 = e5 && e5 = e7 && e3 <> Color.None )   then true
			else if (e1 != Color.None && e2 != Color.None && e3 != Color.None && e4 != Color.None && e5 != Color.None && e6 != Color.None && e7 != Color.None && e8 != Color.None && e9 != Color.None) then true
			else false
	| _													 -> false
