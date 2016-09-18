//
//  ViewController.swift
//  Millas a Metros
//
//  Created by Juan Morillo on 18/9/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mileUnit : Double = 1.609
    

    @IBOutlet weak var distanceTextField: UITextField!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        resultLabel.text = "Escribe la distancia a convertir"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertBtnPressed(_ sender: UIButton) {
        
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        
        let texttFieldVal = Double(distanceTextField.text!)! //Casting del valor introducido por el usuario
        
        
        if selectedIndex == 0 {
            let convertedValue = texttFieldVal / mileUnit    //Operación del número que introduce el usuario y lo dividimos por la unidad de medida mileUnit
            
            let initValue = String(format: "%.2f", texttFieldVal)
            let endValue = String(format: "%.2f", convertedValue)
            
            resultLabel.text = "\(initValue) km = \(endValue) millas  "  //Presentamos por pantalla el resultado al usuario
            
            print("Convertir a millas \(convertedValue)")  //sacamos el mismo resultado por consola
            
            
        } else if selectedIndex == 1 {
            let convertedValue = texttFieldVal * mileUnit   //Operación del número que introduce el usuario y lo multiplicamos por la unidad de medida mileUnit
            
            let initValue = String(format: "%.2f", texttFieldVal)
            let endValue = String(format: "%.2f", convertedValue)
            

            resultLabel.text = "\(initValue) millas = \(endValue) km."   //Presentamos por pantalla el resultado al usuario
            
            print("Debo Convertir a kilometros \(convertedValue)")   //sacamos el mismo resultado por consola
            
            
        } else {
            
            
            print("Nada se ha convertido")
            
            
        }
        
        
        
  
    
    
    }

}

