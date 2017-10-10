let my_comp (a: string) (b : string) =
    if (a > b) then 1
    else if (a = b) then 0
    else -1

module StringSet =
    Set.Make
    (
        struct
            let compare = my_comp 
            type t = string
        end
    )

let () =
    let set = List.fold_right StringSet.add [ "foo"; "bar"; "baz"; "qux" ] StringSet.empty in
    StringSet.iter print_endline set;
    print_endline (StringSet.fold ( ^ ) set "")
