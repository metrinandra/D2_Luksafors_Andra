//
//  ViewController.swift
//  D2_Luksafors_Andra
//
//  Created by Andra Metrina on 31/03/2021.
//

import UIKit
import Lottie //JSON animācijas faila reprezentācijai app

class ViewController: UIViewController {
    
    @IBOutlet weak var light: UIImageView!
    
    @IBOutlet weak var userTime: UIDatePicker!
    
    
    @IBOutlet weak var animationView: AnimationView!
    
    
    var min:Int = 0
    //diezgan hardcore ar Array, bet timeinterval krāsām man nestrādāja
    let greenMin = [1,2,7,8,13,14,19,20,25,26,31,32,37,38,43,44,49,50,55,56]
    let orangeMin = [3,9,15,21,27,33,39,45,51,57]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        min = 0
        light.tintColor = .lightGray
       
        animationView.contentMode = .scaleAspectFit
         animationView.loopMode = .loop
         animationView.animationSpeed = 0.5
         animationView.play()
       
    }
   
    
    
    private func separateMin() -> Int{
        let date = userTime.date
        let components = Calendar.current.dateComponents([.minute], from: date)
        let minute = components.minute!
        return minute
    }
    
    
    
    @IBAction func timeChanged(_ sender: Any) {
        min = separateMin()
        if greenMin.contains(min){
            light.tintColor = .green
        }
        else if orangeMin.contains(min){
            light.tintColor = .orange
        }else{
            light.tintColor = .red
        }
    }
    
}
        


