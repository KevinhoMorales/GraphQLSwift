//
//  CitiesViewController.swift
//  GraphQLSwift
//
//  Created by Kevinho Morales on 5/5/25.
//

import UIKit

final class CitiesViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private lazy var viewModel: CitiesViewModel = {
        return CitiesViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    private func setUpView() {
        setUpCell()
        viewModel.getCities()
    }
    
    private func setUpCell() {
        let cell = UINib(nibName: String(describing: CityTableViewCell.self), bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: CityTableViewCell.CELL_ID)
        tableView.tableFooterView = UIView()
    }
}

extension CitiesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CityTableViewCell.self), for: indexPath) as! CityTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
}
