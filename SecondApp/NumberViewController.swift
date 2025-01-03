//
//  NumberViewController.swift
//  SecondApp
//
//  Created by ilim on 2024-12-30.
//

import UIKit

class NumberViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewBackgroundColor()
        dateLabel.text = getToday()
        
        //print(NSHomeDirectory())
        numberTextField.text = UserDefaults.standard.string(forKey: "number")
    }
    //swift 5.1+ 반환값 생략 가능(1줄일때만): Implicit returns(암묵적 반환)
    @discardableResult//반환값을 사용하지 않아도 에러메세지 발생x, swift에서는 @ = attributes
    func getToday() -> String {
        let format = DateFormatter()
        format.dateFormat = "yy년 MM월 dd일"
        
        let today = format.string(from: Date())
            
        return today
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        //textfield 내용 저장, 수정도 set으로 진행(덮어쓰기 개념)
        UserDefaults.standard.set(numberTextField.text, forKey: "number")
        //저장 성공 알림
        /*
         1. 타이틀 + 메시지
         2. 액션버튼
         3. 본문에 버튼 추가, 여러개 추가하면 추가한 순서대로 왼쪽부터 붙는데, 3개부터는 세로로 쌓임 이때는 맨위부터 쌓임, cancel의 경우에는 순서에 상관없이 마지막에 붙음(2개의 경우는 왼쪽에 붙음)
         4. 화면에 띄우기
         */
        // title, message의 빈문자열과 nil은 다름 nil은 해당영역 자체가 렌더링이 안됨
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let okAction1 = UIAlertAction(title: "OK1", style: .default)
        let okAction2 = UIAlertAction(title: "OK2", style: .cancel)
        //cancel은 오직 1개만 허용되고 위치가 지정되어 있어서 2개이상 add하면 앱 죽음
        let okAction3 = UIAlertAction(title: "OK", style: .default)
        //actionsheet는 cancel이 있어야 별도의 확인 버튼이 나옴 없으면 그냥 alert처럼 생긴게 나옴
        alert.addAction(okAction1)
        alert.addAction(okAction2)
        alert.addAction(okAction3)
        
        present(alert, animated: true)
        print(#function)
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        //실시간 레이블에 내용 반영
        //1. 숫자면 그대로 출력
        //2. 숫자 아니면 숫자가 아닙니다 출력
        let senderText = sender.text
        
//        if let number = Int(senderText!) {
//            resultLabel.text = "\(number)"
//        } else {
//            resultLabel.text = "숫자가 아닙니다!"
//        }
        // optional string -> string
        guard let text = senderText else {
            resultLabel.text = "숫자가 아닙니다!"
            return
        }
        //string -> Int
        if Int(text) != nil {
            print(Int(text)!)
        } else {
            print("not number")
        }
        
//        if let IntText = Int(text) {
//            resultLabel.text = "\(IntText)"
//        } else {
//            resultLabel.text = "숫자가 아닙니다!"
//        }
        
        guard let Inttext = Int(text) else {
            print("nil이에요")
            return
        }
        
        print(Int(text))
    }
}
