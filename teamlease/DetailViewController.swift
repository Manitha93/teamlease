//
//  DetailViewController.swift
//  teamlease
//
//  Created by Manitha on 02/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var name: UILabel!
    
    @IBOutlet var username: UILabel!
    
    @IBOutlet var phone: UILabel!
    
    @IBOutlet var website: UILabel!
    
    
    var strname = ""
    var strusername = ""
    var strphone = ""
    var strwebsite = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = strname
        username.text = strusername
        phone.text = strphone
        website.text = strwebsite
        
//        detail.name = "Name :\(arrdata[indexPath.row].name)"
//        detail.username = "UserName :\(arrdata[indexPath.row].username)"
//        detail.phone = "Phone :\(arrdata[indexPath.row].phone)"
//        detail.website = "Website :\(arrdata[indexPath.row].website)"


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
