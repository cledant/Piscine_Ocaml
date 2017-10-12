let () =
    let h1 = new Atoms.hydrogen in
    let h2 = new Atoms.hydrogen in
    let o1 = new Atoms.oxygen in
    let c1 = new Atoms.carbon in
    let b1 = new Atoms.boron in
    let cl1 = new Atoms.chlorine in
    let n1 = new Atoms.nitrogen in
    print_endline (h1#to_string);
    print_endline (c1#to_string);
    print_endline (o1#to_string);
    print_endline (n1#to_string);
    print_endline (cl1#to_string);
    print_endline (b1#to_string);
    print_endline (string_of_bool (h1#equal (h2 :> Atoms.atom)));
    print_endline (string_of_bool (o1#equal (h2 :> Atoms.atom)));
    print_endline (string_of_bool (c1#equal (h2 :> Atoms.atom)))

