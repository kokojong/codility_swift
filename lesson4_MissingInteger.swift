import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    var answer: Int = 1
    let A = A.filter{ $0 > 0}
    let maxValue: Int = A.max() ?? 0
    if maxValue < 1 {
        return answer
    }

    var list: [Int] = Array(repeating: 0, count: maxValue+1) // [0, 0, 0 ... 0]

    for a in A {
        if a >= 0 {
            list[a-1] = 1
        }
        
    }

    for i in 0..<list.count {
        if list[i] == 0 {
            answer = i+1
            break
        }
    }

    return answer
}
