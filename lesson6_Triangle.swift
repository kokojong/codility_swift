import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // Implement your solution here
    let result = 0
    let a: [Double] = A.sorted().map {Double($0)}
    if a.count < 3 {
        return 0
    }
    
    for i in 2..<a.count {
        if a[i] < a[i-1] + a[i-2] {
            return 1
        }
    }

    return result
}

// 정렬이 되어 있다면 A[P] + A[Q] > A[R], A[Q] + A[R] > A[P], A[R] + A[P] > A[Q] 중
// A[P] + A[Q] > A[R]만 확인하면댐
// 하나라도 만족하면 1을 반환
// 실제로는 다른 조합도 가능하지만 연속된 3개가 제일 기본이 되고 확률이 높아서 얘를 채택한다(?) -> 제일 이해가 안가는 부분)
// N이 0~10만이라 3개 이하일때도 고려해야한다. -> (P, Q, R) is triangular if 0 ≤ P < Q < R < N 라고 했으면 최소한 N이 3이상으로 해야하지 않나...
// A의 범위가 Int min~max 이기 때문에 두 수를 더할때 유의해야한다
