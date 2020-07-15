import UIKit

var str = "Hello, playground"

// TODO: 闭包
var names = ["king","fou","sevent","fired"]
func sorftNames(str1:String, str2:String) -> Bool {
    return str1 > str2
}
names.sort(by: sorftNames)

//从上面可以看出不用闭包的话，代码量还是蛮多的，下面我们用闭包来试试
names.sort { (str1, str2) -> Bool in
    return str1 < str2
}

//闭包还可以更根据上下文推断其类型
names.sort(by: {s1, s2 in return s1>s2})


//可以使用隐式返回
names.sort(by: {s1, s2 in s1 < s2})


//Swift 自动为内联闭包提供了参数名称缩写功能，你可以直接通过 $0，$1，$2 来顺序调用闭包的参数，以此类推。
names.sort(by: { $0 > $1 })

//还可以使用运算符简写
names.sort(by: <)
print(names)

// TODO: 尾随闭包
func joinUsTeam(yourname: () -> String) {
    //函数体部分
    print("welcome \(yourname()) join us")
}

joinUsTeam(yourname: {
    //闭包主体
    return "king"
})

joinUsTeam() {
    return "jone"
}

// TODO: 逃逸闭包
var completionHandlers: [() -> Void] = []
//someFunctionWithEscapingClosure函数有一个闭包参数completionHandler，completionHandler添加到外部的数组中，如果闭包参数不加@escaping，会报错
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

// TODO: 自动闭包
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.remove(at: 0) }
let customerProvider2 = { () -> String in
    customersInLine.append("Chris")
    return "Chris"
}

print(customersInLine.count)

print("Now serving \(customerProvider())!")
print(customersInLine.count)

print("Now add \(customerProvider2())!")
print(customersInLine.count)

//定义一个函数参数自动闭包
func joinUsAuto (yourname customerProvider: @autoclosure () -> String) {
    print(customerProvider())
}

joinUsAuto(yourname: customersInLine.remove(at: 0))

//自动闭包和逃逸闭包同时使用需要用 @autoclosure 和 @escaping
//过度使用自动闭包，会导致你的代码很难理解
