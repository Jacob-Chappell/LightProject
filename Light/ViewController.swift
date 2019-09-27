//
//  ViewController.swift
//  Light
//
//  Created by Jacob Chappell on 9/23/19.
//  Copyright © 2019 Jacob Chappell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true;
    var color = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorButton.backgroundColor = .white;
        updateUI();
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn;
        updateUI();
    }
    
    @IBOutlet weak var colorButton: UIButton!
    
    @IBAction func colorSwitch(_ sender: Any) {
        color += 1;
        updateUI();
    }
    
    func updateUI(){
        if(lightOn){
        switch color{
            case 0:
                view.backgroundColor = .white;
                break;
            case 1:
                view.backgroundColor = .red;
                break;
            case 2:
                view.backgroundColor = .green;
                break;
            case 3:
                view.backgroundColor = .blue;
                break;
            default:
                color = 0;
                view.backgroundColor = .white;
                break;
        }
        }
        else{
            view.backgroundColor = .black;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

