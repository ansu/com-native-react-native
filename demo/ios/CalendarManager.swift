//
//  CalendarManager.swift
//  demo
//
//  Created by Kuliza-282 on 02/05/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import UIKit

// CalendarManager.swift

@objc(CalendarManager)
class CalendarManager: NSObject {
  
//  @objc override func supportedEvents() -> [String]! {
//    return ["EventReminder"];
//  }
  
  @objc func methodQueue() ->  DispatchQueue {
    return DispatchQueue.main
  }
  
  @objc(addEvent:location:date:)
  func addEvent(name: String, location: String, date: NSNumber) -> Void {
    // Date is ready to use!
    NSLog("%@ %@ %@", name, location, date)
    
    
  }
  
  @objc func pushVC(){
    let firstVC = SecondViewController()
    let navVC:UINavigationController =  UIApplication.shared.delegate?.window??.rootViewController as! UINavigationController
    navVC.pushViewController(firstVC, animated: true)
   // UIApplication.shared.delegate?.window??.rootViewController?.present(firstVC, animated: true, completion: nil)
  }

  
  
}
