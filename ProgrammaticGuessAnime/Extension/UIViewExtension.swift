//
//  UIViewExtensions.swift
//  ProgrammaticUIDemo6.28
//
//  Created by iAskedYou2nd on 7/7/22.
//

import UIKit


extension UIView {
    
    func bindToSuperView(insets: CGFloat = 8) {
        
        guard let superSafeArea = self.superview?.safeAreaLayoutGuide else {
            fatalError("Hey, you forgot to add the view to the view hiearchy. You done goofed up!!!")
        }
        
        self.topAnchor.constraint(equalTo: superSafeArea.topAnchor, constant: insets).isActive = true
        self.leadingAnchor.constraint(equalTo: superSafeArea.leadingAnchor, constant: insets).isActive = true
        self.trailingAnchor.constraint(equalTo: superSafeArea.trailingAnchor, constant: -insets).isActive = true
        self.bottomAnchor.constraint(equalTo: superSafeArea.bottomAnchor, constant: -insets).isActive = true
    }
    
    
}
