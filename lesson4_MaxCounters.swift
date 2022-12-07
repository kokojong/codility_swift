import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var list: [Int] = Array(repeating: 0, count: N)
    var maxCount: Int = 0 // N+1 일때 평준화 할 숫자
    var maxValue: Int = 0 // 진짜 최고 숫자
    for a in A {
        if a == N+1 { 
            maxCount = maxValue
        } else {
            if list[a-1] < maxCount {
                list[a-1] = maxCount
            }
            list[a-1] += 1 
            if list[a-1] > maxValue {
                maxValue = list[a-1]
            }
        }
    }
  
    for i in 0...N-1 {
        if list[i] < maxCount {
            list[i] = maxCount
        }
    }

    return list
}
