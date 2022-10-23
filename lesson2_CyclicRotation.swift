import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    var arr = A
    var K = K
    // 빈배열시 return(빼먹었음)
    if arr.count == 0 {
        return arr
    }
    // A.count로 나눈 나머지만큼만 시핼
    K = K % A.count
    // K의 배수라면 그대로 return
    if K == 0 {
        return A
    }

    // K번 rotate
    for _ in 0..<K {
        let last = arr[arr.indices].popLast()
        arr.insert(last!, at: 0)
    }
    return arr
    
}
