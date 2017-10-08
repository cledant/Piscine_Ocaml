type t

val newGrid             : t

val toStringN           : int -> t -> string
val isValidMove         : t -> int -> bool
val getValue        	: t -> int -> Color.t
val setValue			: t -> int -> Color.t -> t
val checkVictory        : t -> bool
