"  conditional expression 0:false {+-1}: true

if 1
    echo v:true
endif

echo empty('1')

" for
" vimL 没有像C语言for(;;)的3段式for语句
let list = [0, 1, 2, 3]
for item in list
    echo item
endfor

echo 'ergodic k-v'
let dict = {'a':1, 'b':2, 'c':3,}
for [k, v] in items(dict)
    echo k . '=>' . v
endfor

echo 'ergodic keys'
for k in keys(dict)
    echo k . '=>' . dict[k]
endfor

echo 'ergodic values'
for v in values(dict)
    echo v
endfor

echo 'sort keys'
for k in sort(keys(dict))
    echo k . '=>' . dict[k]
endfor

" range() create a list with numbers
let nls = range(5)
echo type(nls)
echo nls
for i in nls
    echo i
endfor

" while
echo 'while'
let i = 0
while i < 5
    echo i
    let i += 1
endwhile
" infinite loop
let isS = v:false
if isS 
    while v:true
    endwhile
endif

" break、continue 和 C 语言相同

" for 语句 range() 的生命周期
echo 'for 申明变量的生命周期'
unlet! i
for i in range(5)
    echo i
endfor
echo 'for done: '. i

unlet! i
for i in []
    echo i
endfor
" 空列表不会给 i 赋值
" E121: Undefined variable: i
" echo 'for done: '. i
