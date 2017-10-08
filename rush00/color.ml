type t = Some of char | None

let toString = function
	| Some c -> String.make 1 c
	| None -> "-"

let newColor c = Some c
