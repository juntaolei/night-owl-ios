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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        containerView.layer.cornerRadius = 20
        containerView.layer.backgroundColor = UIColor.white.cgColor
        containerView.clipsToBounds = true
        containerView.layer.masksToBounds = true
        containerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(containerView)
        
        partyImageView.translatesAutoresizingMaskIntoConstraints = false
        partyImageView.clipsToBounds = true
        partyImageView.layer.masksToBounds = true
        partyImageView.contentMode = .scaleAspectFill
        containerView.addSubview(partyImageView)
        
        partyNameLabel.textColor = .black
        partyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        partyNameLabel.font = .boldSystemFont(ofSize: 18)
        containerView.addSubview(partyNameLabel)
        
        startTimeLabel.textColor = UIColor(red: 98/255, green: 98/255, blue: 98/255, alpha: 1)
        startTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        startTimeLabel.font = .systemFont(ofSize: 12)
        containerView.addSubview(startTimeLabel)
        
        ratingLabel.textColor = UIColor(red: 98/255, green: 98/255, blue: 98/255, alpha: 1)
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        ratingLabel.textAlignment = .right
        ratingLabel.font = .systemFont(ofSize: 12)
        containerView.addSubview(ratingLabel)
        
    }
    
    func setupConstraints() {
        
        let containerPadding: CGFloat = 20
        let padding: CGFloat = 10
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: containerPadding),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -containerPadding),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: containerPadding),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -containerPadding)
        ])
        
        NSLayoutConstraint.activate([
            partyImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            partyImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            partyImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            partyImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            partyNameLabel.topAnchor.constraint(equalTo: partyImageView.bottomAnchor, constant: padding),
            partyNameLabel.leadingAnchor.constraint(equalTo: partyImageView.leadingAnchor, constant: padding),
            partyNameLabel.trailingAnchor.constraint(equalTo: ratingLabel.leadingAnchor, constant: -padding)
        ])
        
        NSLayoutConstraint.activate([
            ratingLabel.centerYAnchor.constraint(equalTo: partyNameLabel.centerYAnchor),
            ratingLabel.leadingAnchor.constraint(equalTo: partyNameLabel.trailingAnchor, constant: padding),
            ratingLabel.trailingAnchor.constraint(equalTo: partyImageView.trailingAnchor, constant: -padding)
        ])
        
        NSLayoutConstraint.activate([
            startTimeLabel.topAnchor.constraint(equalTo: partyNameLabel.bottomAnchor, constant: padding/2),
            startTimeLabel.leadingAnchor.constraint(equalTo: partyNameLabel.leadingAnchor),
            startTimeLabel.trailingAnchor.constraint(equalTo: partyNameLabel.trailingAnchor)
        ])
        

        
    }
        
    func configure(for party: Party) {
        partyNameLabel.text = party.parname
        startTimeLabel.text = party.parname
        
//        partyImageView.text = party.parimage
        partyImageView.image = UIImage(named: party.parimage)
    }
    

}
