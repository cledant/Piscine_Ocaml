type t = {
            x : int;
            y : int
         }

let isNum c = match c with
    | '0' .. '9'    -> true
    | _             -> false

let parse_stdin () =
    let str = String.split_on_char ' ' (String.trim (read_line ()))
    in
    let safe_error = { x = 1; y = 100;}
    in
    if (List.length str != 2) then safe_error
    else if (String.length (List.nth str 0) != 1) then safe_error
    else if (String.length (List.nth str 1) != 1) then safe_error
    else if (isNum (List.nth str 0).[0] = false) then safe_error
    else if (isNum (List.nth str 1).[0] = false) then safe_error
    else {x = (int_of_string (List.nth str 0)) - 1; y = (int_of_string (List.nth str 1)) - 1;}

let print_victory_and_exit master_grid player =
    print_endline ("Player " ^ (Master.toStringPlayer master_grid player) ^ " won !");
    Master.printMaster master_grid

let rec loop master_grid player =
    let check_victory_and_loop master_grid player =
        if (Master.checkVictory master_grid = true) then print_victory_and_exit master_grid player
        else loop master_grid ((player + 1) mod 2)
    in
    let print_error_and_loop grid player =
        print_endline "Invalid Value";
        loop master_grid player
    in
    Master.printMaster master_grid;
    print_endline "";
    print_endline ("Player " ^ (Master.toStringPlayer master_grid player) ^ " turn");
    let value = parse_stdin ()
    in
    if ((Master.isValidMove master_grid value.x value.y) = false) then print_error_and_loop master_grid player
    else check_victory_and_loop (Master.play master_grid value.x value.y player) player

let startGame tuple = match tuple with
    | (p2, p1)      -> loop (Master.newMaster (Color.newColor p1.[0]) (Color.newColor p2.[0])) 0

let errorPlayer1Length () =
    print_endline "Player 1 name is too long or too short";
    false

let errorPlayer2Length () =
    print_endline "Player 2 name is too long or too short";
    false

let errorSameNames () =
    print_endline "Player 1 and Player 2 are Identical";
    false

let errorPlayer1Invalid () =
    print_endline "Player 1 name is invalid";
    false

let errorPlayer2Invalid () =
    print_endline "Player 2 name is invalid";
    false

let noError () = true

let isValidChar c = match c with
    | '!' .. '~'    -> true
    | _             -> false

let checkNames p1 p2 =
    if (String.length p1 <= 0 || String.length p1 > 1) then errorPlayer1Length()
    else if (String.length p2 = 0 || String.length p2 > 1) then errorPlayer2Length()
    else if (p1 = p2) then errorSameNames()
    else if (isValidChar p1.[0] = false) then errorPlayer1Invalid()
    else if (isValidChar p2.[0] = false) then errorPlayer2Invalid()
    else noError()

let checkPlayerNames tuple = match tuple with
    | (p2, p1)          -> checkNames p1 p2

let promptAndReadPlayer nb = match nb with
    | 1         ->  print_endline "Fill Player 1 symbol :";
                    read_line()
    | 2         ->  print_endline "Fill Player 2 symbol :";
                    read_line()
    | _         ->  print_endline "Fill Player symbol :";
                    read_line()

let getPlayerNames () =
    (promptAndReadPlayer 2, promptAndReadPlayer 1)

let rec newGame () =
    let names = getPlayerNames() in
    if (checkPlayerNames names = false) then newGame()
    else startGame names

let () =
	let rec start () =
	    newGame ();
		print_endline "\nThat was fun! Let's play again!\nSay 'yes' pretty please!";
		if String.trim (read_line ()) = "yes" then start ()
		else print_endline "Awwww :("
	in
	start ()
