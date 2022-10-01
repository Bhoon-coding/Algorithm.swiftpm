let initialBits: UInt8 = 0b00001111 // 15
let invertedBits = ~initialBits // 240
// 1110000 (2진수) -> 240 (10진수)


let firstSixBits: UInt8 = 0b11111100 // 252
let lastSixBits: UInt8 =  0b00111111 // 63
let middleFourBits = firstSixBits & lastSixBits
// 00111100 (2진수) -> 60 (10진수)


let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedbits = someBits | moreBits
// 11111110 -> 254

let firstBits: UInt8 = 0b00010100 // 20
let otherBits: UInt8 = 0b00000101 // 5
let outputBits = firstBits ^ otherBits
// 00010001 -> 17

let shiftBits: UInt8 = 4   // 00000100 in binary
shiftBits << 1             // 00001000 -> 8
shiftBits << 2             // 00010000 -> 16
shiftBits << 5             // 10000000 -> 128
shiftBits << 6             // 00000000 -> 0
shiftBits >> 2             // 00000001 -> 1

var potentialoverflow = Int16.max
potentialoverflow
potentialoverflow &+ 1


protocol AProtocol {
    func hello() -> String
}

extension AProtocol {
    func hello() -> String {
        return "Hello"
    }
}

struct HI: AProtocol {
    
}

let hi = HI()
print(hi.hello())
