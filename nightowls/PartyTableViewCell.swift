//
//  PartyTableViewCell.swift
//  nightowls
//
//  Created by James Cummings on 12/8/20.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    private let containerView = UIView()
    private let partyImageView = UIImageView()
    private let partyNameLabel = UILabel()
    private let startTimeLabel = UILabel()
    private let ratingLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
        
        setupViews()
        setupConstraints()
        
}
    
    func setupViews() {
        
    }
    
    func setupConstraints() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
