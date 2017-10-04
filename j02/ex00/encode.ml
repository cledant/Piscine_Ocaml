let incr x = match x with (n, m) -> (n + 1, m)

let get_first_elmt = function
    | x::_      -> x
    | []        -> failwith "Empty list"

let encode lst =
    if lst = [] then []
    else
    let rec loop lst tuple lst_tuple = match lst with
    | [] -> lst_tuple
    | hd :: tl -> if ((get_first_elmt hd) <> (get_first_elmt tl))
                                then (loop tl (incr tuple) lst_tuple)
                                else (loop tl (0, (get_first_elmt tl)) (lst_tuple @ [tuple]))
    in
    loop lst (0, (get_first_elmt lst)) []
