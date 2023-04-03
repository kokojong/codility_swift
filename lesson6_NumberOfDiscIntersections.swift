import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    
    var lefts: [Int64] = []
    var rights: [Int64] = []
    var result = 0 
    var circles = 0

    for i in 0..<A.count {
        lefts.append(Int64(i) - Int64(A[i]))
        rights.append(Int64(i) + Int64(A[i]))
    }

    lefts.sort()
    rights.sort()

    var now = 0 // upper now
    for left in lefts {
        while left > rights[now] { // 몇개의 circle인지 판단
            circles -= 1
            now += 1
        }
        // print(left, now, circles)
        result += circles
        circles += 1
    }

    if result > 10000000 {
        result = -1
    }

    return result
}
