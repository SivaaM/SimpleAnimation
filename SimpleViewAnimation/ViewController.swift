//
//  ViewController.swift
//  SimpleViewAnimation
//
//  Created by Sivakumar Muniappan on 8/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    
    @IBAction func startAnimation(_ sender: Any) {
        
        UIView.animate(withDuration: 3.5, animations: {
            self.animationView.transform = CGAffineTransform(scaleX: 2.0, y: 3.0)
        }) { (finished) in
            UIView.animate(withDuration: 2.5, animations: {
                self.animationView.transform = CGAffineTransform.identity
            })
        }
        
    }
    
    @IBAction func stopAnimation(_ sender: Any) {
        self.animationView.layer.removeAllAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

