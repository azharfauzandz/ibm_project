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
    var arrImageURL = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrImageURL = [
            "https://cdn0-a.production.liputan6.static6.com/medias/1462492/big/032041600_1483615414-TanyaDokter_Image_Asupan-Alpukat-Seputar-Kolesterol.jpg",
            "https://cdn1-a.production.liputan6.static6.com/medias/730422/big/065111600_1409506733-selada_air1.jpg",
            "https://cdn1-a.production.liputan6.static6.com/medias/1454594/big/095545600_1483446516-topic_article_salmon_sehat.jpg",
            "https://cdn0-a.production.liputan6.static6.com/medias/1237849/big/068361600_1463628918-tauge.jpg",
            "https://cdn1-a.production.liputan6.static6.com/medias/696588/big/Raw_Oat_0614.jpg"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let imageView = cell?.viewWithTag(1) as! UIImageView
        imageView.sd_setImage(with: URL(string: arrImageURL[indexPath.row]), placeholderImage: UIImage(named: "placeholder.png"))
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImageURL.count
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


