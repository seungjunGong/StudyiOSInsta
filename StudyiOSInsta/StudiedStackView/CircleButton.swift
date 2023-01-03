//
//  File.swift
//  StudyiOSInsta
//
//  Created by ho on 2023/01/03.
//

import Foundation
import UIKit

// 인터페이스 빌더에서 디자인으로 확인 가능하겠끔 하는 어노테이션
@IBDesignable
class CircleButton: UIButton {
    
    // IBInspectable 인스펙터 패널에서 사용될 수 있도록 설정
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
