//
//  AddButton.swift
//  App
//
//  Created by cdv on 16.02.2023.
//

import UIKit

class AddButton: UIButton {
    
    override init(frame: CGRect) {
            super.init(frame: frame)

            layer.cornerRadius = 20
            layer.masksToBounds = true
            setTitleColor(UIColor.white, for: .normal)
            titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)

//        super.init(frame: frame)
//        self.setImage(UIImage(named: "Button"), for: .normal)
//        self.contentVerticalAlignment = .fill
//        self.contentHorizontalAlignment = .fill
    }
    
    override func layoutSubviews() {
            super.layoutSubviews()

        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = bounds
                gradientLayer.colors = [UIColor(red: 1, green: 0.47, blue: 0.47, alpha: 1).cgColor, UIColor(red: 1, green: 0.12, blue: 0.63, alpha: 1).cgColor]
                gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
                gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
                layer.insertSublayer(gradientLayer, at: 0)

                let borderLayer = CAShapeLayer()
                borderLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 20).cgPath
                borderLayer.lineWidth = 3
                borderLayer.strokeColor = UIColor.white.cgColor
                borderLayer.fillColor = UIColor.clear.cgColor
                layer.addSublayer(borderLayer)

                layer.shadowColor = UIColor(red: 1, green: 0.12, blue: 0.63, alpha: 1).cgColor
                layer.shadowOpacity = 0.5
                layer.shadowOffset = CGSize(width: 0, height: 2)
                layer.shadowRadius = 4
        
        let icon = NSAttributedString(string: "+", attributes: [.font: UIFont.systemFont(ofSize: 25, weight: .bold)])
                // let title = NSMutableAttributedString(string: " Add", attributes: [.font: UIFont.boldSystemFont(ofSize: 20)])
              //  title.append(icon)
                setAttributedTitle(icon, for: .normal)
            }

    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setButtonConstraints(view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: 60).isActive = true
        self.heightAnchor.constraint(equalToConstant: 60).isActive = true
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        

    }

}
