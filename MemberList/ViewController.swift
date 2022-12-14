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
    // 1. 2차 배열 -> 해당 방법으로 진행
    // 2. 1차 배열을 3개를 만든다.
    // 3. 1차 배열 안에 구조체를 넣는다.
    
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
        
        // navigation controller를 이용하여 화면 전환
//        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
//                as? SecondViewController else { return }
//        // .data, .text, .message 로 데이터 담아보기
//        secondViewController.
//        self.navigationController?.pushViewController(secondViewController, animated: true)
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
                
        return cell    // 리턴에 임시로 선언
    }
}

extension ViewController: UITableViewDelegate {

    // 테이블 뷰의 셀 하나를 터치 방식으로 삭제
//        userInfoList.remove(at: indexPath.row)
//        userInfoTableView.deleteRows(at: [indexPath], with: .middle)

    // 테이블 뷰의 셀 하나를 슬라이드 방식으로 삭제
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//
//        if editingStyle == .delete {
//            userInfoList.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//        }
//    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("NavigationView 전환")
        
        // navigation controller를 이용하여 화면 전환
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
                as? SecondViewController else { return }
        
        // 데이터 담기
        secondViewController.userName = self.userName.text ?? "<no_name>" // https://stackoverflow.com/questions/56435408/
        secondViewController.userContact = self.userContact.text ?? "<no_contact>"
        secondViewController.userMemo = self.userMemo.text ?? "<no_memo>"
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
            
    }

}
