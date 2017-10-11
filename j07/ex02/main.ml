let () =
    let victim = new People.people "I_will_die" in
    let totor = new Doctor.doctor "DR Totor" victim 50 in
    let tincan = new Dalek.dalek in
    print_endline (tincan#to_string);
    print_endline (victim#to_string);
    tincan#talk;
    tincan#exterminate victim;
    tincan#talk;
    print_endline (tincan#to_string);
    print_endline "The doctor uses his mighty weapon !";
    totor#use_sonic_screwdriver;
    tincan#die
