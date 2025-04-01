import Foundation

enum NucleotideCountErrors: Error {
    case invalidNucleotide
}

class DNA {
  // Write your code for the 'NucleotideCount' exercise in this file.
    var strand: String
    
   init(strand: String) throws {
        let nucleotide = ["A", "C", "G", "T"]
        for ch in strand {
            if !nucleotide.contains(String(ch)) {
                throw NucleotideCountErrors.invalidNucleotide
            }
        }
        self.strand = strand
    }
    
    func counts() -> [String: Int] {
        var counted = ["A": 0, "C": 0, "G": 0, "T": 0]
        
        for ch in strand {
            counted[String(ch)]! += 1
        }
        
        return counted
    }
}
