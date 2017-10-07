let sub_print card deck =
	print_endline (Deck.Card.toString card);
	print_endline "";
	print_endline "";
	List.iter print_endline (Deck.toStringList deck)

let print_pair pair = match pair with
	| (card, deck)		-> sub_print card deck

let () =
	List.iter print_endline (Deck.toStringList (Deck.newDeck ()));
	print_endline "";
	List.iter print_endline (Deck.toStringList (Deck.newDeck ()));
	print_endline "";
	let toto = Deck.newDeck () in
	List.iter print_endline (Deck.toStringListVerbose toto);
	print_endline "";
	print_pair (Deck.drawCard toto)
