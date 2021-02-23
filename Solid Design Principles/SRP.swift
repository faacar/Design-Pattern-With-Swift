// Example for single responsibility pattern
// A class should have only one reason to change.

import Foundation

class Calculate {

    func add(num1: Int, num2: Int) -> Double {
        return  Double(num1 + num2)
    }

    func sub(num1: Int, num2: Int) -> Double {
        return  Double(num1) - Double(num2)
    }

    func multip(num1: Int, num2: Int) -> Double {
        return  Double(num1) * Double(num2)
    }

    func div(num1: Int, num2: Int) -> Double {
        return  Double(num1) / Double(num2)
    }

}

class Network {
    func uploadSolutionsImage() {
        print("Solutions uploaded")
    }
}

func main() {
    var result: Double = 0
    let calculate = Calculate()
    let network = Network()

    result = calculate.div(num1: 2, num2: 5)
    print(result)
    network.uploadSolutionsImage()
}



main()