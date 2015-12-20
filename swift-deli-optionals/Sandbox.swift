//  Sandbox.swift

import Foundation

/**
 
 * Write your functions here!
 
 */
 // "The line is:\n1. Victoria\n2. Danny\n3. Lyel"

func stringForDeliLine(deliLine:[String]?)->String?
{
    guard let line = deliLine else {print("The line is currently empty."); return nil}
    if line.count == 0             {print("The line is currently empty."); return nil}
    
    var resultString: String = "The line is:"

    for var i = 0; i < line.count; i++ {
        let j = i+1
        resultString += "\n\(j). \(line[i])"
    }
    
    return [resultString:resultString][resultString]
}

func addName(name:String, toDeliLine:[String]?)->[String] {
    guard let line = toDeliLine else {return [name]}
    
    return line + [name]
}

func serveNextCustomerInDeliLine(deliLine:[String]?)->[String]? {
    guard let line = deliLine else {print("The line is currently empty."); return nil}
    if line.count == 0             {print("The line is currently empty."); return nil}
   
    var mutableLine = line
    let nextCustomer = mutableLine.removeFirst()
    print("It is your turn, \(nextCustomer).")
    
    let optionalLine: [String]? = mutableLine
    
    return optionalLine
}
