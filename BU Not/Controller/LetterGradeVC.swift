//
//  HarfNotuVC.swift
//  BU Not
//
//  Created by Hasan Elhussein on 26.07.2021.
//

import UIKit

class LetterGradeVC: UIViewController {
    
    // To close the keyboard when tapped anywhere on the view controller
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    // IBoutlets
    @IBOutlet weak var classAverageTxt: UITextField!
    @IBOutlet weak var midtermGradeTxt: UITextField!
    @IBOutlet weak var finalGradeTxt: UITextField!
    
    @IBOutlet weak var classLevelLbl: UILabel!
    @IBOutlet weak var gradeLbl: UILabel!
    @IBOutlet weak var letterGradeLbl: UILabel!
    
    @IBOutlet weak var calculateBtn: myButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func calculateBtn(_ sender: Any) {
        if classAverageTxt.hasText && midtermGradeTxt.hasText && finalGradeTxt.hasText{
            let obj = LetterGrade(midtermGrade: Double(midtermGradeTxt.text!)!, finalGrade: Double(finalGradeTxt.text!)!, classAverage: Double(classAverageTxt.text!)!)
            
            let result = obj.calculate()
            
            classLevelLbl.text = result.classLevel
            gradeLbl.text = String(result.grade)
            letterGradeLbl.text = result.letterGrade
        }
    }
    

}
