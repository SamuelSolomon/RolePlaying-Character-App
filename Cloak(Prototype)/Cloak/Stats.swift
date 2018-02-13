//
//  Stats.swift
//  Cloak
//
//  Created by Student on 12/19/17.
//  Copyright © 2017 Solomon. All rights reserved.
//

import UIKit

class Stats: UIViewController {
    var characterStatString = ""
    @IBOutlet var characterStat: UITextField! = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterStat.text = characterStatString
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveUnwind(_ sender: Any) {
        var characterTabBarTemp: CharacterTabBarViewController = self.tabBarController as! CharacterTabBarViewController
        characterTabBarTemp.saveUnwind()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
