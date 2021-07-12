//
//  SelectionButton.swift
//  CustomButton
//
//  Created by trungnghia on 11/07/2021.
//

import UIKit

@IBDesignable class SelectionButton: UIButton {
    // Allows developer to edit what colors are shown in each state
    @IBInspectable var borderColorSelected: UIColor = UIColor.purple
    @IBInspectable var borderColorDeselected: UIColor = UIColor.purple
    
    // Width of Dashed/Solid Border
    @IBInspectable var borderWidth: CGFloat = 3
    
    // Radius of corners of the button
    @IBInspectable var cornerRadius: CGFloat = 10
    
    // The text that's shown in each state
    @IBInspectable var selectedText: String = "Selected"
    @IBInspectable var deselectedText: String = "Deselected"
    
    // The color of text shown in each state
    @IBInspectable var textColorDeselected: UIColor = UIColor.lightGray
    @IBInspectable var textColorSelected: UIColor = UIColor.black
    
    // Sets the Active/Inactive State
    @IBInspectable var active: Bool = false
    
    // Custom border for the UIButton
    private let border = CAShapeLayer()
    
    override func draw(_ rect: CGRect) {
        // Setup CAShape Layer (Dashed/Solid Border)
        border.lineWidth = borderWidth
        border.frame = self.bounds
        border.fillColor = nil
        border.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: cornerRadius).cgPath
        self.layer.addSublayer(border)
        
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true // TODO: masksToBounds need to clarify
    }
    
    // Set the selected properties
    func setSelected() {
        border.lineDashPattern = nil
        border.strokeColor = borderColorSelected.cgColor
        self.setTitle(selectedText, for: .normal)
        self.setTitleColor(textColorSelected, for: .normal)
    }
    
    // Set the deselected properties
    func setDeselected() {
        border.lineDashPattern = [8, 8]
        border.strokeColor = borderColorDeselected.cgColor
        self.setTitle(deselectedText, for: .normal)
        self.setTitleColor(textColorDeselected, for: .normal)
    }
    
}
