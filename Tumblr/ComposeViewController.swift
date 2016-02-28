//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Madelyn Lee on 2/27/16.
//  Copyright © 2016 Madelyn Lee. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    
    var textButtonOriginalCenter: CGPoint!
    var photoButtonOriginalCenter: CGPoint!
    var quoteButtonOriginalCenter: CGPoint!
    var linkButtonOriginalCenter: CGPoint!
    var chatButtonOriginalCenter: CGPoint!
    var videoButtonOriginalCenter: CGPoint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        textButton.center = CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>)
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
