//
//  ModalViewController.swift
//  SecondApp
//
//  Created by ilim on 2024-12-31.
//

import UIKit

class ModalViewController: UIViewController {

    let colorList: [UIColor] = [.red, .black, .green, .yellow, .purple, .darkGray, .magenta]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self, #function)
        view.backgroundColor = colorList.randomElement()!
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(self, #function)
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


}
