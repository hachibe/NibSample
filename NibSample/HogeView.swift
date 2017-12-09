//
//  HogeView.swift
//  NibSample
//
//  Created by hachibe on 2017/12/09.
//  Copyright © 2017年 Masanori. All rights reserved.
//

import UIKit

class HogeView: UIView {
    
    @IBOutlet weak var label: UILabel!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        instantiateFromNib()
    }
    
    override func awakeFromNib() {
        //
    }
    
    func instantiateFromNib() {
        let nib = UINib(nibName: "HogeView", bundle: Bundle(for: type(of: self)))
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        self.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}
