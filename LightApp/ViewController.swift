//
//  ViewController.swift
//  LightApp
//
//  Created by edoardo fratus on 31/01/22.
//

import UIKit

class ViewController: UIViewController {

    let spentoConstant = "ON"
    let accesoConstant = "OFF"
    var lightOn = false
    @IBOutlet var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeBackground()
        //lo chiamo qua per fare in modo che il sistema sia inizializzato giusto all'inizio
    }

    fileprivate func changeBackground() {
        
        view.backgroundColor = lightOn ? .white : .black
        myButton.setTitle(lightOn ? accesoConstant : spentoConstant, for: .normal)
            //for indica lo stato in del bottone per cui setto la prorpietà
        }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        changeBackground()
        //view.setNeedsDisplay()
    }
    
}

