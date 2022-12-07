import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // 맞으면 1 아니면 0
    var dict: [Int: Int] = [:]

    for a in A {
        dict[a] = 1
    }

    for n in 1...A.count {
        if dict[n] != 1 {
            return 0
        }
    }

    return 1
}
