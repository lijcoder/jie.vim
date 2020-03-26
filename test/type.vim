" list
let list = [0, 1, 2, 3]
echo list
call add(list, 4)
call add(list, 5)
echo list
echo 'list[1]: ' . list[1]
" error index out
echo 'list[9]: ' . list[9]
echo len(list)
call remove(list, -1)
call remove(list, 1)
echo list

" table
let dict = {'a':1, 'b':2, 'c':3,}
echo dict
echo dict['b']
echo dict.c
let dict.c = 6
let dict['b'] = 4
echo dict['b']
echo dict.c
echo 'get() b: ' . get(dict, 'b', 'f')
" error key not exist
" echo dict.d 

" unlet、unlet!
let list = [0, 1, 2, 3]
unlet list[2] | echo list

let dict = {'a':1, 'b':2, 'c':3,}
unlet dict.b | echo dict

" E716: Key not present in Dictionary: f
" unlet dict.f

" type
echo type(list)
echo type(dict)
if type(list) == v:t_list
    echo 'list is v:t_list'
endif
if type(list) == 3
    echo 'list is 3'
endif
if type(list) == type([])
    echo 'list is []'
endif
