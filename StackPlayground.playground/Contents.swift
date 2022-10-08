//Generic Struct
struct Stack<Element> {
    var items = [Element]()

    var count : Int {
        return items.count
    }

    mutating func push(_ item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element? {
        return items.removeLast()
    }
}

var intStack = Stack<Any>()
let elements = [1,2,3,4]
elements.map { element in
    intStack.push(element)
}
print(intStack)

let deletedValue = intStack.pop()
print("deleted value is \(deletedValue ?? 0)")

print(intStack)

var charStack = Stack<Any>()
let data = ["one","four","three","two"]
data.map { element in
    charStack.push(element)
}
print(charStack)

let value = charStack.pop()
print("deleted value is \(value ?? 0)")

print(charStack)

