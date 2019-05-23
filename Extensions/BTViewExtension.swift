//
//  BTViewExtension.swift
//  BTTBaseFramework
//
//  Created by gjm on 2019/5/14.
//  Copyright © 2019 gjm. All rights reserved.
//

import Foundation

protocol BTNibLoadable {
    
}

extension BTNibLoadable where Self : UIView {
    
    static func loadFromNib(_ nibName: String? = nil) -> Self {
        let loadname = nibName == nil ? "\(self)":nibName
        return Bundle.main.loadNibNamed(loadname!, owner: nil, options: nil)?.first as! Self
    }
    
    static func loadFromNib(_ nibName:String? = nil,bundlePath:String) -> Self {
        let className = nibName == nil ? "\(self)":nibName
        let bundle:Bundle = Bundle(path: Bundle.main.path(forResource: bundlePath, ofType: "bundle")!)!
        let nib:UINib = UINib(nibName: className!, bundle: bundle)
        return nib.instantiate(withOwner: nil, options: nil).first as! Self
    }
}
