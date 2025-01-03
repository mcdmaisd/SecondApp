//
//  UserTableViewController.swift
//  SecondApp
//
//  Created by ilim on 2025-01-03.
//

import UIKit

class UserTableViewController: UITableViewController {
    
    let name = ["고래밥", "칙촉", "카스타드"]
    // stackview hidden 잘 사용하면 복잡한 뷰 간단하게 처리 가능
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell // cell과 연결된 UITableViewCell class로 타입캐스팅
        
        cell.profileImageView.backgroundColor = .brown
        cell.nameLabel.text = name[indexPath.row]
        cell.messageLabel.text = "status message"
        cell.nameLabel.font = .boldSystemFont(ofSize: 30)
        
        cell.messageLabel.font = .boldSystemFont(ofSize: 20)
        
        return cell
    }

}
