module Color =
struct

    type t = Spade | Heart | Diamond | Club


    let all =
        (((([] @ [Spade]) @ [Heart]) @ [Diamond]) @ [Club])


    let toString color = match color with
        | Spade         -> "S"
        | Heart         -> "H"
        | Diamond       -> "D"
        | Club          -> "C"

    let toStringVerbose color = match color with
        | Spade         -> "Spade"
        | Heart         -> "Heart"
        | Diamond       -> "Diamond"
        | Club          -> "Club"

end

module Value =
struct

    type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As

    let all =
        ((((((((((((([] @ [T2]) @ [T3]) @ [T4]) @ [T5]) @ [T6]) @ [T7]) @ [T8]) @ [T9]) @ [T10]) @ [Jack]) @ [Queen]) @ [King]) @ [As])

    let toInt card = match card with
        | T2            -> 1
        | T3            -> 2
        | T4            -> 3
        | T5            -> 4
        | T6            -> 5
        | T7            -> 6
        | T8            -> 7
        | T9            -> 8
        | T10           -> 9
        | Jack          -> 10
        | Queen         -> 11
        | King          -> 12
        | As            -> 13

    let toString card = match card with
        | T2            -> "2"
        | T3            -> "3"
        | T4            -> "4"
        | T5            -> "5"
        | T6            -> "6"
        | T7            -> "7"
        | T8            -> "8"
        | T9            -> "9"
        | T10           -> "10"
        | Jack          -> "J"
        | Queen         -> "Q"
        | King          -> "K"
        | As            -> "A"

    let toStringVerbose card = match card with
        | T2            -> "2"
        | T3            -> "3"
        | T4            -> "4"
        | T5            -> "5"
        | T6            -> "6"
        | T7            -> "7"
        | T8            -> "8"
        | T9            -> "9"
        | T10           -> "10"
        | Jack          -> "Jack"
        | Queen         -> "Queen"
        | King          -> "King"
        | As            -> "As"

    let next card = match card with
        | T2            -> T3
        | T3            -> T4
        | T4            -> T5
        | T5            -> T6
        | T6            -> T7
        | T7            -> T8
        | T8            -> T9
        | T9            -> T10
        | T10           -> Jack
        | Jack          -> Queen
        | Queen         -> King
        | King          -> As
        | As            -> (invalid_arg "Invalid argument")

    let previous card = match card with
        | T2            -> (invalid_arg "Invalid argument")
        | T3            -> T2
        | T4            -> T3
        | T5            -> T4
        | T6            -> T5
        | T7            -> T6
        | T8            -> T7
        | T9            -> T8
        | T10           -> T9
        | Jack          -> T10
        | Queen         -> Jack
        | King          -> Queen
        | As            -> King
end

module Card =
struct

type t = (Value.t * Color.t)

let newCard value color =
    (value, color)

let allSpades =
    let color = Color.Spade in
    ((((((((((((([] @ [(Value.T2, color)]) @ [(Value.T3, color)]) @ [(Value.T4, color)]) @ [(Value.T5, color)]) @ [(Value.T6, color)]) @ [(Value.T7, color)]) @ [(Value.T8, color)]) @ [(Value.T9, color)]) @ [(Value.T10, color)]) @ [(Value.Jack, color)]) @  [(Value.Queen, color)]) @ [(Value.King, color)]) @  [(Value.As, color)])

let allHearts =
    let color = Color.Heart in
    ((((((((((((([] @ [(Value.T2, color)]) @ [(Value.T3, color)]) @ [(Value.T4, color)]) @ [(Value.T5, color)]) @ [(Value.T6, color)]) @ [(Value.T7, color)]) @ [(Value.T8, color)]) @ [(Value.T9, color)]) @ [(Value.T10, color)]) @ [(Value.Jack, color)]) @  [(Value.Queen, color)]) @ [(Value.King, color)]) @  [(Value.As, color)])

let allDiamonds =
    let color = Color.Diamond in
    ((((((((((((([] @ [(Value.T2, color)]) @ [(Value.T3, color)]) @ [(Value.T4, color)]) @ [(Value.T5, color)]) @ [(Value.T6, color)]) @ [(Value.T7, color)]) @ [(Value.T8, color)]) @ [(Value.T9, color)]) @ [(Value.T10, color)]) @ [(Value.Jack, color)]) @  [(Value.Queen, color)]) @ [(Value.King, color)]) @  [(Value.As, color)])

let allClubs =
    let color = Color.Club in
    ((((((((((((([] @ [(Value.T2, color)]) @ [(Value.T3, color)]) @ [(Value.T4, color)]) @ [(Value.T5, color)]) @ [(Value.T6, color)]) @ [(Value.T7, color)]) @ [(Value.T8, color)]) @ [(Value.T9, color)]) @ [(Value.T10, color)]) @ [(Value.Jack, color)]) @  [(Value.Queen, color)]) @ [(Value.King, color)]) @  [(Value.As, color)])

let all =
    (((([] @ allSpades) @ allHearts) @ allDiamonds) @ allClubs)

let getValue card = match card with
    | (value, color)        -> value

let getColor card = match card with
    | (value, color)        -> color

let toString card = match card with
    | (value, color)        -> (Value.toString value) ^ (Color.toString color)

let toStringVerbose card = match card with
    | (value, color)        -> "Card(" ^ (Value.toStringVerbose value) ^ ", " ^ (Color.toStringVerbose color) ^ ")"

let compare card1 card2 =
    (Value.toInt (getValue card1)) - (Value.toInt (getValue card2))

let max card1 card2 =
    if (getValue(card1) >= getValue(card2)) then card1
    else card2

let min card1 card2 =
    if (getValue(card1) <= getValue(card2)) then card1
    else card2

let best card_list = match card_list with
    | []                  -> invalid_arg("Invalid argument")
    | hd :: tl            -> List.fold_left max hd tl

let isOf card color  = match card with
    | (c_val, c_color)    ->    if (color = c_color) then true
                                else false

let isSpade card =
    isOf card Color.Spade

let isHeart card =
    isOf card Color.Heart

let isDiamond card =
    isOf card Color.Diamond

let isClub card =
    isOf card Color.Club

end
