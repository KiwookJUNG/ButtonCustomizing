//
//  ViewController.swift
//  ButtonCustomizing
//
//  Created by 정기욱 on 14/02/2019.
//  Copyright © 2019 Kiwook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var subject : UILabel! // UILabel을 사용하기 위한 변수, 클래스 내부 어디에서라도 사용가능하도록 멤버 변수로 선언
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.subject = UILabel()
        self.subject.frame = CGRect(x: 100, y: 400, width: 150, height: 30)
        // 라벨의 인스턴스를 생성한후 변수에 대입, 그 이후 위치와 크기를 대입해준후 frame에 넣어준다.
        self.sayHello(subject) // subject 라벨에 텍스트를 대입해준다.
        
        self.view.addSubview(subject) // 루트 뷰에 라벨을 추가한다
        
        
        // 버튼 인스턴스를 생성하고, 속성을 설정함
        
        let btn = UIButton(type: UIButton.ButtonType.system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.setTitle("테스트 버튼", for: UIControl.State.normal)
        
        // 버튼을 수평 중앙 정렬.
        btn.center = CGPoint(x: self.view.frame.size.width / 2 , y: 100)
        
    
        self.view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(btnOnClick(_:)), for: .touchUpInside)
    
    }
    
    @objc func btnOnClick(_ sender: Any) {
        // 호출한 객체가 버튼이라면
        if let btn = sender as? UIButton {
            btn.setTitle("클릭되었습니다.", for: UIControl.State.normal)
        }
    }
    
    @objc func sayHello(_ sender: Any) {
        self.subject.text = "HELLOOOOOOOOOO" // 라벨에 들어갈 텍스트를 저장해주는 함수.
    }
    
    
}

