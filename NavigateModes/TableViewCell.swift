//
//  TableViewCell.swift
//  NavigateModes
//
//  Created by Yasmine on 6/21/19.
//  Copyright © 2019 Yasmine. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ImageNews: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var source: UILabel!
    
    @IBOutlet weak var desc: UILabel!    
    
    @IBOutlet weak var switchLbl: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
