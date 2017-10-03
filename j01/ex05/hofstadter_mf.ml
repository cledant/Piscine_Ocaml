let rec hfs_m n =
    if (n < 0) then (-1)
    else if (n = 0) then 0
    else (n - (hfs_f (hfs_m (n - 1))))

and hfs_f n =
    if (n < 0) then (-1)
    else if (n = 0) then 1
    else (n - (hfs_m (hfs_f (n - 1))))

let () =
    print_int (hfs_f (-42));
    print_endline "";
    print_int (hfs_m (-42));
    print_endline "";
    print_endline "";
    print_int (hfs_f 0);
    print_endline "";
    print_int (hfs_m 0);
    print_endline "";
    print_endline "";
    print_int (hfs_f 4);
    print_endline "";
    print_int (hfs_m 4);
    print_endline "";
    print_endline "";
    print_int (hfs_f 5);
    print_endline "";
    print_int (hfs_m 5);
    print_endline "";
    print_endline "";
    print_int (hfs_f 6);
    print_endline "";
    print_int (hfs_m 6);
    print_endline "";
    print_endline "";
    print_int (hfs_f 7);
    print_endline "";
    print_int (hfs_m 7);
    print_endline "";
    print_endline "";
    print_int (hfs_f 8);
    print_endline "";
    print_int (hfs_m 8);
    print_endline "";
    print_endline "";
    print_int (hfs_f 9);
    print_endline "";
    print_int (hfs_m 9);
    print_endline ""
