import UIKit

/** 数据类型  */
let a:Int = 8//整型
let b:String = "king"//字符型
let c:Bool = true//布尔型
let d:Float = 0.11//浮点型

/** 常量和变量 */

let age = 10

//age = 11 报错 Change 'let' to 'var' to make it mutable ，因为age是常量不允许修改

var name:String = "king"

name = "kingOne"

print(name)

//可以使用unicode字符
let 🐶 = "dog"

print(🐶)

var minValue = UInt8.min

var maxValue = UInt8.max

//元组
let httpError = (404, "Not Found")

let (errorCode, errorMassega) = httpError

print("httpError's errorcode is \(errorCode)")
print("httpError's errormassege is \(errorMassega)")

print("httpError's errorcode is \(httpError.0)")
print("httpError's errormassege is \(httpError.1)")

let httpStatus = (statusCode: 200, description: "OK")

//可选类型
//如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil：
var surveyAnswer: String?
surveyAnswer = "赋值"


