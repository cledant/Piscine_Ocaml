let () =
	let ppl_army = (((((new Army.army)#add (new People.people "toto1"))#add (new People.people "toto2"))#add (new People.people "toto3"))#add (new People.people "toto4")) in
	ppl_army#print;
	(ppl_army#delete)#print;
	let side1 = new People.people "titi" in
	let side2 = new People.people "tutu" in
	let doc_army = (((new Army.army)#add (new Doctor.doctor "doc1" side1 50))#add (new Doctor.doctor "doc2" side2 40)) in
	doc_army#print;
	let dalek_army = (((new Army.army)#add (new Dalek.dalek))#add (new Dalek.dalek)) in
	dalek_army#print
