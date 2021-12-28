//
//  Cell.swift
//  UILabel-LineBreak-Bug
//
//  Created by Anisimov Aleksandr on 28.12.2021.
//

import UIKit

final class Cell: UITableViewCell {
    
    private lazy var label = UILabel()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        label.lineBreakMode = .byClipping
        
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        contentView.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 16).isActive = true
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        contentView.bottomAnchor.constraint(equalTo: label.bottomAnchor, constant: 8).isActive = true
    }
}

extension Cell {
    
    struct Configuration: Hashable {
        let text: String
        let numberOfLines: Int
    }
    
    func configure(with configuration: Configuration) {
        label.text = configuration.text
        label.numberOfLines = configuration.numberOfLines
    }
}
