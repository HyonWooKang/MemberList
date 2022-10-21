//
//  UserTableViewCell.swift
//  MemberList
//
//  Created by EnGiS_Spencer on 2022/10/19.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // 여기에 쓰는 게 아님
//    @IBAction func moveDetail(_ sender: UIButton) {
//        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? SecondViewController else { return }
//                // 화면 전환 애니메이션 설정
//
//
//            .modalTransitionStyle = .coverVertical
//                // 전환된 화면이 보여지는 방법 설정 (fullScreen)
//                secondViewController.modalPresentationStyle = .fullScreen
//                self.present(secondViewController, animated: true, completion: nil)
//
//
//
//      }
}
