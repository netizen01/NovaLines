//
//  ViewController.swift
//  NovaLinesDemo
//

import UIKit

class ViewController: UIViewController {

    @IBAction func novaButtonHandler(_ novaButton: NovaLineButton) {
        if novaButton.type == .square {
            novaButton.lineView.setType(.right2, animated: true)
        } else {
            novaButton.lineView.setType(.square, animated: true)
        } 
    }
    
}

