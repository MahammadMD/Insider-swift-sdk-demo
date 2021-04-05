//
//  HelloWorldLabel.swift
//  InsiderSWIFTSDKDemo
//
//  Created by Mahammad on 5.04.2021.
//

import Foundation
import UIKit

public class HelloWorldLabel : UILabel {
    
    func setConstraints () {
        guard let parentView = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: parentView.centerXAnchor, constant: 0).isActive = true
        centerYAnchor.constraint(equalTo: parentView.centerYAnchor, constant: 0).isActive = true
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 0.7).isActive = true
    }
    
    func setDesign (_ textContent: String) {
        text = textContent
        font = UIFont(name: "Arial-BoldMT", size: 23)
        textColor = UIColor.darkGray
        textAlignment = .center
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = .zero
        layer.shadowRadius = 15
    }
    
    public init(parentView: UIView, text: String) {
        super.init(frame: .zero)
        
        parentView.addSubview(self)
        
        setDesign(text)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
