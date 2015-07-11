//
//  ViewController.swift
//  TippyTab
//
//  Created by Ehsan Jahromi on 7/7/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

import UIKit

protocol optionsViewControllerDelegate{
    
}

class ViewController: UIViewController {
    @IBOutlet weak var sementedView: UISegmentedControl!
    @IBOutlet weak var percentageButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        percentageButton.layer.borderWidth = 1.0
        percentageButton.layer.borderColor = UIColor(red: 23/255.0, green: 51/255.0, blue: 132/255.0, alpha: 1.0).CGColor!
        let percentageOptions = OptionsViewController()
        //percentageOptions.delegate = self
        
//        UIView.animateWithDuration(1.0, animations: {self.percentageButton.alpha = 0.2}, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showOptionsViewController(sender: AnyObject) {
        self.performSegueWithIdentifier("idFirstSegue", sender: self)
    }

    @IBAction func segmentedViewPressed(sender: AnyObject) {
        if sender.selectedSegmentIndex == 1{
            self.percentageButton.hidden = false
            self.percentageButton.titleLabel?.text = "15%"
        }else{
            self.percentageButton.hidden = true
        }
    }
    
//    override func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue {
//        if let id = identifier{
//            if id == "idFirstSegueUnwind"{
//                let unwindSegue = FirstCustomSegueUnwind(identifier: id, source: fromViewController, destination: toViewController, performHandler: { () -> Void in
//                    
//                })
//                return unwindSegue
//            }
//        }
//        return super.segueForUnwindingToViewController(toViewController, fromViewController: fromViewController, identifier: identifier)
//    }
    
    


}

