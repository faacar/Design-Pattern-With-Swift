//The Liskov Substitution Principle
//Subtypes must be substitutable for their base types.

import Foundation

protocol Shape {
    func area() -> Int
}

class Square: Shape {

    internal var size: Int
    
    init(size: Int) {
        self.size = size
    }
    
    func area() -> Int {
        return size * size
    }

    func setSize(size: Int) {
        self.size = size

    }
}

class Rectangle: Shape {
    internal var width: Int
    internal var height: Int

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }

    func area() -> Int {
        return width * height
    }

    func setWidth(width: Int) {
        self.width = width
    }

    func setHeight(height: Int) {
        self.height = height
    }
}

func squareArea(_ s: Square) -> Int {
    return s.size * s.size
}

func rectangleArea(_ r: Rectangle) -> Int {
    return r.width * r.height
}

func main() {
    let sq = Square(size: 4)
    print("\(sq) has area \(squareArea(sq))")

    let rc = Rectangle(width: 4, height: 5)
    print("\(rc) has area \(rectangleArea(rc))")
}

main()








