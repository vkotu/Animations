//
//  ViewController.swift
//  Animations
//
//  Created by Venkat Kotu on 2/9/16.
//  Copyright © 2016 VenkatKotu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating {
            timer.invalidate()
            isAnimating = false
        }else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
            isAnimating = true
            
        }
    }
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func doAnimation(){
    
    if(counter == 3) {
    counter = 1
    }else{
    counter++
    }
    
    image.image = UIImage(named: "f\(counter).gif")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func viewDidLayoutSubviews() {
//       image.center = CGPointMake(image.center.x-400, image.center.y)
//       
//        image.alpha = 0 // change the fade
//        
//        //changing the size
//        
//        image.frame = CGRectMake(100, 20, 0, 0)
//        
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        
//      UIView.animateWithDuration(1, animations: { () -> Void in
//            self.image.center = CGPointMake(self.image.center.x+400, self.image.center.y)
//        })
//        
//        image.alpha = 1
//        
//        image.frame = CGRectMake(100, 20, 100, 200)
//      
//    }

    
    

}

