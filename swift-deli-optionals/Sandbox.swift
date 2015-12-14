//  Sandbox.swift

import Foundation

/**

*  Write your functions here.

*/

func stringForDeliLine(deliLine: [String]?) -> String? {
    
    if let deliLine = deliLine {
        if deliLine.count == 0 {
            print("The line is currently empty.")
            return nil
        }
        
        var result = "The line is:"
        for var i = 0; i < deliLine.count; i++ {
            let numberInLine = i + 1
            result += "\n\(numberInLine). \(deliLine[i])"
        }
        print(result)
        return result
    } else {
        print("The line is currently empty.")
        return nil
    }
}

func addName(name: String, toDeliLine deliLine: [String]?) -> [String] {
    
    if let deliLine = deliLine {
        deliLine.append(name)
        print("Welcome \(name)! You are number \(deliLine.count) in line.")
        return deliLine
    } else {
        return [name]
    }
}

func serveNextCustomerInDeliLine(deliLine: [String]?) -> [String]? {
    
    if let deliLine = deliLine {
        if deliLine.count > 0 {
            let nextCustomer = deliLine.removeFirst()
            print("Now serving \(nextCustomer)")
            return deliLine
        } else {
            print("The line is currently empty.")
            return nil
        }
    } else {
        print("The line is currently empty.")
        return nil
    }
}

