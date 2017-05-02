//
//  SecondViewController.swift
//  demo
//
//  Created by Kuliza-282 on 02/05/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      self.view.backgroundColor = UIColor.lightGray
      // Do any additional setup after loading the view.
      let btn = UIButton(type: UIButtonType.custom) as UIButton
      btn.backgroundColor = UIColor.blue
      btn.setTitle("Open First Controller", for: UIControlState.normal)
      btn.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
      btn.addTarget(self, action:#selector(clickMe), for:.touchUpInside)
      self.view.addSubview(btn)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  func clickMe(sender:UIButton!)
  {
    let navVC:UINavigationController =  UIApplication.shared.delegate?.window??.rootViewController as! UINavigationController
    navVC.popToRootViewController(animated: true)
    
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
