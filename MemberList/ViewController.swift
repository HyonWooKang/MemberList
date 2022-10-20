//
//  ViewController.swift
//  MemberList
//
//  Created by EnGiS_Spencer on 2022/10/18.
//

import UIKit

// Main
class ViewController: UIViewController {

    @IBOutlet var addUser: UIView!
    @IBOutlet var userInfoTableView: UITableView!
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var userContact: UITextField!
    @IBOutlet var userMemo: UITextField!
    
    // 1차 배열
//    var userInfoList = [String]()
    
    // 2차 배열 선언
    var userInfoList: [[String]] = []
    
    
//    [[], [], []]
    // 1. 2차 배열
    // 2. 1차 배열을 3개를 만든다.
    // 3. 1차 배열 안에 구조체를 넣는다.
    
    // 삭제 순서
    // 1. 사용자 지우고 싶은 row를 터치
    // 2. row 자리를 받아야겠다. ex indexPat.row, section, 터치좌표
    // 3. row 자리를 확인했다.
    // 4. row 이용해서 리스트속 해당 밸류 remove, .
    // 5. 삭제가 완료되면 reloadData
    // 6. 최종 완료
    
    // 20알 오전까지 진행
    
    var name: String = ""
    var contact: String = ""
    var memo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // addUser.isHidden = true;
        
        // table veiw 설정
        userInfoTableView.dataSource = self
        userInfoTableView.delegate = self
        
        
        self.userInfoTableView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")

    }


    
    @IBAction func openAddView(_ sender: Any) {
        //addUser.isHidden = false
    }
    
    @IBAction func addConfirm(_ sender: Any) {
        
        // guard let, if let
        // null
        // optional
        // [[], [], []]
        
        var tempUserInfo: [String] = []
        
        if let name = userName.text {
            tempUserInfo.append(name)
        }
        
        if let contact = userContact.text {
            tempUserInfo.append(contact)
        }
        
        if let memo = userMemo.text {
            tempUserInfo.append(memo)
        }
        
        // 최종 사람을 담는다.
        self.userInfoList.append(tempUserInfo)
        
        // 테이블 뷰를 다시 그린다.
        self.userInfoTableView.reloadData()
    }
}

// dataSource 관리
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userInfoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.userInfoTableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        
        
        
        cell.nameLabel.text = self.userInfoList[indexPath.row][0]
        cell.contactLabel.text = self.userInfoList[indexPath.row][1]
        cell.memoLabel.text = self.userInfoList[indexPath.row][2]
                
        return cell    // 리턴에 임시로 선언
    }
}

extension ViewController: UITableViewDelegate {
    
    
    
}
