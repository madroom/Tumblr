//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Madelyn Lee on 2/27/16.
//  Copyright © 2016 Madelyn Lee. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var feedImageView: UIImageView!
    
    @IBOutlet weak var loadingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        


        // Do any additional setup after loading the view.
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    override func viewWillAppear(animated: Bool) {
//        delay(2) {
//            self.feedImageView.alpha = 0
//            self.loadingView.alpha = 1
//        }
//
//       
//        
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        delay(2) {
//            self.feedImageView.alpha = 1
//            self.loadingView.alpha = 0
//        }
//
//     
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
