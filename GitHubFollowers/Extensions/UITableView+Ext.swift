//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Diego Benites on 04/09/20.
//  Copyright © 2020 Diego Benites. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
