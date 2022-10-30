import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    let a = A.count + 1
    var sum = a * (a + 1) / 2

    A.forEach {
        sum -= $0
    }

    return sum
}
