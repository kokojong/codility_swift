import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here

    var result = 0
    var minAvg: Double = Double(A[0] + A[1]) / 2.0

    for i in 2..<A.count {
        let threeAvg = Double(A[i] + A[i-1] + A[i-2]) / 3.0
        if threeAvg < minAvg {
            minAvg = threeAvg
            result = i-2
        }

        let twoAvg = Double(A[i] + A[i-1]) / 2.0
        if twoAvg < minAvg {
            minAvg = twoAvg
            result = i-1
        }
    }

    return result
}

// 부분합을 구해두기(처음부터의 합)
// The goal is to find the starting position of a slice whose average is minimal.
// 평균이 최소가 되는 시작 지점을 리턴하기
// 평균이 최소가 된다 -> 그 시작점보다 커지면 배열을 멈추기?(먼소리야)
// ex) 4 2 2 5 1 5 8 에서
// 0번의 최소는 4 2 2 / 3 = 2.66
// 1번의 최소는 2 2 / 2 = 2 
// 근데... 2번의 최소는 2 5 / 2 = 3.5 2 5 1 / 3 = 2.66
// 만약에 2 5 1 1 이라면? 9/4 = 2.25

// 컨닝을 했더니 '구간의 평균은 부분구간의 평균 중 가장 작은 부분구간의 평균보다 크다.' 라는 원리를 알아야 한다고 한다. 흐희히히
// 즉, 한 전체 구간의 평균은 부분구간의 평균보다 크거나 같을수 밖에 없다 -> 부분구간이 가장 작다! 라는 뜻이다
// 
// 
