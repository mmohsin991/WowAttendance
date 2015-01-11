//
//  HomeVC.swift
//  AttendanceSystem
//
//  Created by Mohsin on 02/01/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import UIKit


@objc
protocol CenterViewControllerDelegate {
    optional func toggleLeftPanel()
    optional func toggleRightPanel()
    optional func collapseSidePanels()
}

class HomeVC: UIViewController {

    @IBOutlet weak var imgBackground: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var btnLogOut: UIButton!

    var delegate: CenterViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Home"
        
        if loginUser != nil{
            lblName.text = "\(loginUser!.firstName) \(loginUser!.lastName)"
            lblEmail.text = loginUser?.email
        }
        
        delegate?.collapseSidePanels?()

        
        
        self.btnLogOut.layer.cornerRadius = 4.0

        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.imgBackground.image = backgroundImage
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rightMenu(sender: AnyObject) {
        delegate?.toggleLeftPanel?()
    }
    
    @IBAction func logOut(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: {
            self.performSegueWithIdentifier("logoutSeg", sender: nil)
            
        })
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "logoutSeg"{
            
        }
    }

}