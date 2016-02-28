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
        
        textButtonOriginalCenter = textButton.center
        photoButtonOriginalCenter = photoButton.center
        quoteButtonOriginalCenter = quoteButton.center
        linkButtonOriginalCenter = linkButton.center
        chatButtonOriginalCenter = chatButton.center
        videoButtonOriginalCenter = videoButton.center
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        textButton.center = CGPoint(x: textButtonOriginalCenter.x, y: textButtonOriginalCenter.y + 500)
        photoButton.center = CGPoint(x: photoButtonOriginalCenter.x, y: photoButtonOriginalCenter.y + 500)
        quoteButton.center = CGPoint(x: quoteButtonOriginalCenter.x, y: quoteButtonOriginalCenter.y + 500)
        linkButton.center = CGPoint(x: linkButtonOriginalCenter.x, y: linkButtonOriginalCenter.y + 400)
        chatButton.center = CGPoint(x: chatButtonOriginalCenter.x, y: chatButtonOriginalCenter.y + 400)
        videoButton.center = CGPoint(x: videoButtonOriginalCenter.x, y: videoButtonOriginalCenter.y + 400)
        
    }
    
    
    
    
    
    override func viewDidAppear(animated: Bool) {
       
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.textButton.center = CGPoint(x: self.textButtonOriginalCenter.x, y: self.textButtonOriginalCenter.y)
        })
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.photoButton.center = CGPoint(x: self.photoButtonOriginalCenter.x, y: self.photoButtonOriginalCenter.y)
        })
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.quoteButton.center = CGPoint(x: self.quoteButtonOriginalCenter.x, y: self.quoteButtonOriginalCenter.y)
        })
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.linkButton.center = CGPoint(x: self.linkButtonOriginalCenter.x, y: self.linkButtonOriginalCenter.y)
        })
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.chatButton.center = CGPoint(x: self.chatButtonOriginalCenter.x, y: self.chatButtonOriginalCenter.y)
        })
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.videoButton.center = CGPoint(x: self.videoButtonOriginalCenter.x, y: self.videoButtonOriginalCenter.y)
        })
        
        
        
    }
    
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func nevermindDidTap(sender: UIButton) {
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.textButton.center = CGPoint(x: self.textButtonOriginalCenter.x, y: self.textButtonOriginalCenter.y - 500)
        })
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.photoButton.center = CGPoint(x: self.photoButtonOriginalCenter.x, y: self.photoButtonOriginalCenter.y - 500)
        })
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.quoteButton.center = CGPoint(x: self.quoteButtonOriginalCenter.x, y: self.quoteButtonOriginalCenter.y - 500)
        })
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.linkButton.center = CGPoint(x: self.linkButtonOriginalCenter.x, y: self.linkButtonOriginalCenter.y - 500)
        })
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.chatButton.center = CGPoint(x: self.chatButtonOriginalCenter.x, y: self.chatButtonOriginalCenter.y - 500)
        })
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.videoButton.center = CGPoint(x: self.videoButtonOriginalCenter.x, y: self.videoButtonOriginalCenter.y - 500)
        })
        

        
        delay(0.4, closure: { () -> () in
            self.textButton.hidden = true
            self.photoButton.hidden = true
            self.quoteButton.hidden = true
            self.linkButton.hidden = true
            self.chatButton.hidden = true
            self.videoButton.hidden = true

            self.dismissViewControllerAnimated(true, completion: nil)
        })
    }


}
