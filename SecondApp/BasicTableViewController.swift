//
//  BasicTableViewController.swift
//  SecondApp
//
//  Created by ilim on 2025-01-02.
//
// 모든 함수에 #function 출력하고 흐름볼것
import UIKit

class BasicTableViewController: UITableViewController {
    
    var list = ["프로젝트", "메인업무", "새싹과제"] {
        didSet { //프로퍼티가 달라질때 실행
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() { // vc를 상속받기 때문에 viewdidload가 존재
        super.viewDidLoad()
        //var monster = Monster() // 인스턴스 생성
        
        //print(monster.clothes)
        tableView.rowHeight = 80
    }
    // 셀의 갯수(섹션은 최소 1개는 존재해서 필수까지는 아님)
    // 총 몇개의 셀을 생성해야하는지 시스템에게 알려주기 위함
    @IBAction func randomTextTapped(_ sender: UIButton) {
        let random = ["1", "2", "3", "4", "5", "6"]
        list.append(random.randomElement() ?? "")
        //뷰와 데이터는 따로 놀아서 맞춰야함!!!!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        //데이터가 달라지면 뷰를 갱신한다
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return list.count
    }
    
    //셀 높이(옵션)
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        //cell 마다 한번씩 실행
//        //cell이 다 같은 높이일때는 필요없음
//        //다 같은 높이일때는 tableview.rowHeight 설정하는게 편함
//        print(#function, indexath.row)
//        return 80
//    }
    
    //셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        // title = textlabel, subtitle = detailTextlabel
        // indexpath가 없는 경우 identifier가 잘못입력되서 nil값이 있을수도 있어서 optional 대응이 필요함
        cell.textLabel?.text = list[indexPath.row]
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .gray
        } else {
            cell.backgroundColor = .white
        }
//        if indexPath.row == 0 {
//            cell.textLabel?.text = "프로젝트"
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = "쇼핑"
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = "메인업무"
//        } else {
//            cell.textLabel?.text = "오류"
//        }
        
        cell.detailTextLabel?.setPrimaryLabel("test")
        cell.textLabel?.textColor = .red
        cell.textLabel?.font = .systemFont(ofSize: 16)
        
        return cell
    }

}
