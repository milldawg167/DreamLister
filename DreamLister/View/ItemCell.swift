//
//  ItemCell.swift
//  DreamLister
//
//  Created by Andrew Miller on 05/04/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item) {
        title.text = item.title
        price.text = "£\(item.price)"
        details.text = item.details
    }
    
}
