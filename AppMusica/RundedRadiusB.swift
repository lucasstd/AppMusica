//
//  RundedRadiusB.swift
//  Aula3_1
//
//  Created by Robson Andrei dos Santos on 09/01/19.
//  Copyright © 2019 Robson Andrei dos Santos. All rights reserved.
//

import UIKit




    
    @IBDesignable
    final class RundedRadiusB: UIButton {
        @IBInspectable
        
        var cornerRadius : CGFloat = 0.0 {
            
            didSet{
                
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
                
            }
        }
        
        
    }


