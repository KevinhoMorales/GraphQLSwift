//
//  CityTableViewCell.swift
//  GraphQLSwift
//
//  Created by Kevinho Morales on 5/5/25.
//

import UIKit

final class CityTableViewCell: UITableViewCell {

    @IBOutlet private weak var cityLabel: UILabel!
    
    static let CELL_ID = "CITY_CELL_ID"
    
    func setUpCell() {
        cityLabel.text = "Santo Domingo"
    }
    
}
