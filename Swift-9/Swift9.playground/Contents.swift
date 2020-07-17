import UIKit

var str = "Hello, playground"

// TODO: 定义一个结构体 和 类
//定义类和结构体的时候，名称遵循UpperCamelCase规则
struct Man {
    var name = "king"
}

class Woman {
    var name = "jone"
}

//初始化结构体和类的实例
let 🐶 = Man()
let 🐱 = Woman()

// TODO: 结构体和类的构造过程
struct person {
    var name:String?
    init() {
        name = "king"
    }
}

print("my name is \(person.init().name!)")

// TODO: 自定义构造器
class Student {
    var name:String?
    var classroom:String?
    let studentName:String
    
    init(studentInfo info:String,classInfo classFo:String) {
        self.name = info
        self.classroom = classFo
        self.studentName = info
    }
    
    init(_ info:String, _ classInfo:String) {
        self.name = info
        self.classroom = classInfo
        self.studentName = info
    }
    
    init(_ nameinfo:String) {
        self.studentName = nameinfo
    }
    
    func printStudentName() {
        print(self.studentName)
    }
}

let joneStudent = Student(studentInfo: "jone", classInfo: "6年级1班")
print("my name is "+joneStudent.name!+",I sit at "+joneStudent.classroom!)

//形参命名和实参标签
let kingStudent = Student("king", "6年级2班")
print("my name is "+kingStudent.name!+",I sit at "+kingStudent.classroom!)

//构造过程中常量属性的赋值
let bobStudent = Student("bob")
bobStudent.printStudentName()

// TODO: 值类型的构造器代理
//自定义Rect
struct Size {
    var width = 0.0,height = 0.0
}
struct Point {
    var x = 0.0,y = 0.0
}
struct Rect {
    var point = Point();
    var size = Size();
    init() {}
    init(origin:Point,size:Size) {
        self.point = origin
        self.size = size
    }
}

// TODO: 类的继承和构造过程
class Car {
    init(name:String) {
        print("my car name is \(name)")
    }
}

class BMCar:Car {
    override init(name: String) {
        super.init(name: name)
    }
}
BMCar(name: "BM")

//指定构造器和便利构造器
class Food {
    var foodName:String?
    //指定构造器
    init(name:String) {
        self.foodName = name
    }
    //便利构造器
    convenience init() {
        self.init(name: "noName")
    }
}

let handFood = Food(name: "hand")
print(handFood.foodName!)

let appleFood = Food.init()
print(appleFood.foodName!)

//创建一个子类继承food
class FruitFood:Food {
    var fruitName:String?
    init(firuit:String,name:String) {
        self.fruitName = firuit
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(firuit:"apple",name:"firuit");
    }
}

let appleFruit = FruitFood(firuit: "apple", name: "no")
print(appleFruit.foodName!)
print(appleFruit.fruitName!)

//可失败构造器
class Room {
    let roomSize:String
    init?(size:String) {
        if size.isEmpty {
            return nil
        }
        self.roomSize = size
    }
}
let room = Room(size: "")
print(room?.roomSize ?? "king")

