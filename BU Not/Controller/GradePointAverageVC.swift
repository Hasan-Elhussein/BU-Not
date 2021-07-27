//
//  GenelNotOrtalamaVC.swift
//  BU Not
//
//  Created by Hasan Elhussein on 26.07.2021.
//

import UIKit

class GradePointAverageVC: UIViewController {
    
    // To close the keyboard when tapped anywhere on the view controller
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    // IBoutlets
    @IBOutlet weak var aktsTxt: UITextField!
    @IBOutlet weak var letterGradePck: UIPickerView!
    
    @IBOutlet weak var aktsSumLbl: UILabel!
    @IBOutlet weak var gradeLbl: UILabel!
    @IBOutlet weak var averageLbl: UILabel!
    @IBOutlet weak var classCountLbl: UILabel!
    
    let data: [String] = ["AA", "BA", "BB", "CB", "CC", "DC", "DD", "FF"]
    var gradeLetter: String = ""
    var result: ResultGPA = ResultGPA(classCount: 0, aktsSum: 0, grade: 0, gpa: 0)
    var classCount: Int = 0
    var obj = GeneralPointAverage()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Code needed for UIPickerView
        self.letterGradePck.delegate = self
        self.letterGradePck.dataSource = self
        
        // Do any additional setup after loading the view.
        obj = GeneralPointAverage()
        result = ResultGPA(classCount: 0, aktsSum: 0, grade: 0, gpa: 0)
        
    }
    
    @IBAction func CalculateAndAddBtn(_ sender: Any) {
        
        if aktsTxt.hasText && !gradeLetter.isEmpty {
            result = obj.calculateAndAdd(akts: Double(aktsTxt.text!)!, letterGrade: gradeLetter)
            
            aktsSumLbl.text = String(result.aktsSum)
            gradeLbl.text = "%" + String(result.grade)
            averageLbl.text = String(result.gpa)
            classCountLbl.text = String(result.classCount)
        }
    }
    
}


// These protocols were implemented because they're important for UIPickerView
extension GradePointAverageVC: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        gradeLetter = data[row]
    }
    
}
