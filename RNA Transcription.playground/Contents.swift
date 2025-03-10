import Foundation

func toRna(_ dna: String) -> String {
  // Write your code for the 'Rna Transcription' exercise in this file.
    var rna = ""
    
    if dna != "" {
        for nucleotid in dna {
            switch nucleotid {
            case "G": rna.append("C")
            case "C": rna.append("G")
            case "T": rna.append("A")
            default: rna.append("U")
            }
        }
    } else {
        return ""
    }
    
    return rna
}
