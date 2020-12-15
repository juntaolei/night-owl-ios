//
//  PartyViewController.swift
//  nightowls
//
//  Created by James Cummings on 12/8/20.
//

import UIKit

protocol forfilter: class{
    func check(type: String)
}

protocol NameDelegate: class{
    func change()
}

class PartyViewController: UIViewController {

    var tableView: UITableView!
    var partycollectionView: UICollectionView!
    var changelayout: UIButton!

    private let partyTableView = UITableView()
    private let partyReuseIdentifier = "PartyReuseIdentifier"
    
    let FilterCellReuseIdentifier = "FilterCellReuseIdentifier"

    let padding: CGFloat = 10
    let headerHeight: CGFloat = 30
    
    //Parties
    let oneparty = Party(parname: "Sigma Alpha Neon Night" , partype: "Rager", parimage: "neighbors", parloc: "North Campus", partime: "9:00PM", parrate: "4.5/5.0" )
    let otherparty = Party(parname: "Winter Formal" , partype: "Fun", parimage: "BTTF", parloc: "Johnson Atrium", partime: "11:00PM", parrate: "3.5/5.0" )
    let party1 = Party(parname: "Freshman Meet-up" , partype: "Lowkey", parimage: "Meetup", parloc: "Ithaca Commons", partime: "6:00PM", parrate: "2.7/5.0" )
    let party2 = Party(parname: "Beer Mile" , partype: "Fitness", parimage: "BM", parloc: "Campus", partime: "1:00PM", parrate: "3.75/5.0" )
  
    
    var parties: [Party] = []
    var updateres: [Party] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.22, green: 0.28, blue: 0.40, alpha: 1.00)
        
        
        title = "Today's Activites"
        parties = [oneparty, otherparty, party1, party2]
        updateres = parties
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = padding
        layout.minimumLineSpacing = padding
        
        partyTableView.delegate = self
        partyTableView.dataSource = self
        partyTableView.translatesAutoresizingMaskIntoConstraints = false
        partyTableView.separatorStyle = .none
        partyTableView.backgroundColor = UIColor(red: 0.22, green: 0.28, blue: 0.40, alpha: 1.00)
        partyTableView.register(PartyTableViewCell.self, forCellReuseIdentifier: partyReuseIdentifier)
        view.addSubview(partyTableView)

        setupConstraints()
        
    }
    
    func setupConstraints() {

        NSLayoutConstraint.activate([
            partyTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            partyTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            partyTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            partyTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

extension PartyViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let party = parties[indexPath.row]
        let partyViewController = PartyCollectionViewCell(party: party)
        navigationController?.pushViewController(partyViewController, animated: true)
    }
        
    }

extension PartyViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: partyReuseIdentifier) as? PartyTableViewCell else { return UITableViewCell() }
        let party = parties[indexPath.row]
        cell.configure(for: party)
        return cell
    }
}
