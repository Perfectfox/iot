//
//  ViewController.swift
//  lab_IOS
//
//  Created by Guanyu Jiang  on 15/10/14.
//  Copyright © 2015年 Guanyu Jiang . All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var accX: UILabel!
    
    var Motion = CMMotionManager()
   
    override func viewDidLoad() {
        
        Motion.accelerometerUpdateInterval = 1.0
        Motion.gyroUpdateInterval = 0.2
        
        Motion.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue()!, withHandler: {
            (accelerometerData: CMAccelerometerData?, error: NSError?) -> Void
            in
            //self.outputAccelerationData(accelerometerData!.acceleration )
            self.test()
            
            if (error != nil){
                print("\(error)")
                
            }
        })
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func outputAccelerationData(acceleration: CMAcceleration) {
        print("data = \(acceleration.x)")
        
        accX?.text = "\(acceleration.x)"
    }
    func test(){
    print("hello")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

