//
//  HomeCell.swift
//  FunnyStory
//
//  Created by admin on 3/12/17.
//  Copyright © 2017 Duan Nguyen. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    @IBOutlet weak var tvContent: UITextView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var ivIcon: UIImageView!

    var _story: StoryModel!
    var story: StoryModel {
        get {
            return _story
        }
        set (newValue) {
            _story = newValue
        
        }
    }
}
