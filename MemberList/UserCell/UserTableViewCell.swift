//
//  UserTableViewCell.swift
//  MemberList
//
//  Created by EnGiS_Spencer on 2022/10/19.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var contactLabel: UILabel!
    
    @IBOutlet var memoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
