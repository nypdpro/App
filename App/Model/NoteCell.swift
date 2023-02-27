//
//  NoteCell.swift
//  App
//
//  Created by cdv on 16.02.2023.
//

import UIKit

class NoteCell: UITableViewCell {
    
    static let id = "NoteCell"
    private var note: Note?
    var dateLabel: UILabel!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .systemBackground
        textLabel?.font = .systemFont(ofSize: 24, weight: .semibold)
        detailTextLabel?.font = .systemFont(ofSize: 20, weight: .regular)
        setupDateLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    private func setupDateLabel() {
        dateLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 74, height: 50))
        dateLabel.textAlignment = .right
        accessoryView = dateLabel

        dateLabel.textColor = .black
        dateLabel.font = .systemFont(ofSize: 14)
    }
        
    
    
    func configureLabels() {
        
        self.textLabel?.text = note?.title ?? ""
        self.detailTextLabel?.text = note?.text ?? ""
    }
    
    func configure(note: Note) {
        self.note = note
    }
    
    func prepareNote() {
        self.note = nil
    }
}



extension UILabel {
    func animateIn() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
        self.alpha = 1.0
        }, completion: nil)
    }
    
    func animateOut() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: nil)
    }
}
