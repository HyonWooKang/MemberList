//
//  SecondViewController.swift
//  MemberList
//
//  Created by EnGiS_Spencer on 2022/10/20.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userContactLabel: UILabel!
    @IBOutlet var userMemoLabel: UILabel!
    
    var userName: String = ""
    var userContact: String = ""
    var userMemo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 유저 값 담기
        userNameLabel.text = self.userName
        userContactLabel.text = self.userContact
        userMemoLabel.text = self.userMemo
    }
    
    @IBAction func moveBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
