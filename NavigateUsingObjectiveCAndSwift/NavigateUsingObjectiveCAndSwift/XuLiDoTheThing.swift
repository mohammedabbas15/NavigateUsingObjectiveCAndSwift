//
//  XuLiDoTheThing.swift
//  NavigateUsingObjectiveCAndSwift
//
//  Created by Field Employee on 11/4/21.
//

import Foundation
import UIKit

class XuLiDoTheThing: UIViewController {
    
    var item: String = ""
    
    lazy var updateItem: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateItem.text = item
        view.addSubview(updateItem)
    }
}
