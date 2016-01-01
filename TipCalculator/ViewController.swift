//
//  ViewController.swift
//  TipCalculator
//
//  Created by Brian Wang on 12/31/15.
//  Copyright © 2015 wangco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var blackBackground: UIView!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var dollarSign: UITextField!
    @IBOutlet weak var equalsSign: UILabel!
    @IBOutlet weak var forTwo: UILabel!
    @IBOutlet weak var forThree: UILabel!
    @IBOutlet weak var forFour: UILabel!
    
    @IBOutlet weak var oneIcon: UILabel!
    @IBOutlet weak var twoIcon: UILabel!
    @IBOutlet weak var threeIcon: UILabel!
    @IBOutlet weak var fourIcon: UILabel!
    
    //@IBOutlet weak var picker: UIPickerView!
    
    var billAmount: Double = 0.0
    //var hidden: Bool = true
    //let blackShift: CGFloat = 159.0
    var tip: Double = 0.0
    var total: Double = 0.0
    var tipPercentage: Double = 0.0
    
    //var pickerData: [String] = [String]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "tipCalc"
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        billField.becomeFirstResponder()
        //blackBackground.hidden = false
        //tipControl.hidden = true
        self.blackBackground.alpha = 0
        self.tipControl.alpha = 0
        self.equalsSign.alpha = 0
        //self.billField.text = "$"
        //self.dollarSign.hidden = false
        self.dollarSign.frame.origin.y = 180.0
        
        //pickerData = ["5", "6", "7", "8"]
        
        // Do any additional setup after loading the view, typically from a nib.
        //self.edgesForExtendedLayout = UIRectEdgeNone;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    */
    
    
    
    
    

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        billAmount = NSString(string: billField.text!).doubleValue
        //print(billAmount)
        if billAmount > 0 {
            UIView.animateWithDuration(0.28, animations: {
                /*var blackBackgroundFrame = self.blackBackground.frame
                blackBackgroundFrame.origin.y -= 250*/
                
                //let blackShift = self.blackBackground.frame.origin.y - 50
                //print(blackShift)
                
                print(self.billField.frame.origin.y)
                
                //self.dollarSign.hidden = true
                
                var blackBackgroundFrame = self.blackBackground.frame
                var tipControlFrame = self.tipControl.frame
                var billFieldFrame = self.billField.frame
                var dollarSignFrame = self.dollarSign.frame
                var tipLabelFrame = self.tipLabel.frame
                var totalLabelFrame = self.totalLabel.frame
                var equalsSignFrame = self.equalsSign.frame
                
                var forTwoFrame = self.forTwo.frame
                var forThreeFrame = self.forThree.frame
                var forFourFrame = self.forFour.frame
                
                var oneIconFrame = self.oneIcon.frame
                var twoIconFrame = self.twoIcon.frame
                var threeIconFrame = self.threeIcon.frame
                var fourIconFrame = self.fourIcon.frame
                
                
                print("tiplabel = \(self.tipLabel.frame.origin.y), totalLabel = \(self.totalLabel.frame.origin.y)")
                
                
                print("black is \(blackBackgroundFrame.origin.y)")
                print("tip is \(self.tipControl.frame.origin.y)")
                
                blackBackgroundFrame.origin.y = 220.0
                self.blackBackground.frame = blackBackgroundFrame
                
                tipControlFrame.origin.y = 177.0
                self.tipControl.frame = tipControlFrame
                
                billFieldFrame.origin.y = 94.0
                self.billField.frame = billFieldFrame
                
                dollarSignFrame.origin.y = 94.0
                self.dollarSign.frame = dollarSignFrame
                
                tipLabelFrame.origin.y = 8.0
                self.tipLabel.frame = tipLabelFrame
                
                totalLabelFrame.origin.y = 35.0
                self.totalLabel.frame = totalLabelFrame
                
                equalsSignFrame.origin.y = 47.0
                self.equalsSign.frame = equalsSignFrame
                
                
                forTwoFrame.origin.y = 149.0
                self.forTwo.frame = forTwoFrame
                
                forThreeFrame.origin.y = 184.0
                self.forThree.frame = forThreeFrame
                
                forFourFrame.origin.y = 218.0
                self.forFour.frame = forFourFrame
                
                
                oneIconFrame.origin.y = 11.0
                self.oneIcon.frame = oneIconFrame
                
                twoIconFrame.origin.y = 149.0 //109
                self.twoIcon.frame = twoIconFrame
                
                threeIconFrame.origin.y = 184.0
                self.threeIcon.frame = threeIconFrame
                
                fourIconFrame.origin.y = 218.0
                self.fourIcon.frame = fourIconFrame
                
                
                
                
                
                
                
                
                
                
                
                
                
                

                self.blackBackground.alpha = 1
                self.tipControl.alpha = 1
                self.tipLabel.alpha = 1
                self.totalLabel.alpha = 1
                self.equalsSign.alpha = 1
                
                self.forTwo.alpha = 1
                self.forThree.alpha = 1
                self.forFour.alpha = 1
                
                self.oneIcon.alpha = 1
                self.twoIcon.alpha = 1
                self.threeIcon.alpha = 1
                self.fourIcon.alpha = 1
                
                
            })
            
           /*UIView.animateWithDuration(0.01, animations: {

           })*/
            
        self.dollarSign.alpha = 0
            
        } else {
            UIView.animateWithDuration(0.28, animations: {
                
                //self.dollarSign.hidden = false
                
                //why do some values increase for up and decrease for down and others vice versa?
                
                var blackBackgroundFrame = self.blackBackground.frame
                var tipControlFrame = self.tipControl.frame
                var billFieldFrame = self.billField.frame
                var dollarSignFrame = self.dollarSign.frame
                var tipLabelFrame = self.tipLabel.frame
                var totalLabelFrame = self.totalLabel.frame
                var equalsSignFrame = self.equalsSign.frame
                
                var forTwoFrame = self.forTwo.frame
                var forThreeFrame = self.forThree.frame
                var forFourFrame = self.forFour.frame
                
                var oneIconFrame = self.oneIcon.frame
                var twoIconFrame = self.twoIcon.frame
                var threeIconFrame = self.threeIcon.frame
                var fourIconFrame = self.fourIcon.frame
                
                
                blackBackgroundFrame.origin.y = 306.0
                self.blackBackground.frame = blackBackgroundFrame
                
                tipControlFrame.origin.y = 263.0
                self.tipControl.frame = tipControlFrame
                
                billFieldFrame.origin.y = 180.0
                self.billField.frame = billFieldFrame
                
                dollarSignFrame.origin.y = 180.0
                self.dollarSign.frame = dollarSignFrame
                
                tipLabelFrame.origin.y = 94.0
                self.tipLabel.frame = tipLabelFrame
                
                totalLabelFrame.origin.y = 121.0
                self.totalLabel.frame = totalLabelFrame
                
                equalsSignFrame.origin.y = 133.0
                self.equalsSign.frame = equalsSignFrame
                
                
                forTwoFrame.origin.y = 234.0
                self.forTwo.frame = forTwoFrame
                
                forThreeFrame.origin.y = 270.0
                self.forThree.frame = forThreeFrame
                
                forFourFrame.origin.y = 304.0
                self.forFour.frame = forFourFrame
                
                
                oneIconFrame.origin.y = 97.0
                self.oneIcon.frame = oneIconFrame
                
                twoIconFrame.origin.y = 234.0
                self.twoIcon.frame = twoIconFrame
                
                threeIconFrame.origin.y = 270.0
                self.threeIcon.frame = threeIconFrame
                
                fourIconFrame.origin.y = 304.0
                self.fourIcon.frame = fourIconFrame
                

                
                self.blackBackground.alpha = 0
                self.tipControl.alpha = 0
                self.tipLabel.alpha = 0
                self.totalLabel.alpha = 0
                self.equalsSign.alpha = 0
                
                self.forTwo.alpha = 0
                self.forThree.alpha = 0
                self.forFour.alpha = 0
                
                self.oneIcon.alpha = 0
                self.twoIcon.alpha = 0
                self.threeIcon.alpha = 0
                self.fourIcon.alpha = 0
                
                //self.billField.text = "$"
                
                
            })
            /*UIView.animateWithDuration(0.01, animations: {

                
            })*/
            self.dollarSign.alpha = 1
        }
        
        //actual tipcalculations
        
        var tipPercentages = [0.18, 0.2, 0.22]
        tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]

        billAmount = NSString(string: billField.text!).doubleValue
        tip = billAmount * tipPercentage
        total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        forTwo.text = "$\(tip/2)"
        forThree.text = "$\(tip/3)"
        forFour.text = "$\(tip/4)"
        
        
        
        tipLabel.text = String(format: "+ $%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        forTwo.text = String(format: "+ $%.2f", tip/2.0)
        forThree.text = String(format: "+ $%.2f", tip/3.0)
        forFour.text = String(format: "+ $%.2f", tip/4.0)
        
        
        
        
        
        
            
            //billField.center = CGPointMake(view.frame.size.width, view.frame.size.height/2)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        //view.endEditing(true)
        billField.resignFirstResponder()
    }
    
    //
   
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // This is a good place to retrieve the default tip percentage from NSUserDefaults
        // and use it to update the tip amount
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipPercentage = defaults.doubleForKey("default_tip_percentage")
        var defaultIndex = 0
        if defaultTipPercentage == 0.18
        {
            defaultIndex = 0
        }else if defaultTipPercentage == 0.2
        {
            defaultIndex = 1
        }else{
            defaultIndex = 2
        }
        tipControl.selectedSegmentIndex = defaultIndex
        
        tipPercentage = defaultTipPercentage
        
        billAmount = NSString(string: billField.text!).doubleValue
        tip = billAmount * tipPercentage
        total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        forTwo.text = "$\(tip/2)"
        forThree.text = "$\(tip/3)"
        forFour.text = "$\(tip/4)"
        
        
        
        tipLabel.text = String(format: "+ $%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        forTwo.text = String(format: "+ $%.2f", tip/2.0)
        forThree.text = String(format: "+ $%.2f", tip/3.0)
        forFour.text = String(format: "+ $%.2f", tip/4.0)

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipPercentage, forKey: "new_default_tip_percentage")
        defaults.synchronize()
        
        
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

