let () =
(*    let print_doc (doc:Doctor.doctor) = print_endline (doc#to_string) in
    let doctor_army [] = new Army.army in
    List.iter print_doc (((doctor_army#add (new doctor "doc1" "side1" 50))#add (new doctor "doc2""side2" 30))#add (new doctor "doc3" "side3" 20))#add (new doctor "doc4" "side4" 60)
*)
    let print_people (ppl:people) = print_endline (ppl#to_string) in
    let aaa = new people "master toto" in
    let ppl_army [aaa] = new army in
    List.iter print_people ((((ppl_army#add (new people "toto1"))#add (new people "toto2"))#add (new people "toto3"))#add (new people "toto4"))
