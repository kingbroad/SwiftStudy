import UIKit

var str = "Hello, playground"

// TODO: 函数
//定义一个吃的函数
func eat() -> Void {
    print("eat")
}
//调用吃函数
eat();

//无参数函数
//同eat函数

//多参数函数
func person(name:String, age:Int, weight:Float) -> String {
    return "my name is " + name + ",my age is " + String(age) + ",my weight is " + String(weight)
}

print(person(name: "king", age: 18, weight: 90))

//无返回值函数,严格的说是有返回值的，返回值是void
func getYouLike(like:String) {
    print("I like \(like)")
}
getYouLike(like: "apple")

//多重返回值函数
func calculateYourAge(weight: Int, height: Int) -> (age:String, name:String) {
    if weight == 0 {
        return ("18", "king")
    } else {
        return ("20", "jone")
    }
}

let person = calculateYourAge(weight: 12, height: 12)

print(person)

//忽略参数,利用 _ ,  默认参数值
func personForMen(_ name:String, age:Int, weight:Float = 90.0) -> String {
    return "my name is " + name + ",my age is " + String(age) + ",my weight is " + String(weight)
}
personForMen("king", age: 18)


// TODO: 函数类型作为参数
func mathYourAge(_ calculateYourAgeName:(Int,Int)->(age:String, name:String), a:Int, b:Int) {
    print(calculateYourAgeName(a, b))
}

mathYourAge(calculateYourAge, a: 10, b: 10)

// TODO: 函数作为返回值
func exchangeName(name:String) -> Bool {
    if name == "king" {
        return true
    }
    return false
}
func mathYourName(name:String) -> (String) -> Bool {
    return exchangeName(name:)
}

let change = mathYourName(name: "king")
change("king")


