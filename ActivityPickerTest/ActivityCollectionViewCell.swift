//
//  ActivityCollectionViewCell.swift
//  ActivityPickerTest
//
//  Created by swstation on 10/30/18.
//  Copyright © 2018 SoftwareStation. All rights reserved.
//

import UIKit

enum ActivityCellState {
    case door
    case selected
    case none
}

class ActivityCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var cellLabel: UILabel!
    
    var state: ActivityCellState = .none
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setState(state)
    }
    
    func setState(_ activityState: ActivityCellState) {
        self.state = activityState
        let colorForView: UIColor
        switch state {
            
        case .door:
            colorForView = .red
            
        case .selected:
            colorForView = .blue
            
        default:
            colorForView = .lightGray
        }
        cellView.backgroundColor = colorForView
    }
    
    func setup(text: String) {
        cellLabel.text = text
    }
    
    override var isSelected: Bool {
       didSet {
//        if isSelected {
//            self.setState(ActivityCellState.selected)
//        }
        }
    }
    
}
