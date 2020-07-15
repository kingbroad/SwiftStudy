import UIKit

var str = "Hello, playground"

// TODO: 枚举

//创建一个枚举
enum frameRect {
    case x
    case y
    case width
    case height
}

//多个枚举可以写成一行，用逗号隔开
enum frameRectTwo {
    case x,y,width,height
}

var size = frameRect.x
//在swift中可以自动推断其类型
size = .width
//枚举可以使用swicth语句来匹配
switch size {
case .x:
    print("X")
case .y:
    print("Y")
case .width:
    print("width")
case .height:
    print("height")
}

// TODO: 得到枚举内成员的集合
enum name:CaseIterable {
    case jone,king,bob
}

let names = name.allCases

print(names.first!)

// TODO: 关联值
enum person {
    case name(String,String)
    case size(Int,Float,Float)
}

var king = person.name("king", "K")
king = .size(18, 190, 110)
print(king)

// TODO: 递归枚举 indirect
enum caluNum {
    case num(Int)
    indirect case addNum(caluNum,caluNum)
    indirect case reduceNum(caluNum,caluNum)
}

//所有枚举成员可递归
indirect enum caluAllNum {
    case num(Int)
    case addNum(caluNum,caluNum)
    case reduceNum(caluNum,caluNum)
}

let one = caluNum.num(1)
let two = caluNum.num(2)
let sum = caluNum.addNum(one, two)
let reduce = caluNum.reduceNum(two, caluNum.num(1))

func pritCaluNum(_ printNum:caluNum) -> Int {
    switch sum {
    case let .num(value):
        return value
    case let .addNum(left, right):
        return pritCaluNum(left) + pritCaluNum(right)
    case let .reduceNum(leftNum, rightNum):
        return pritCaluNum(leftNum) - pritCaluNum(rightNum)
    }
}
print(pritCaluNum(reduce))
