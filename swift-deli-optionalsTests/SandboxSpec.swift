//  SandboxSpec.swift

import Quick
import Nimble
@testable import swift_deli_optionals

class SandboxSpec: QuickSpec {
    override func spec() {
        var nilArray: [String]? = nil
        var empty: [String]? = []
        var precollege: [String]? = []
        var ios: [String]? = []
        
        beforeEach {
            nilArray = nil
            empty = []
            precollege = ["Victoria", "Danny", "Lyel"]
            ios = ["Joe", "Tim", "Jim", "Tom"]
        }
        
        describe("stringForDeliLine(_:)") {
            it("should return a string optional containing nil when the argument array is nil") {
                
                expect(stringForDeliLine(nilArray)).to(beNil())
            }
            
            it("should return a string optional containing nil when the argument array is empty") {
                
                expect(stringForDeliLine(empty)).to(beNil())
            }
            
            it("should return a string describing a line with three names") {
                let expected = "The line is:\n1. Victoria\n2. Danny\n3. Lyel"
                
                expect(stringForDeliLine(precollege)).to(match(expected))
            }
            
            it("should return a string describing a line with four names") {
                let expected = "The line is:\n1. Joe\n2. Tim\n3. Jim\n4. Tom"
                
                expect(stringForDeliLine(ios)).to(match(expected))
            }
        }
        
        describe("addNameTo(_:deliLine:)") {
            it("should create a new array with name 'Al' when the deliLine argument is nil") {
                let result = addNameTo("Al", deliLine: empty)
                let expected = ["Al"]
                
                expect(result).to(equal(expected))
            }
            
            it("should create a new array with name 'Zach' when the deliLine argument is nil") {
                let result = addNameTo("Zach", deliLine: empty)
                let expected = ["Zach"]
                
                expect(result).to(equal(expected))
            }
            
            it("should add the name 'Al' to an empty array") {
                let result = addNameTo("Al", deliLine: empty)
                let expected = ["Al"]
                
                expect(result).to(equal(expected))
            }
            
            it("should add the name 'Chris' to an empty array") {
                let result = addNameTo("Chris", deliLine: empty)
                let expected = ["Chris"]
                
                expect(result).to(equal(expected))
            }
            
            it("should add the name 'Dan' to the end of the 'precollege' array") {
                let result = addNameTo("Dan", deliLine: precollege)
                let expected = ["Victoria", "Danny", "Lyel", "Dan"]
                
                expect(result).to(equal(expected))
            }
            
            it("should add the name 'Mark' to the end of the 'ios' array") {
                let result = addNameTo("Mark", deliLine: ios)
                let expected = ["Joe", "Tim", "Jim", "Tom", "Mark"]
                
                expect(result).to(equal(expected))
            }
        }

        describe("serveNextCustomerInDeliLine(_:)") {
            it("should return an array optional containing nil when the argument optional contains nil") {
                let result = serveNextCustomerInDeliLine(nilArray)
                
                expect(result).to(beNil())
            }
            
            it("should return an array optional containing nil when an empty array is submitted") {
                let result = serveNextCustomerInDeliLine(empty)
                
                expect(result).to(beNil())
            }
            
            it("should remove 'Victoria' from the 'precollege' array") {
                let result = serveNextCustomerInDeliLine(precollege)
                let expected = ["Danny", "Lyel"]
                
                expect(result).to(equal(expected))
            }
            
            it("should remove 'Joe' from the 'ios' array") {
                let result = serveNextCustomerInDeliLine(ios)
                let expected = ["Tim", "Jim", "Tom"]
                
                expect(result).to(equal(expected))
            }
        }
    }
}


