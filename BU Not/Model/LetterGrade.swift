//
//  LetterGrade.swift
//  BU Not
//
//  Created by Hasan Elhussein on 26.07.2021.
//

import Foundation

struct ResultLG{
    var classLevel: String
    var grade: Double
    var letterGrade: String
    
    init(classLevel: String, grade: Double, letterGrade: String){
        self.classLevel = classLevel
        self.grade = grade
        self.letterGrade = letterGrade
    }
}

struct LetterGrade{
    private var midtermGrade: Double
    private var finalGrade: Double
    private var classAverage: Double
    private var grade: Double
    
    init(midtermGrade: Double, finalGrade: Double, classAverage: Double){
        self.midtermGrade = midtermGrade
        self.finalGrade = finalGrade
        self.classAverage = classAverage
        self.grade = (midtermGrade * 0.4) + (finalGrade * 0.6)
    }
    
    public func calculate() -> ResultLG{
        var r = ResultLG(classLevel: "", grade: grade, letterGrade: "")
        
        switch classAverage {
        case 0..<35:
            r.classLevel = "Cok zayif"
            if finalGrade < 50 {
                r.letterGrade = "FF"
            }else{
                switch grade {
                case 0..<45:
                    r.letterGrade = "FF"
                case 45..<50:
                    r.letterGrade = "DD"
                case 50..<55:
                    r.letterGrade = "DC"
                case 55..<60:
                    r.letterGrade = "CC"
                case 60..<65:
                    r.letterGrade = "CB"
                case 65..<70:
                    r.letterGrade = "BB"
                case 70..<75:
                    r.letterGrade = "BA"
                case 75...100:
                    r.letterGrade = "AA"
                default:
                    r.letterGrade = "ERROR AT: letterGrade"
                }
            }
        case 35..<50:
            r.classLevel = "Zayif"
            if finalGrade < 50 {
                r.letterGrade = "FF"
            }else{
                switch grade {
                case 0..<45:
                    r.letterGrade = "FF"
                case 45..<50:
                    r.letterGrade = "DD"
                case 50..<55:
                    r.letterGrade = "DC"
                case 55..<60:
                    r.letterGrade = "CC"
                case 60..<65:
                    r.letterGrade = "CB"
                case 65..<70:
                    r.letterGrade = "BB"
                case 70..<80:
                    r.letterGrade = "BA"
                case 80...100:
                    r.letterGrade = "AA"
                default:
                    r.letterGrade = "ERROR AT: letterGrade"
                }
            }
        case 50..<65:
            r.classLevel = "Orta"
            if finalGrade < 50 {
                r.letterGrade = "FF"
            }else{
                switch grade {
                case 0..<45:
                    r.letterGrade = "FF"
                case 45..<50:
                    r.letterGrade = "DD"
                case 50..<55:
                    r.letterGrade = "DC"
                case 55..<60:
                    r.letterGrade = "CC"
                case 60..<65:
                    r.letterGrade = "CB"
                case 65..<75:
                    r.letterGrade = "BB"
                case 75..<85:
                    r.letterGrade = "BA"
                case 85...100:
                    r.letterGrade = "AA"
                default:
                    r.letterGrade = "ERROR AT: letterGrade"
                }
            }
        case 65..<85:
            r.classLevel = "Iyi"
            if finalGrade < 60 {
                r.letterGrade = "FF"
            }else{
                switch grade {
                case 0..<50:
                    r.letterGrade = "FF"
                case 50..<55:
                    r.letterGrade = "DD"
                case 55..<60:
                    r.letterGrade = "DC"
                case 60..<65:
                    r.letterGrade = "CC"
                case 65..<70:
                    r.letterGrade = "CB"
                case 70..<80:
                    r.letterGrade = "BB"
                case 80..<90:
                    r.letterGrade = "BA"
                case 90...100:
                    r.letterGrade = "AA"
                default:
                    r.letterGrade = "ERROR AT: letterGrade"
                }
            }
        case 85...100:
            r.classLevel = "Cok iyi"
            if finalGrade < 60 {
                r.letterGrade = "FF"
            }else{
                switch grade {
                case 0..<50:
                    r.letterGrade = "FF"
                case 50..<65:
                    r.letterGrade = "DD"
                case 65..<70:
                    r.letterGrade = "DC"
                case 70..<75:
                    r.letterGrade = "CC"
                case 75..<80:
                    r.letterGrade = "CB"
                case 80..<85:
                    r.letterGrade = "BB"
                case 85..<95:
                    r.letterGrade = "BA"
                case 95...100:
                    r.letterGrade = "AA"
                default:
                    r.letterGrade = "ERROR AT: letterGrade"
                }
            }
        default:
            r.classLevel = "ERROR AT: classLevel"
        }
        
        return r
    }
    
    
}
