import Foundation

class GradeSchool {
  // Write your code for the 'GradeSchool' exercise in this file.
    var gradeAndStudent: [Int: [String]] = [:]
    
    func addStudent(_ name: String, grade: Int) -> Bool {
        if gradeAndStudent.values.contains(where: { $0.contains(name) }) {
            return false
        }
        
        if gradeAndStudent[grade, default: []].contains(name) == false {
            gradeAndStudent[grade, default: []].append(name)
            return true
        }
        
        return false
    }
    
    func roster() -> [String] {
        var allStudents = [String]()
        let sortedKeys = gradeAndStudent.keys.sorted()
        for key in sortedKeys {
            if let value = gradeAndStudent[key] {
                allStudents.append(contentsOf: value.sorted())
            }
        }
        
        return allStudents
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        var allStudents = [String]()
        for (key, value) in gradeAndStudent {
            if key == grade {
                allStudents.append(contentsOf: value)
            }
        }
        
        return allStudents.sorted()
    }
    
}
