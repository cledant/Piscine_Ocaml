let () =
    let toto = new People.people "toto" in
    print_endline (toto#to_string);
    toto#talk;
    toto#die
