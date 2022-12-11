import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // P: 0 -> east, Q: 1 -> west
    var total = A.reduce(0,+)
    var result = 0
    // 아이디어 2. 기존의 아이디어를 가져가며 전체의 합인 sum을 저장해서 써먹기
    for i in 0..<A.count {
        if A[i] == 0 {
            result += total
        } else if A[i] == 1 {
            total -= 1
        }

        if result > 1000000000 {
            return -1
        }
    }

    return result
}​
