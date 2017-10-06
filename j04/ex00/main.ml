let print_lst lst =
    print_endline (Color.toString lst)

let print_lst_verbose lst =
    print_endline (Color.toStringVerbose lst)

let () =
    List.iter print_lst Color.all;
    print_endline "";
    List.iter print_lst_verbose Color.all
