class ['a] army (lst:'a list) =
    object
        val _lst = lst

        method add trooper = new army (_lst @ [trooper])
        method delete = new army (List.tl _lst)
    end
