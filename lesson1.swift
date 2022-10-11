public func solution(_ N : Int) -> Int {
    let binaryN = intToBinary(N)
    // print(binaryN)
    var answer = 0
    var tmp = 0
    binaryN.forEach {
        if $0 == "0" {
            tmp += 1
        } else {
            answer = max(answer, tmp)
            tmp = 0
        }
    }

    return answer
}

func intToBinary(_ N: Int) -> String {
    var n = N
    var strN = ""

    while n >= 2 {
        strN = String(n%2) + strN
        n = n/2
    }
    if n == 1 { strN = String(1) + strN}

    return strN
}
