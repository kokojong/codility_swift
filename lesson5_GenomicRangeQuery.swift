import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    // Implement your solution here
    var s: [Int] = []
    var result: [Int] = []

    var arrayA = [0]
    var arrayC = [0]
    var arrayG = [0]
    var arrayT = [0]

    S.forEach {
        if $0 == "A" {
            s.append(1)
            arrayA.append(arrayA.last! + 1)
        } else {
            arrayA.append(arrayA.last!)
        }
        if $0 == "C" {
            s.append(2)
            arrayC.append(arrayC.last! + 1)
        } else {
            arrayC.append(arrayC.last!)
        }
        if $0 == "G" {
            s.append(3)
            arrayG.append(arrayG.last! + 1)
        } else {
            arrayG.append(arrayG.last!)
        }
        if $0 == "T" {
            s.append(4)
            arrayT.append(arrayT.last! + 1)
        } else {
            arrayT.append(arrayT.last!)
        }
    }

    print(arrayA, arrayC, arrayG, arrayT)


    for k in 0..<P.count {
        let p = P[k]
        let q = Q[k]
        if arrayA[q+1] - arrayA[p] > 0 {
            result.append(1)
        } else if arrayC[q+1] - arrayC[p] > 0 {
            result.append(2)
        } else if arrayG[q+1] - arrayG[p] > 0 {
            result.append(3)
        } else if arrayT[q+1] - arrayT[p] > 0 {
            result.append(4)
        } else { // same
            result.append(s[p])
        }
    }
    
    return result
}

func convertToIntArray(_ str: String) -> [Int] {
    var result: [Int] = []
    str.forEach {
        if $0 == "A" {
            result.append(1)
        }
        if $0 == "C" {
            result.append(2)
        }
        if $0 == "G" {
            result.append(3)
        }
        if $0 == "T" {
            result.append(4)
        }
    }

    return result
}

// A C G T
// 1 2 3 4
// What is the minimal impact factor of nucleotides contained in a particular part of the given DNA sequence?
// 일 부분에서 가장 작은 impact factor?

// CAGCCTA
// 2132241

// ex)
//     P[0] = 2    Q[0] = 4
//     P[1] = 5    Q[1] = 5
//     P[2] = 0    Q[2] = 6

// M = 3 -> 일때
// P[K] Q[K] 에서 가능한 K는 0...K..<M (0 <= K < M)

// p[0] = 2 q[0] = 4 -> index 2...4 (GCC == 322) 최소 2
// p[1] = 5 q[1] = 5 -> index 5...5 (T == 4) 최소 4
// ...

// return -> [0, 4, 1]
