//
//  DemoViewController.swift
//  PKHUD Demo
//
//  Created by Philip Kluz on 6/18/14.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//

import UIKit
import PKHUD

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
// if #available(iOS 13.0, *) {
//        PKHUD.sharedHUD.effect = UIBlurEffect(style: .prominent)
//        HUD.dimsBackground = true
//        HUD.allowsInteraction = false
//        HUDConfig.mainColor = UIColor.label
//
//            HUDConfig.subtitleColor = .label
//
//        }
//        PKHUD.sharedHUD.leadingMargin = 8
//        PKHUD.sharedHUD.trailingMargin = 8
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         //HUD.show(.labeledProgress(title: "This tesx sd fqs dfsqfd qs", subtitle: "qsdfj qsdfjqsldfk qsfd sqdf jsqdf  qs"))
    }

    @IBAction func showAnimatedSuccessHUD(_ sender: AnyObject) {

        HUD.flash(.labeledSuccess(title: "Gregé", subtitle: "HOUOIUOUO"), delay: 2.0)
    }

    @IBAction func showAnimatedErrorHUD(_ sender: AnyObject) {
        HUD.show(.error)
        HUD.hide(afterDelay: 2.0)
    }

    
   
    
    @IBAction func showAnimatedProgressHUD(_ sender: AnyObject) {
        
        let progressView = CustomProgressView.view()
        
        HUD.show(.customView(view: progressView))
        progressView.progressBar.progress = 0
        progressView.progressLabel.text = "0 %"
        
        delay(0.5) {
            progressView.progressBar.progress = 0.10
            progressView.progressLabel.text = "10 %"
        }
        delay(1) {
            progressView.progressBar.progress = 0.20
            progressView.progressLabel.text = "20 %"
        }
        delay(1.5) {
            progressView.progressBar.progress = 0.30
            progressView.progressLabel.text = "30 %"
        }
        delay(2) {
            progressView.progressBar.progress = 1
            progressView.progressLabel.text = "100 %"
        }
//        delay(2.5) {
//            HUD.hide()
//        }
        
//
//        // Now some long running task starts...
//        delay(2.0) {
//            // ...and once it finishes we flash the HUD for a second.
//            HUD.flash(.success, delay: 1.0)
//        }
    }

    @IBAction func showCustomProgressHUD(_ sender: AnyObject) {
        HUD.flash(.rotatingImage(UIImage(named: "progress")), delay: 2.0)
    }

    @IBAction func showAnimatedStatusProgressHUD(_ sender: AnyObject) {
        HUD.flash(.labeledProgress(title: "Title", subtitle: "Subtitle"), delay: 2.0)
    }

    @IBAction func showTextHUD(_ sender: AnyObject) {
        HUD.flash(.label("Requesting Licence…"), delay: 2.0) { _ in
            print("License Obtained.")
        }
    }

    /*
    
    Please note that the above demonstrates the "porcelain" interface - a more concise and clean way to work with the HUD.
    If you need more options and flexbility, feel free to use the underlying "plumbing". E.g.:
    
    PKHUD.sharedHUD.show()
    PKHUD.sharedHUD.contentView = PKHUDSuccessView(title: "Success!", subtitle: nil)
    PKHUD.sharedHUD.hide(afterDelay: 2.0)
    */

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.allButUpsideDown
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func delay(_ delay: Double, closure:@escaping () -> Void) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
}
