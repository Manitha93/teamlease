//
//  ViewController.swift
//  teamlease
//
//  Created by Pandoo on 02/07/21.
//

import UIKit
struct jsonstruct:Decodable {
    let name:String
    let phone:String
    let username: String
//    let address : Array<Any>
//    let alpha2Code:String
//    let alpha3Code:String
////    let capital:String
    let website:String
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableview: UITableView!
    
    var arrdata = [jsonstruct]()
    override func viewDidLoad() {
        super.viewDidLoad()
       getdata()
        
        
    }

    func getdata(){
//        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{if error == nil{
                self.arrdata = try JSONDecoder().decode([jsonstruct].self, from: data!)

                for mainarr in self.arrdata{
                    print(mainarr.name,":",mainarr.username,":",mainarr.phone)
                    
                    DispatchQueue.main.async {
                         self.tableview.reloadData()
                    }
        
                }
                
                

            }
             
            }catch{
                print("Error in get json data")
            }
            
        }.resume()
    }
    
    
    //TableView
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrdata.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblname.text = "Name : \(arrdata[indexPath.row].name)"
        cell.lblPhone.text = "Phone : \(arrdata[indexPath.row].phone)"
        cell.lblwebsite.text = "Website : \(arrdata[indexPath.row].website)"
//        cell.lblcompNAme.text = "Company Name : \(arrdata[indexPath.row].company)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailViewController
          detail.strname = "Name :\(arrdata[indexPath.row].name)"
          detail.strusername = "UserName :\(arrdata[indexPath.row].username)"
          detail.strphone = "Phone :\(arrdata[indexPath.row].phone)"
        detail.strwebsite = "Website :\(arrdata[indexPath.row].website)"
 
        self.navigationController?.pushViewController(detail, animated: true)
    
        
    }
    
    @IBAction func rightBarButtonAction(_ sender: Any) {
        print("right bar button action")
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileController")
//                   self.present(vc, animated: true, completion: nil);
        
//        let vc = ProfileController()
        self.navigationController?.pushViewController(vc,animated:true)


    }

}


