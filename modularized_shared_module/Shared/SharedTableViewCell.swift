//
//  SharedTableViewCell.swift
//  modularized_shared_module
//
//  Created by Anton Aleksieiev on 07.01.2023.
//

import UIKit
import SnapKit

public class SharedTableViewCell: UITableViewCell {
    
    public static let reuseIdentifier = "SharedTableViewCell"
    
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        [titleLabel, subtitleLabel].forEach(addSubview)
        configureTitle()
        configureSubtitle()
    }
    
    public func update(with item: SharedDisplayItem, selected: Bool, selectedColor: UIColor) {
        self.titleLabel.text = item.title
        self.subtitleLabel.text = item.subtitle
        self.subtitleLabel.isHidden = item.subtitle == nil
        self.backgroundColor = selected ? selectedColor : .white
    }
    
    func configureTitle() {
        titleLabel.font = .systemFont(ofSize: 16, weight: .medium)
        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 1
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(20)
            make.top.bottom.equalToSuperview().inset(8)
        }
    }
    
    func configureSubtitle() {
        subtitleLabel.font = .systemFont(ofSize: 14, weight: .regular)
        subtitleLabel.textAlignment = .right
        subtitleLabel.textColor = .black
        subtitleLabel.numberOfLines = 1
        
        subtitleLabel.snp.makeConstraints { make in
            make.left.equalTo(titleLabel).offset(8)
            make.right.equalToSuperview().inset(20)
            make.top.bottom.equalToSuperview().inset(8)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
