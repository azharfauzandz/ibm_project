//
//  CacheViewController.swift
//  ibm_project
//
//  Created by Azhar Fauzan Dz on 2/26/17.
//  Copyright © 2017 Azhar Fauzan Dz. All rights reserved.
//

import UIKit
import SDWebImage

class CacheViewController: UITableViewController {
    var arrContacts = [Contact]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Init the contacts
        self.arrContacts.append(Contact.init(name: "Barrack Obama", age: "55", origin: "New York", urlPhoto: "https://pbs.twimg.com/profile_images/822547732376207360/5g0FC8XX_400x400.jpg"))
        self.arrContacts.append(Contact.init(name: "Jokowi Dodo", age: "55", origin: "Jakarta", urlPhoto: "https://pbs.twimg.com/profile_images/682583126636236801/CI2oM7Un.jpg"))
        self.arrContacts.append(Contact.init(name: "Susilo Bambang Yudhoyono", age: "67", origin: "Bogor", urlPhoto: "https://pbs.twimg.com/profile_images/449699574207115264/FDzxuwMw.png"))
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //Load contact
        let contact: Contact = arrContacts[indexPath.row]
        
        //Load view i used tag view, we can use outlet too but with UITableViewCell
        let photoView = cell?.viewWithTag(1) as! UIImageView
        let nameLabel = cell?.viewWithTag(2) as! UILabel
        let ageLabel = cell?.viewWithTag(3) as! UILabel
        let originLabel = cell?.viewWithTag(4) as! UILabel
        
        //Photo view. Used sdwebimage+cache library, simple but powerful
        photoView.sd_setImage(with: URL(string: contact.urlPhoto), placeholderImage: UIImage(named: "placeholder.png"))
        //Name Label
        nameLabel.text = contact.name
        //Age label
        ageLabel.text = contact.age + " tahun"
        //Origin label
        originLabel.text = contact.origin
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrContacts.count
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


