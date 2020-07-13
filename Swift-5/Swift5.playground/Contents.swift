import UIKit

var str = "Hello, playground"


// TODO: For-in 循环

//遍历数组
var nameArray = [String]()
nameArray = ["king","jone","kitty","bob","rob"]
for obj in nameArray {
    print(obj)
}
for (index,obj) in nameArray.enumerated() {
    print("my name is \(obj), sit at \(index)")
}

//遍历字典
var nameDic = ["name":"king","age":"100"]
for obj in nameDic {
    print(obj)
}
for obj in nameDic.keys {
    print(obj)
}
for obj in nameDic.values {
    print(obj)
}
for (index,obj) in nameDic.enumerated() {
    print("我有一个对象\(obj.key),在咖啡厅第\(index)位等我😯")
}

//遍历set
var nameSet:Set<String> = ["king","jone","kitty"]
for obj in nameSet {
    print(obj)//kitty、king、jone
    //从打印结果可以看出set是无序的
}
for (index,obj) in nameSet.enumerated() {
    print("my name is \(obj), sit at \(index)")
}

//遍历字符串的字符
var name = "king"
for obj in name {
    print(obj)//k、i、n、g
}

//遍历区间数据
for index in 1...5 {
    print(index)
}
for index in 1..<5 {
    print(index)
}

//从0-10，每新增1，做一件事
for obj in stride(from: 0, to: 10, by: 1) {
    print("do something at \(obj)")
}

// TODO: while 循环

var a = 1;
let b = 3;
while a < b {
    a+=1
    print(a)
}

repeat {
    a-=1
    print(a)
} while a>=b

// TODO: if条件语句

if a < b {
    print("maxvalue is \(b)")
}

// TODO: Switch语句
let someCharacter: Character = "z"
switch someCharacter {
case "a": break
case "z":
    print("你好")
case "y": break
default:
    print("hello")
}

switch someCharacter {
case "a","y": break
case "z" :
    print("helloz")
default:
    break
}
