//
//  GeneralPointAverage.swift
//  BU Not
//
//  Created by Hasan Elhussein on 26.07.2021.
//

import Foundation

var gradesDictionary = ["AA": 4.0, "BA": 3.5, "BB": 3.0, "CB": 2.5, "CC": 2.0, "DC": 1.5, "DD": 1.0, "FF": 0.0]

struct ResultGPA {
    var classCount: Int
    var aktsSum: Int
    var grade: Double
    var gpa: Double
    
    init(classCount: Int, aktsSum: Int, grade: Double, gpa: Double) {
        self.classCount = classCount
        self.aktsSum = aktsSum
        self.grade = grade
        self.gpa = gpa
    }
}

struct GeneralPointAverage {
    private var akts: Double
    private var letterGrade: String
    private var gpaSum: Double
    private var result: ResultGPA
    
    init() {
        self.akts = 0
        self.gpaSum = 0
        self.letterGrade = ""
        self.result = ResultGPA(classCount: 0, aktsSum: 0, grade: 0, gpa: 0)
    }
    
    public mutating func calculateAndAdd(akts: Double, letterGrade: String) -> ResultGPA{
        result.classCount += 1
        result.aktsSum += Int(akts)
        gpaSum += (akts * gradesDictionary[letterGrade]!) / akts
        result.gpa = gpaSum / Double(result.classCount)
        result.grade = (result.gpa / 4) * 100
        
        return result
    }
    
}
