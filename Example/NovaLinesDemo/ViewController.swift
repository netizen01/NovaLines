//
//  ViewController.swift
//  NovaLinesDemo
//

import UIKit

class ViewController: UIViewController {


    @IBAction func novaButtonHandler(novaButton: NovaLineButton) {
        if novaButton.type == .Square {
            novaButton.lineView.setType(.Right2, animated: true)
        } else {
            novaButton.lineView.setType(.Square, animated: true)
        } 
    }
    
}

