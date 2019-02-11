//
//  ViewController.swift
//  8ballsApp
//
//  Created by  Łukasz Wojtarowicz on 06.11.2018.
//  Copyright © 2018  Łukasz Wojtarowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomNumber: Int = 0
    let arrayOfBallImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    
    }
    
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateBallImage(){
        randomNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: arrayOfBallImages[randomNumber])
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        updateBallImage()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

