//
//  ViewController.swift
//  ButtonCustomizing
//
//  Created by 정기욱 on 14/02/2019.
//  Copyright © 2019 Kiwook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 버튼 인스턴스를 생성하고, 속성을 설정함
        let btn = UIButton(type: UIButton.ButtonType.system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.setTitle("테스트 버튼", for: UIControl.State.normal)
        
        // 버튼을 수평 중앙 정렬.
        btn.center = CGPoint(x: self.view.frame.size.width / 2 , y: 100)
        
        self.view.addSubview(btn)
        
        
    }


}

