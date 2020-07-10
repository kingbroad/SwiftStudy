import UIKit
/*************************Array***********************/
// TODO: 创建一个空数组
var intArray:Array = [Int]()//创建一个指定类型为int的array
intArray.append(3)//数组添加元素
print(intArray)
intArray = []//虽然intArray为空了，但是元素类型还是Int

// TODO: 创建一个重复数据的数组
var threeArray = Array.init(repeating: 3, count: 3)
print(threeArray)
var fourArray = Array.init(repeating: 4, count: 3)
var fiveArray = threeArray + fourArray//🌟注意：两个数组相加合并，数组内的元素类型必须一致

// TODO: 通过自变量创建数组
var nameList:[String] = ["king","jone"]
print(nameList)

// TODO: 创建数组内元素类型不确定数组
var unkownList = [Any]()
unkownList.append(1)
unkownList.append("king")
unkownList.append(3)
print(unkownList)

// TODO: 获取数组中的元素
//下标获取
print(unkownList[1])
unkownList.first

//数组插值
unkownList.insert("kone", at: 0)

// TODO: 数组遍历
for obj in unkownList {
    print("forIN\(obj)")
}

unkownList.forEach { (obj) in
    print("forEach\(obj)")
}

for (index,value) in unkownList.enumerated() {
    print("forIN\(value)ForIndex\(index)")
}

/*************************Set***********************/
//创建一个空的Set
var letters = Set<Character>()
letters.insert("a")//通过insert方法插入元素
print(letters)

//通过自变量创建Set
var nameSet:Set<String> = ["king","jone","birth"]

//访问Set元素
print("I have \(nameSet.count) name.")

if nameSet.isEmpty {
    print("I have none name")
} else {
    print("My name is \(nameSet.first!)")
}

if nameSet.contains("jone") {
    print("I have jone")
} else {
    print("I don't have jone")
}

//遍历一个集合
for obj in nameSet {
    print(obj)
}

//🌟因为set是无序的，要想set有序遍历，则需要使用sorf()
for obj in nameSet.sorted() {
    print(obj)
}

// TODO: 集合的操作
var firstSet:Set = [1,3,5,7,9]
let secondSet:Set = [2,3,4,5,6]
let threeSet:Set = [0,6,7,8,9]
// 使用 intersection(_:) 方法根据两个集合的交集创建一个新的集合。
firstSet.intersection(secondSet)
// 使用 symmetricDifference(_:) 方法根据两个集合不相交的值创建一个新的集合。
firstSet.symmetricDifference(threeSet)
// 使用 union(_:) 方法根据两个集合的所有值创建一个新的集合。
firstSet.union(secondSet)
// 使用 subtracting(_:) 方法根据不在另一个集合中的值创建一个新的集合。
firstSet.subtract(threeSet)

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

//使用“是否相等”运算符（==）来判断两个集合包含的值是否全部相同。
if houseAnimals == farmAnimals {
    print("true")
} else {
    print("false")
}

//使用 isSubset(of:) 方法来判断一个集合中的所有值是否也被包含在另外一个集合中。
if houseAnimals.isSubset(of: farmAnimals) {
    print("true")
} else {
    print("false")
}

//使用 isSuperset(of:) 方法来判断一个集合是否包含另一个集合中所有的值。
if farmAnimals.isSuperset(of: cityAnimals) {
    print("true")
} else {
    print("false")
}

//使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
if houseAnimals.isStrictSubset(of: farmAnimals) {
    print("true")
} else {
    print("false")
}

if farmAnimals.isSuperset(of: cityAnimals) {
    print("true")
} else {
    print("false")
}

//使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值（是否没有交集）。
if houseAnimals.isDisjoint(with: cityAnimals) {
    print("true")
} else {
    print("false")
}

/*************************Dictionary***********************/
//创建一个空的Dictionary
var emptyDic = [Int : String]()
emptyDic[16] = "king"//设置一个key为16，value为king插入dic中
emptyDic = [:]
print(emptyDic)

//通过字面量的方式创建Dictionary
var nameDic = ["name":"king","age":"18","birth":"20200809"]

