let () =
    let joke_array = Array.make 6 "" in
    Array.set joke_array 0 "Comment appelle t'on une fleur qui prend sa graine a moitier ?\n\nUne Migraine";
    Array.set joke_array 1 "J'ai cru que Mozart etait mort mais mozzarela";
    Array.set joke_array 2 "Quelle sont les lettres qui sont toujours au toilettes ?\n\nCe sont les lettres WC et PQ";
    Array.set joke_array 3 "Ce matin, j'ai voulu faire une blague sur le Super U mais elle a pas Supermarche !";
    Array.set joke_array 4 "Banane commence par un B mais normalement ca commence par un N\n\n(Normalement commence par un N)";
    Array.set joke_array 5 "Que se fait un Schtroumf quand il tombe ?\n\nUn bleu";
    Random.self_init();
    print_endline (Array.get joke_array (Random.int 6))
