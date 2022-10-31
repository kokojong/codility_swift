import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    // 0에서 시작해서 X + 1에 도착하려면 걸리는 최소시간
    // A[K] = k -> K초에 낙엽이 떨어지는 위치
    var dict: [Int : Int] = [:]

    for i in 0..<A.count {
        let a = A[i] // i초에 떨어진 낙엽 위치
        // print(a)
        if a <= X + 1 {
            dict[a] = 1
        }
        // print(dict)
        
        if dict.keys.count == X {
            return i
        }
    }

    return -1
}
