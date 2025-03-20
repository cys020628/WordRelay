import UIKit



print("---------none Empty Array-----------")
let array:[String] = ["Apple","Elsa"]

let 원소 = array[0]
let 원소_first = array.first
let 원소_last = array.last

print("원소0 : \(원소)")
print("원소_first : \(원소_first)")
print("원소_last : \(원소_last)")

print("---------none Empty Array-----------")



let emptyArray: [String] = []
//let 원소0_empty = emptyArray[0]
let 원소_first_empty = emptyArray.first

//print("원소0_empty \(원소0_empty)")
print("원소_first_empty : \(원소_first_empty)")


print("----첫번쨰 단어의 마지막 글자----")

let names:[String] = ["Apple","Elsa"]

// names.first : Apple
// name.last : Elsa

print(names.first?.last)
print(names.last?.first)

print("------ 끝말이 이어지는지 체크 ------")

if names.first?.last == names.last?.first {
    print("끝말이 이어집니다")
}else {
    print("끝말이 이어지지 않습니다.")
}

print("-------모두 소문자로 만들기")

print("첫번쨰 : \(names.first?.last?.lowercased())")
print("두번쩨 : \(names.last?.first?.lowercased())")


if names.first?.last?.lowercased() == names.last?.first?.lowercased() {
    print("끝말이 이어집니다.")
}else {
    print("끝말이 이어지지 않습니다.")
}

