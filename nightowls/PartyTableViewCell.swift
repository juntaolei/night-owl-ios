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
    private let partyLocation = UILabel()
    private let partyType = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
//        backgroundColor = .white
        backgroundColor = UIColor(red: 0.22, green: 0.28, blue: 0.40, alpha: 1.00)
        
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
        partyImageView.layer.cornerRadius = 5
        partyImageView.clipsToBounds = true
        partyImageView.layer.masksToBounds = true
        partyImageView.contentMode = .scaleAspectFill
        containerView.addSubview(partyImageView)
        
        partyNameLabel.textColor = .black
        partyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        partyNameLabel.font = UIFont(name: "Helvetica-Bold", size: 20)
        containerView.addSubview(partyNameLabel)
        
        startTimeLabel.textColor = .black
        startTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        startTimeLabel.font = UIFont(name: "Helvetica", size: 13)
        containerView.addSubview(startTimeLabel)
        
        ratingLabel.textColor = .black
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        ratingLabel.textAlignment = .right
        ratingLabel.font = UIFont(name: "Helvetica", size: 13)
        containerView.addSubview(ratingLabel)
        
        partyLocation.textColor = .black
        partyLocation.translatesAutoresizingMaskIntoConstraints = false
        partyLocation.font = UIFont(name: "Helvetica", size: 13)
        containerView.addSubview(partyLocation)
        
        partyType.textColor = .black
        partyType.translatesAutoresizingMaskIntoConstraints = false
        partyType.font = UIFont(name: "Helvetica", size: 13)
        containerView.addSubview(partyType)
        
        
        
    }
    
    func setupConstraints() {
        
        let containerPadding: CGFloat = 10
        let padding: CGFloat = 15
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: containerPadding),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -containerPadding),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: containerPadding),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -containerPadding)
        ])
        
        NSLayoutConstraint.activate([
            partyImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            partyImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            partyImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            partyImageView.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            partyNameLabel.topAnchor.constraint(equalTo: partyImageView.bottomAnchor, constant: 5),
            partyNameLabel.leadingAnchor.constraint(equalTo: partyImageView.leadingAnchor),
            partyNameLabel.trailingAnchor.constraint(equalTo: ratingLabel.leadingAnchor)
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
        
        NSLayoutConstraint.activate([
            partyLocation.topAnchor.constraint(equalTo: startTimeLabel.bottomAnchor, constant: padding/2),
            partyLocation.leadingAnchor.constraint(equalTo: partyNameLabel.leadingAnchor),
            partyLocation.trailingAnchor.constraint(equalTo: partyNameLabel.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            partyType.topAnchor.constraint(equalTo: partyLocation.bottomAnchor, constant: padding/2),
            partyType.leadingAnchor.constraint(equalTo: partyNameLabel.leadingAnchor),
            partyType.trailingAnchor.constraint(equalTo: partyNameLabel.trailingAnchor)
        ])

        
    }
        
    func configure(for party: Party) {
        partyNameLabel.text = party.parname
        startTimeLabel.text = party.partime
        ratingLabel.text = party.parrate
        partyLocation.text = party.parloc
        partyType.text = party.partype
        
        
//        partyImageView.text = party.parimage
        partyImageView.image = UIImage(named: party.parimage)
    }
    

}
