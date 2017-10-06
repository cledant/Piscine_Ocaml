let print_lst lst =
    print_endline (Card.toString lst)

let print_lst_verbose lst =
    print_endline (Card.toStringVerbose lst)

let () =
    List.iter print_lst Card.allSpades;
    print_endline "";
    List.iter print_lst Card.allHearts;
    print_endline "";
    List.iter print_lst Card.allDiamonds;
    print_endline "";
    List.iter print_lst Card.allClubs;
    print_endline "";
    List.iter print_lst_verbose Card.all;
    print_endline "";
    print_endline (Card.toString (Card.best (Card.all)));
    print_endline "";
    let card1 = Card.newCard Card.Value.T8 Card.Color.Spade in
    let card2 = Card.newCard Card.Value.Jack Card.Color.Heart in
    let card3 = Card.newCard Card.Value.Jack Card.Color.Club in
    print_endline (string_of_bool (Card.isSpade card1));
    print_endline (string_of_bool (Card.isHeart card1));
    print_endline "";
    print_endline (Card.toString (Card.min card1 card2));
    print_endline "";
    print_endline(Card.Color.toStringVerbose (Card.getColor card2));
    print_endline(Card.Value.toStringVerbose (Card.getValue card2));
    print_endline "";
    print_endline (string_of_int (Card.compare card2 card3));
    print_endline (string_of_int (Card.compare card1 card2));
    print_endline (string_of_int (Card.compare card2 card1));
