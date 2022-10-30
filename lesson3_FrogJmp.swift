import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // x: 원래 위치, y: 목표 지점(이상), d: 한번에 얼마나 뛰는지

    let distance = Y - X
    var cnt: Int = Int(distance / D)
    if distance % D > 0 {
        cnt += 1
    }
    return cnt
}
