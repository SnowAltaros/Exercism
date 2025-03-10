import Foundation

class SpaceAge {
  // Write your code for the 'SpaceAge' exercise in this file.
    var seconds: Double
    
    var oneEarthYear: Double = 31_557_600
    
    init(_ seconds: Double = 0) {
        self.seconds = seconds
    }
    
    var onEarth: Double {
        seconds / oneEarthYear
    }
    
    var onMercury: Double {
        let inEarthYears = oneEarthYear * 0.2408467
        return seconds / inEarthYears
    }
    
    var onVenus: Double {
        let inEarthYears = oneEarthYear * 0.61519726
        return seconds / inEarthYears
    }
    
    var onMars: Double {
        let inEarthYears = oneEarthYear * 1.8808158
        return seconds / inEarthYears
    }
    
    var onJupiter: Double {
        let inEarthYears = oneEarthYear * 11.862615
        return seconds / inEarthYears
    }
    
    var onSaturn: Double {
        let inEarthYears = oneEarthYear * 29.447498
        return seconds / inEarthYears
    }
    
    var onUranus: Double {
        let inEarthYears = oneEarthYear * 84.016846
        return seconds / inEarthYears
    }
    
    var onNeptune: Double {
        let inEarthYears = oneEarthYear * 164.79132
        return seconds / inEarthYears
    }
}
