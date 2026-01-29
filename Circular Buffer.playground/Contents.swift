import Foundation

enum CircularBufferError: Error {
    case bufferEmpty, bufferFull
}

struct CircularBuffer {
    // Write your code for the 'CircularBuffer' exercise in this file.
    var capacity: Int
    var buffer: [[Int]] = []
    
    init(capacity: Int) {
        self.capacity = capacity
        
        for i in 0...capacity - 1 {
            buffer.append([])
        }
    }
    
    func read() throws -> Int {
        for item in buffer {
            if !item.isEmpty {
                return item[0]
            }
        }
        
        throw CircularBufferError.bufferEmpty
    }
    
    func write(_ value: Int) throws {
        guard buffer.count > 0 else {
            throw CircularBufferError.bufferEmpty
        }
        
        for item in buffer {
            
        }
    }
}

var buffer = CircularBuffer(capacity: 1)
print(try buffer.read())
print(buffer.buffer.count)
