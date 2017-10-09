let my_sleep () = Unix.sleep 1

let do_sleep nb_sec =
    for i = 0 to (nb_sec - 1) do
        my_sleep ()
    done

let () = 
    if Array.length (Sys.argv) = 2 then
        begin
            let sec =
                try int_of_string(Array.get Sys.argv 1) with
                    | _         -> begin
                                        exit 1
                                   end
            in
            do_sleep sec
        end
