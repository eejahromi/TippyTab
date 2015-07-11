//
//  OptionsViewController.swift
//  TippyTab
//
//  Created by Ehsan Jahromi on 7/7/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController{
    @IBOutlet weak var sizeLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let screenHeight = self.view.bounds.size.height;
        let availableHeight = screenHeight - 35;
        var viewHeights = availableHeight / 5;
        var startY:CGFloat = 30.0

        
        var myView = UIView(frame: CGRectMake(1.0, startY, self.view.bounds.width - 2 , viewHeights))
        startY += viewHeights + 1
        var myView2 = UIView(frame: CGRectMake(1.0, startY, self.view.bounds.width - 2 , viewHeights))
        startY += viewHeights + 1
        var myView3 = UIView(frame: CGRectMake(1.0, startY, self.view.bounds.width - 2 , viewHeights))
        startY += viewHeights + 1
        var myView4 = UIView(frame: CGRectMake(1.0, startY, self.view.bounds.width - 2 , viewHeights))
        startY += viewHeights + 1
        var myView5 = UIView(frame: CGRectMake(1.0, startY, self.view.bounds.width - 2 , viewHeights))
        
        
       
        var label1 = UILabel(frame: CGRectMake(4, 4, 50, 20))
        label1.text = "10%"
        label1.textColor = UIColor.whiteColor()
        label1.center = CGPointMake(CGRectGetMidX(myView.bounds), CGRectGetMidY(myView.bounds))
        myView.addSubview(label1)
        
        var label2 = UILabel(frame: CGRectMake(4, 4, 50, 20))
        label2.text = "15%"
        label2.textColor = UIColor.whiteColor()
        label2.center = CGPointMake(CGRectGetMidX(myView2.bounds), CGRectGetMidY(myView2.bounds))
        myView2.addSubview(label2)
        
        var label3 = UILabel(frame: CGRectMake(4, 4, 50, 20))
        label3.text = "20%"
        label3.textColor = UIColor.whiteColor()
        label3.center = CGPointMake(CGRectGetMidX(myView3.bounds), CGRectGetMidY(myView3.bounds))
        myView3.addSubview(label3)
        
        var label4 = UILabel(frame: CGRectMake(4, 4, 50, 20))
        label4.text = "25%"
        label4.textColor = UIColor.whiteColor()
        label4.center = CGPointMake(CGRectGetMidX(myView4.bounds), CGRectGetMidY(myView4.bounds))
        myView4.addSubview(label4)
        
        var label5 = UILabel(frame: CGRectMake(4, 4, 50, 20))
        label5.text = "30%"
        label5.textColor = UIColor.whiteColor()
        label5.center = CGPointMake(CGRectGetMidX(myView5.bounds), CGRectGetMidY(myView5.bounds))
        myView5.addSubview(label5)
        
        myView.backgroundColor = UIColor(red: 14/255.0, green: 71/255.0, blue: 150/255.0, alpha: 0.85)
        myView2.backgroundColor = UIColor(red: 14/255.0, green: 71/255.0, blue: 150/255.0, alpha: 0.85)
        myView3.backgroundColor = UIColor(red: 14/255.0, green: 71/255.0, blue: 150/255.0, alpha: 0.85)
        myView4.backgroundColor = UIColor(red: 14/255.0, green: 71/255.0, blue: 150/255.0, alpha: 0.85)
        myView5.backgroundColor = UIColor(red: 14/255.0, green: 71/255.0, blue: 150/255.0, alpha: 0.85)
        
        
        myView.transform = CGAffineTransformMakeScale(0,1)
        myView2.transform = CGAffineTransformMakeScale(0,1)
        myView3.transform = CGAffineTransformMakeScale(0,1)
        myView4.transform = CGAffineTransformMakeScale(0,1)
        myView5.transform = CGAffineTransformMakeScale(0,1)

        
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            myView.transform = CGAffineTransformIdentity
            self.view.layoutIfNeeded()
            }, completion: {Finished in UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.view.layoutIfNeeded()
                myView2.transform = CGAffineTransformIdentity
                }, completion: {Finished in UIView.animateWithDuration(0.2, animations: { () -> Void in
                    self.view.layoutIfNeeded()
                    myView3.transform = CGAffineTransformIdentity
                    }, completion: {Finished in UIView.animateWithDuration(0.2, animations: { () -> Void in
                        self.view.layoutIfNeeded()
                        myView4.transform = CGAffineTransformIdentity
                        }, completion: {Finished in UIView.animateWithDuration(0.2, animations: { () -> Void in
                            self.view.layoutIfNeeded()
                            myView5.transform = CGAffineTransformIdentity
                            }, completion: nil)})})})})


        
        self.view.addSubview(myView)
        self.view.addSubview(myView2)
        self.view.addSubview(myView3)
        self.view.addSubview(myView4)
        self.view.addSubview(myView5)
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
