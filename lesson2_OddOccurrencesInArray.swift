
/// O(N**2)으로 시간초과

import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    var stack: [Int] = []
    let arr: [Int] = A

    arr.forEach { a in
        if !stack.contains(a) {
            stack.append(a)
        } else {
            stack = stack.filter{ $0 != a }
        }
    }

    return stack.first!
}

/// O(N) 또는 O(NlogN)

import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    var dict: [Int:Int] = [:]
    let arr: [Int] = A

    // dict 에 적재(1개만 남음)
    arr.forEach { a in
        if dict[a] == nil {
            dict[a] = a
        } else {
            dict[a] = nil
        }
    }

    return dict.keys.first!
}
