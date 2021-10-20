//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Jonas Jacobs on 10/17/21.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func update(with book: Book) {
        titleLabel.text = book.title
        lengthLabel.text = book.length
        descriptionLabel.text = book.description
    }

}
