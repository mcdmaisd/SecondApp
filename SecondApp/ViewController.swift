//
//  ViewController.swift
//  SecondApp
//
//  Created by ilim on 2024-12-30.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    @IBOutlet var wordTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var recommendButton: UIButton!
    
    @IBOutlet var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isUserInteractionEnabled = true
        optional()
        
        let url = URL(string: "https://w7.pngwing.com/pngs/869/485/png-transparent-google-logo-computer-icons-google-text-logo-google-logo.png")
        imageview.kf.setImage(with: url)
        }
    /*
     1. optional unwrapping
        1. if
        2. optional binding: if let, guard
     */
    
    func optional() {
        var nickname: String? = "새우깡"
        var age: Int? = 22
        nickname = nil
        print(nickname ?? "")
        
        if let nickname {
            print("\(nickname)으로 설정")
        } else {
            print("닉네임 문제있어")
        }
        // let 변수의 의미는 변수가 nil이 아니면 true 맞으면 false임
        if let age { // 굳이 할당 필요 없이 이렇게 해도 됨
            print(age)
        } else {
            print("나이가 nil입니다")
        }
        
        guard let age else {
            print("asdfsadf")
            return
        } // early exit -> why? 뒤에는 non optional type이라서 nil일 경우 실행되는 순간 앱이 종료되기 때문에 그런 경우의수를 제거하기 위해 바로 return
        print(age)//guard 이후에는 non optional type이다
        //4. optional chaining
        wordTextField.text?.count // ? 왼쪽이 nil이면 그 뒤 코드는 실행x
        // 이 코드를 풀어쓰면
        if let text = wordTextField.text {
            print(text.count)
        }
    }
    
    // interaction enabled가 비활성화되어있는 view는 gesture설정해도 무의미
    // isUserInteractionEnabled = true 필요
    @IBAction func labelTapped(_ sender: UITapGestureRecognizer) {
        print(#function)
    }
    //did end on exit -> keyboard dismiss 기능 기본 탑재
    @IBAction func returnKeyTapped(_ sender: UITextField) {
        let text = wordTextField.text! // 강제언래핑해도 nil 발생할 확률 0
        //count == 0은 공백을 잡아내지 못함
        if text.count == 0 {
            resultLabel.text = "Please input word"
        } else if text == "jmt" {
            resultLabel.text = "ㅈㅁㅌ"
        } else {
            resultLabel.text = "\(text)로 입력함"
        }
    }
}

