import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here
    var dict: [Int: Int] = [:]
    for a in A {
        dict[a] = 0
    }
    
    return dict.keys.count
}

// 2 1 1 2 3 1 -> 3을 리턴(총 3가지가 등장함)
