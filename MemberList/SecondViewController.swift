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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
