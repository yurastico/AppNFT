//
//  UIViewController+.swift
//  NFT
//
//  Created by Yuri Cunha on 12/12/23.
//

import UIKit

extension UIViewController {
    func dismissKeyboard() {
        let tap = UITapGestureRecognizer(target: view,action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
    }
}
