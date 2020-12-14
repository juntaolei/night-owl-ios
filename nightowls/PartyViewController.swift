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
    private let partyReuseIdentifier = "RestaurantReuseIdentifier"
    
    let FilterCellReuseIdentifier = "FilterCellReuseIdentifier"

    let padding: CGFloat = 10
    let headerHeight: CGFloat = 30
    
    //Restaurants
    let oneparty = Party(parname: "Sigma Alpha" , partype: "Lowkey", parimage: "sigma", parloc: "Collegetown")
    let otherparty = Party(parname: "Formal Frat" , partype: "Lowkey", parimage: "formal", parloc: "Collegetown")
    let party1 = Party(parname: "Freshman meet" , partype: "Lowkey", parimage: "is", parloc: "Ithaca")
    let party2 = Party(parname: "Wandering" , partype: "Lowkey", parimage: "sugma", parloc: "Campus")
  
    
    var parties: [Party] = []
    var updateres: [Party] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "My Restaurants"
        view.backgroundColor = .white
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
        partyTableView.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
        partyTableView.register(PartyTableViewCell.self, forCellReuseIdentifier: partyReuseIdentifier)
        view.addSubview(partyTableView)

        setupConstraints()
        
    }
    
    func setupConstraints() {

        NSLayoutConstraint.activate([
            partyTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            partyTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            partyTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            partyTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

extension PartyViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
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
