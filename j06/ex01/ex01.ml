module StringHashtbl =
    Hashtbl.Make
    (
        struct
            type t = string
            let equal i j = i=j
            let hash i = 
                begin
                    let rec loop str cur_it max_it acc =
                        if (cur_it >= max_it) then acc
                        else loop str (cur_it + 1) max_it (
                            (((acc lsr 1) + ((acc land 1) lsl 15)) + int_of_char(String.get str cur_it)) land 0xFFFFFFFF)
                    in
                    loop i 0 (String.length i) 0
                end
        end      
    )

let () =
    let ht = StringHashtbl.create 5 in
    let values = [ "Hello"; "world"; "42"; "Ocaml"; "H" ] in
    let pairs = List.map (fun s -> (s, String.length s)) values in
    List.iter (fun (k,v) -> StringHashtbl.add ht k v) pairs;
    StringHashtbl.iter (fun k v -> Printf.printf "k = \"%s\", v = %d\n" k v) ht
