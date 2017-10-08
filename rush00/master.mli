type t

val newMaster		: Color.t -> Color.t -> t
val play			: t -> int -> int -> int -> t (* lui, grid nbr, case nbr, player nbr. renvoi lui *)
val isValidMove		: t -> int -> int -> bool
val printMaster		: t -> unit
val checkVictory	: t -> bool
val toStringPlayer  : t -> int -> string
