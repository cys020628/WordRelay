import UIKit

let 학생1 =  "이스위프트"
let 학생2 = "감자바"
let 학생3 = "박자바스크립트"
let 학생4 = "최파이썬"

var 학생들 = ["이스위프트", "감자바", "박자바스크립트", "최파이썬"]
let 성적들 = [1,2,3,4,5]


// 조회
print("학생들 전체 출력 : ",학생들)

let 학생_1 = 학생들[1]
print("학생_1",학생_1)

// 수정
학생들[0] = "이Swift"
print("이스위프트만 수정",학생들)

학생들 = ["이Swift", "김Java", "박Javascript","최 Python"]
print("학생들 전체 수정",학생들)

// 생성
학생들.append("정C")
print("배열에 원소 추가",학생들)

학생들.insert("원 Object-C", at: 0)
print("배열에 원소 추가",학생들)
// 삭제

학생들.remove(at: 0)
print("배열의 원소 삭제",학생들)

학생들.removeAll()
print("배열의 원소 삭제",학생들)

// 기타기능들
print("학생들 갯수",학생들.count)
print("학생들이 비어있는지",학생들.isEmpty)

var numbers: [Int] = []
numbers = [1,3,2,5,4]
print("역순전",numbers)
numbers.reverse()
print("원소 뒤집기",numbers)
numbers.sort()
print("순서대로 정렬",numbers)
