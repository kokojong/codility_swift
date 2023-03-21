import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here
    
    let a = A.sorted()
    var result = a[0] * a[1] * a[2]
    let len = a.count
    
    if a[0] * a[1] * a[len-1] > result {
        result = a[0] * a[1] * a[len-1]
    }

    if a[0] * a[len-2] * a[len-1] > result {
        result = a[0] * a[len-2] * a[len-1]
    }

    if a[len-1] * a[len-2] * a[len-3] > result {
        result = a[len-1] * a[len-2] * a[len-3]
    }

    return result
}
// A를 sort한뒤에 젤 앞, 뒤 조합으로 비교해서 가장 큰거 리턴
