//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Brian Wang on 12/31/15.
//  Copyright © 2015 wangco. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultControl: UISegmentedControl!
    
    
    var defaultPercentage: Double = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editedDefault(sender: AnyObject) {
        var defaultPercentages = [0.18, 0.2, 0.22]
        defaultPercentage = defaultPercentages[defaultControl.selectedSegmentIndex]
        print(defaultPercentage)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(defaultPercentage, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipPercentage = defaults.doubleForKey("new_default_tip_percentage")
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
        defaultControl.selectedSegmentIndex = defaultIndex
        
        defaultPercentage = defaultTipPercentage
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
