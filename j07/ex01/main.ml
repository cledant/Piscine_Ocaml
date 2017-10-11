let () =
	let toto = new People.people "Toto" in
    let totor = new Doctor.doctor "DR Totor" toto 50 in
    print_endline (totor#to_string);
    totor#talk;
    totor#use_sonic_screwdriver;
    totor#travel_in_time 2000 2100;
    print_endline (totor#to_string)
