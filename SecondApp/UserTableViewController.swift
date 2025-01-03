//
//  UserTableViewController.swift
//  SecondApp
//
//  Created by ilim on 2025-01-03.
//

import UIKit
import Kingfisher

struct Friend {
    let name: String
    let message: String
    let profileImage: String
}

class UserTableViewController: UITableViewController {
    // stackview hidden 잘 사용하면 복잡한 뷰 간단하게 처리 가능
    let friends = FriendsInfo().list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell // cell과 연결된 UITableViewCell class로 타입캐스팅
        let row = indexPath.row
        cell.profileImageView.backgroundColor = .brown
        cell.profileImageView.tintColor = .black
        cell.nameLabel.text = friends[row].name
        if let message = friends[row].message {
            cell.messageLabel.text = message
        } else {
            cell.messageLabel.isHidden = true
        }
        if let phone = friends[row].phone {
            cell.phoneLabel.text = String(phone)
        } else {
            cell.phoneLabel.isHidden = true
        }
        if let image = friends[row].profile_image {
            cell.profileImageView.kf.setImage(with: URL(string: image))
        } else {
            cell.profileImageView.image = UIImage(systemName: "person")
        }
        let image = friends[row].like ? "heart.fill" : "heart"
        cell.likeButton.setImage(UIImage(systemName: image), for: .normal)
        cell.likeButton.tintColor = .systemPink
        
        cell.nameLabel.font = .boldSystemFont(ofSize: 30)
        cell.messageLabel.font = .boldSystemFont(ofSize: 20)
        
        return cell
    }

}
