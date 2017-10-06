let print_lst lst =
    print_endline (Value.toString lst)

let print_lst_verbose lst =
    print_endline (Value.toStringVerbose lst)

let () =
    List.iter print_lst Value.all;
    print_endline "";
    List.iter print_lst_verbose Value.all;
    print_endline "";
    let card1 = Value.T10 in
    print_endline (Value.toString (Value.next card1));
    print_endline (Value.toString (Value.previous card1))
(*  let card2 = Value.As in
    print_endline (Value.toString (Value.next card2))*)
(*  let card3 = Value.T2 in
    print_endline (Value.toString (Value.previous card3))*)
