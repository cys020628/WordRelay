import UIKit

var 현재온도 = 35

if 현재온도 < 0 {
    print("너무 추워요")
}

if 현재온도 > 30 {
    print("너무 더워요")
}

if 현재온도 <= 30 && 현재온도 >= 0 {
    print("온도 좋아요")
}

if 현재온도 < 0 || 현재온도 > 30 {
    print("외출 싫어요")
}

print( "--------------------" )

현재온도 = 40


// else if

if 현재온도 < 0 {
    print("겨울이다")
}else if 현재온도 <= 30 {
    print( "봄, 여름, 가을 중 하나")
}else {
    print( "여름이다")
}


