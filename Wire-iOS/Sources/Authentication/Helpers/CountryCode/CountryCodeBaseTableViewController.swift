// Wire
// Copyright (C) 2020 Wire Swiss GmbH
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see http://www.gnu.org/licenses/.
//

import Foundation

extension CountryCodeBaseTableViewController {

    override open func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(CountryCell.self, forCellReuseIdentifier: CountryCodeCellIdentifier)
    }

    @objc(configureCell:forCountry:)
    func configureCell(_ cell: UITableViewCell, for country: Country) {
        cell.textLabel?.text = country.displayName
        cell.detailTextLabel?.text = "+\(country.e164)"

        cell.accessibilityHint = "registration.phone.country_code.hint".localized
    }
}

final class CountryCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .value1, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
