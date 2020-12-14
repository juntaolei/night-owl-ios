//
//  PartyCollectionViewCell.swift
//  nightowls
//
//  Created by Elvis Marcelo on 12/13/20.
//

//import Foundation
import UIKit

class PartyCollectionViewCell: UIViewController{
    
    private let containerView = UIView()
    var PartyimageView: UIImageView!
    var parname: UITextField!
    var ftype: UITextField!
    
    private var party: Party!
    private let partyImageView = UIImageView()
    private let partynameLabel = UILabel()

    init(party: Party) {
        super.init(nibName: nil, bundle: nil)
        self.party = party
    }
    
    override func viewDidLoad() {
        
        
        view.backgroundColor = .white
        
        partyImageView.translatesAutoresizingMaskIntoConstraints = false
        
        PartyimageView.image = UIImage(named: party.parimage)
        partyImageView.contentMode = .scaleAspectFill
        partyImageView.layer.masksToBounds = true
        view.addSubview(partyImageView)
        
        partynameLabel.text = party.parname
        partynameLabel.translatesAutoresizingMaskIntoConstraints = false
        partynameLabel.numberOfLines = 0
        partynameLabel.font = .boldSystemFont(ofSize: 36)
        view.addSubview(partynameLabel)

        setupConstraints()

    }
    
    func configure(party: Party) {
        PartyimageView.image = UIImage(named: party.parimage)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        
        let padding: CGFloat = 10

        NSLayoutConstraint.activate([
            partyImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            partyImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            partyImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            partyImageView.heightAnchor.constraint(equalToConstant: 300)
        ])
        

        NSLayoutConstraint.activate([
            partynameLabel.topAnchor.constraint(equalTo: partyImageView.bottomAnchor, constant: padding),
            partynameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            partynameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
        
    }
}
