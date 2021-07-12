//
//  ViewController.swift
//  CustomButton
//
//  Created by trungnghia on 11/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectionButton: SelectionButton!
    var buttonState: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        selectionButton.active = buttonState
        setButton()
    }
    
    @IBAction func didTap(_ sender: Any) {
        selectionButton.active.toggle()
        setButton()
    }
    
    private func setButton() {
        selectionButton.active ?
            selectionButton.setSelected() :
            selectionButton.setDeselected()
    }

}

