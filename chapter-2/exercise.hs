check_evaluation x1 x2 x3 | x1 == x2 && x1 == x3 = 3
                          | (x1 == x2 && x1 /= x3) || (x1 /= x2 && x1 == x3) = 2
                          | otherwise = 0

check_media x1 x2 x3 = do 
    let media = media_3 x1 x2 x3
    let result = (is_bigger_then_media media x1) + (is_bigger_then_media media x2) + (is_bigger_then_media media x3)
    result

media_3 x1 x2 x3 = sum[x1, x2, x3] / 3 

is_bigger_then_media media x | x > media = 1
                             | otherwise = 0

potential_2 x = x*x

potential_4 x = potential_2 (potential_2 x)
