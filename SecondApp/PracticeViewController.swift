//
//  PracticeViewController.swift
//  SecondApp
//
//  Created by ilim on 2024-12-31.
//

import UIKit

class PracticeViewController: UIViewController {

    let colorList: [UIColor] = [.red, .black, .green, .yellow, .purple, .darkGray, .magenta]

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self, #function)
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print(self, #function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(self, #function)
        view.backgroundColor = colorList.randomElement()!

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(self, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(self, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(self, #function)
    }
    
    //스토리보드 연결x, 직접 타이핑
    @IBAction func unwindToPracticeViewController(_ sender: UIStoryboardSegue) { // 터널, unwind
        print(#function)
    }


}
