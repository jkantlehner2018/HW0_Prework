//
//  ViewController.swift
//  HW0_Prework
//
//  Created by John Kantlehner on 8/29/23.
//

import UIKit

class ViewController: UIViewController {
    // First, Last , School
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    //Year Segments
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    //Pets Amount
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = Int(sender.value).description
    }
    //Want more pets?
    @IBOutlet weak var morePetsSwitch: UISwitch!
    //button
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dog(s). It is \(morePetsSwitch.isOn) that I want more pets."
        //print(introduction)
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler:nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

