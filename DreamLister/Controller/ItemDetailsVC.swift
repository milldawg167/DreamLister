//
//  ItemDetailsVC.swift
//  DreamLister
//
//  Created by Andrew Miller on 06/04/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import UIKit

class ItemDetailsVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!

    var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        storePicker.delegate = self
        storePicker.dataSource = self
        
        let store = Store(context: context)
        store.name = "Amazon"
        let store2 = Store(context: context)
        store2.name = "Ebay"
        let store3 = Store(context: context)
        store3.name = "WeBuyAnyCar.com"
        let store4 = Store(context: context)
        store4.name = "Apple"
        let store5 = Store(context: context)
        store5.name = "Amazon"
        
        ad.saveContext()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, numberOfRowsInComponent component: Int) -> String? {
        let store = stores[row]
        return store.name
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return stores.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
    
}












