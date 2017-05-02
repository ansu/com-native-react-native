//
//  FirstViewController.swift
//  demo
//
//  Created by Kuliza-282 on 02/05/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import UIKit



@objc class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
      let btn = UIButton(type: UIButtonType.custom) as UIButton
      btn.backgroundColor = UIColor.blue
      btn.setTitle("Open React Native", for: UIControlState.normal)
      btn.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
      btn.addTarget(self, action:#selector(clickMe), for:.touchUpInside)
      self.view.addSubview(btn)
      
     
    }

  func clickMe(sender:UIButton!)
  {
    
    let jsCodeLocation:NSURL = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index.ios", fallbackResource: nil) as NSURL
    
    let rootView: RCTRootView = RCTRootView.init(bundleURL: jsCodeLocation as URL!, moduleName: "demo", initialProperties: nil, launchOptions: nil)
    
    let viewController = UIViewController()
    
    
    viewController.view = rootView
//
//    let nav1 = UINavigationController()
//    nav1.viewControllers = [viewController]

    //self.navigationController?.pushViewController(nav1, animated: true)
    
//     rootView.bounds = UIScreen.main.bounds
//    rootView.layer.anchorPoint = CGPoint(x: 0, y: 0)
//
////    rootView.sizeFlexibility = RCTRootViewSizeFlexibility.widthAndHeight
//    self.view.addSubview(rootView)
//    if let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate {
//      appDelegate.goToReactNative()
    self.navigationController?.pushViewController(viewController, animated: true)
   // }
    
    //self.present(nav1, animated: true, completion: nil)
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
