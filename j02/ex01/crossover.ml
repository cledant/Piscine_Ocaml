let is_null l = match l with
        | []    -> true
        | _     -> false

let rec is_in_list x lst = match lst with
        | hd::elmt      -> (x = hd) || (is_in_list x elmt)
        | _             -> false

let next_elmt lst = match lst with
        | []        ->  []
        | lst::tl   ->  tl

let get_first_elmt = function
        | x::_       -> x
        | []         -> failwith "Empty list"

let crossover list1 list2 =
    if is_null list1 then []
    else if is_null list2 then []
    else
        let rec loop list1 list2 ret_list =
            if is_null list1 then ret_list
            else
                if is_in_list (get_first_elmt list1) list2 then loop (next_elmt list1) list2 (ret_list @[get_first_elmt list1])
                else loop (next_elmt list1) list2 ret_list
        in loop list1 list2 []

let print_int_endl x =
    print_int x;
    print_char '\n'

let () =
    List.iter print_int_endl (crossover [1;10;15;30;10] [10;65;87;30;78;15;10]);
    print_endline "";
    List.iter print_endline (crossover ["titi";"caca";"roro";"toto";"nya"] ["bbb";"ccc";"toto";"ddd";"eee";"nya";"aaa"]);
