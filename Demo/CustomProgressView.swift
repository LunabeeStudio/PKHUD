//
//  CustomProgressView.swift
//  PKHUD Demo
//
//  Created by Gregory Lussiana on 31/03/2020.
//  Copyright © 2020 NSExceptional. All rights reserved.
//

import UIKit

class CustomProgressView: UIView {

    var progressClosure : ((Float) -> Void)?
    
    @IBOutlet var label: UILabel!
    @IBOutlet var progressLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var imageView: UIImageView!
    
    open class func view() -> CustomProgressView {
        let view = Bundle.main.loadNibNamed("CustomProgressView", owner: nil, options: nil)?.first as! CustomProgressView
        return view
  }
}
