//
//  RoundedButton.swift
//  AppMusica
//
//  Created by Matheus Lagreca da Silva on 16/01/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@IBDesignable
final class RoundedButton: UIButton {

        @IBInspectable var cornerRadius: CGFloat = 0.0{
            didSet{
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
            }
        }
    }


