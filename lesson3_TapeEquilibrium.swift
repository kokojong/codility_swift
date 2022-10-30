import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    var fromStart: [Int] = []
    var fromEnd: [Int] = []
    var dif: [Int] = []
    
    A.forEach { 
        let start = (fromStart.last ?? 0) + $0
        fromStart.append(start)
    }

    A.reversed().forEach {
        let end = (fromEnd.last ?? 0) + $0
        fromEnd.append(end)
    }
    
    // print(fromStart)
    // print(fromEnd)

    for i in 0..<fromStart.count - 1 {
        var result = fromStart[i] - fromEnd[fromStart.count - i - 2]
        if result < 0 {
            result = 0 - result
        }
        dif.append(result)
    }
    // print(dif)
    return dif.min()!
}
