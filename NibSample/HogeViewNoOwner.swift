//
//  HogeViewNoOwner.swift
//  NibSample
//
//  Created by hachibe on 2017/12/09.
//  Copyright © 2017年 Masanori. All rights reserved.
//

import UIKit

class HogeViewNoOwner: UIView {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        //
    }
    
    static func instantiateFromNib() -> HogeViewNoOwner {
        let nib = UINib(nibName: "HogeViewNoOwner", bundle: Bundle.main)
        let view = nib.instantiate(withOwner: nil, options: nil).first as! HogeViewNoOwner
        return view
    }
}
