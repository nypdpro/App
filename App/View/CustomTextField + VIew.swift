//
//  CustomTextField + VIew.swift
//  App
//
//  Created by cdv on 16.02.2023.
//

import UIKit


class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        let font = UIFont.boldSystemFont(ofSize: 28)
        self.font = font
        self.autocorrectionType = .no
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.black
        ]
        self.attributedPlaceholder = NSAttributedString(string: "Title", attributes: attributes)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

class CustomtextView: UITextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        self.translatesAutoresizingMaskIntoConstraints = false
        let font = UIFont.systemFont(ofSize: 20)
        self.font = font
        self.autocorrectionType = .no
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

