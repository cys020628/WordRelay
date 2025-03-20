import UIKit

//print("안녕하세요")
//print("안녕하세요")
//print("안녕하세요")
//print("안녕하세요")
//print("안녕하세요")
//print("안녕하세요")



// 1 이상 5 이하
for i in 1...5 {
    print("\(i) 이상 5 이하")
}

print("\n-------------------------\n")

// 1 이상 5 미만
for i in 1 ..< 5 {
    print(i," \(i) 이상 5 미만")
}

print("\n-------------------------\n")

for i in 1...3 {
    print(i)
}

print("\n-------------------------\n")

for i in 1...3 {
    print(i * 10)
}

print("\n-------------------------\n")

for i in 1...9 {
    for j in 1...9 {
        print("\(i) * \(j) = \(i * j)")
    }
}

print("\n-------------------------\n")

let 게임들 = ["GTA6","오버워치","리그오브레전드"]

for i in 0 ... 2 {
    print("\(i + 1)번째 게임 : \(게임들[i])")
}

print("\n-------------------------\n")

for i in 게임들 {
    print(i)
}

print("\n-------------------------\n")

게임들.forEach {
    print("없을 경우 : \($0)")
    
}

print("\n-------------------------\n")


