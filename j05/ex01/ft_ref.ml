type 'a ft_ref = { mutable content : 'a;}

let return value =
    {content = value;}

let get my_ref =
    my_ref.content

let set my_ref value =
    my_ref.content <- value

let bind my_ref (fct : 'a -> 'b ft_ref) =
    fct my_ref
