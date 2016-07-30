//
//  MenuViewController.swift
//  StoreSearch
//
//  Created by Avinav Goel on 15/03/16.
//  Copyright © 2016 Avinav Goel. All rights reserved.
//

import UIKit

protocol MenuViewControllerDelegate: class {
  func menuViewControllerSendSupportEmail(controller: MenuViewController)
}

class MenuViewController: UITableViewController {

  weak var delegate: MenuViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
    if indexPath.row == 0 {
      delegate?.menuViewControllerSendSupportEmail(self)
    }
  }
}
