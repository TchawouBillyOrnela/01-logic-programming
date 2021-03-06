import XCTest
import LogicKit
@testable import ___logic_programming

class ___logic_programmingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // We ask for all Pokemon that are stronger than Bulbasaur, according to our
        // `stronger` predicate.
        do {
          let x = Variable(named: "x")
          let q = is_student(who: x)
          print("Which persons are students?")
          let results = q(State())
          for substitution in results {
              print ("substitution found")
              for (_, value) in substitution.reified() {
                  print("* \(value)")
              }
          }
        }
        do {
          let x = Variable(named: "x")
          let y = Variable(named: "y")
          let q = is_student(who: x) && is_student (who: y)
          print("Which persons are students?")
          let results = q(State())
          for substitution in results {
              print ("substitution found")
              for (variable, value) in substitution.reified() {
                  print("* \(variable) = \(value)")
              }
          }
        }
        do {
          let q = is_student(who: Person.A)
          print("Is A a student?")
          let results = q(State())
          for substitution in results {
              print ("substitution found")
              for (_, value) in substitution.reified() {
                  print("* \(value)")
              }
          }
        }
        do {
          let q = is_student(who: Person.B)
          print("Is B a student?")
          let results = q(State())
          for substitution in results {
              print ("substitution found")
              for (_, value) in substitution.reified() {
                  print("* \(value)")
              }
          }
        }
        // XCTAssertEqual("Hello, World!", "Hello, World!")
    }


    static var allTests : [(String, (___logic_programmingTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
