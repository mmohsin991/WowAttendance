//
//  LeftViewController.swift
//  SlideOutNavigation
//
//  Created by James Frost on 03/08/2014.
//  Copyright (c) 2014 James Frost. All rights reserved.
//

import UIKit

@objc
protocol SidePanelViewControllerDelegate {
  func animalSelected(animal: Animal)
}

class SidePanelViewController: UITableViewController {

    var tempData = ["Home","Teams","Preferences"]



  struct TableView {
    struct CellIdentifiers {
      static let AnimalCell = "AnimalCell"
    }
  }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.separatorInset = UIEdgeInsets(top: 0.0, left: 15.0, bottom: 0.0, right: 15.0)
        
       // self.view.frame.origin = CGPoint(x: 200 , y: 0)
        
    }

    override func viewWillAppear(animated: Bool) {
        self.tableView.backgroundView = backgroundImageView
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("showDetail", sender: indexPath.row)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.tempData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        
        cell.textLabel?.text = self.tempData[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        
        cell.separatorInset = UIEdgeInsets(top: 0.0, left: 15.0, bottom: 0.0, right: 15.0)
        
        
        // Configure the cell selection color
        let backgroundColorView = UIView()
        backgroundColorView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        cell.selectedBackgroundView = backgroundColorView
        
        return cell
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "MENU"
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
            return 65.0
    }
    


    
    
    
}

