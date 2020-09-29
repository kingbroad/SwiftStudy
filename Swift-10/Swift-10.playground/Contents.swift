import UIKit

var str = "Hello, playground"

//存储属性
struct Person {
    var name: String?
    let age: Int?
}
var jone = Person(name: "jone", age: 18);
jone.name = "tom"
print(jone)


//计算属性
struct Origin {
    var x = 0.0,y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Origin();
    var size = Size();
    var center: Origin {
        get {
            Origin(x: origin.x + size.width/2.0, y: origin.y + size.height/2.0)
        }
        set {
            origin.x = newValue.x - size.width/2.0;
            origin.y = newValue.y - size.height/2.0;
        }
    }
}

var circle = Rect(origin: Origin(x: 0, y: 0), size: Size(width: 50, height: 50));
print(circle.center)
circle.center = Origin(x: 20, y: 20);
print(circle.center)

//属性观察
struct Animation {
    var name: String {
        willSet {
            if newValue == "jone" {
                print("haha")
            } else {
                print("xixi")
            }
        }
        didSet {
            print(name)
        }
    }
}

var cat = Animation(name: "cat");
cat.name = "cat";

//属性包装
struct CalNum {
    private var number = 0;
    var allCount: Int {
        get {
            number
        }
        set {
            number = min(newValue, 12);
        }
    }
}

//实例方法
class Student {
    var age = 1;
    func increaceAge() {
        self.age+=1;
    }
    func resetAge() {
        self.age = 18;
    }
    class func girlStudent() {
        print("I,m")
    }
}

var student = Student();
student.increaceAge();
student.resetAge();
print(student.age)

//类型方法
Student.girlStudent();


//下标语法
/**
 subscript(index: Int) -> Int {
     get {
       // 返回一个适当的 Int 类型的值
     }
     set(newValue) {
       // 执行适当的赋值操作
     }
 }
 */

