//
//  ViewController.swift
//  W4 D4 TableView
//
//  Created by يعرُب on 19/04/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    var devices = [
        Device(name: "iphone X", color: .white, textColor: .black, image: UIImage(named: "iphone-x")!, price: "1000$"),
        
        Device(name: "Apple Watch", color: .white, textColor: .black, image: UIImage(named: "apple-watch")!, price: "500$")
        
    ]
//    var arr = ["Iphone X", "Apple Watch", "Ipad", "Mac Pro"]
//    var colors = [UIColor.green, UIColor.blue, UIColor.orange, UIColor.yellow]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("hello world", section)
        return devices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("second function", indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "deviceCell") as! DeviceCell
        
        let device = devices[indexPath.row]
        cell.nameLabel.text = device.name
        cell.priceLabel.text = device.price
        cell.deviceImageView.image = device.image
        
//        let device = devices[indexPath.row]
//        cell.textLabel?.text = device.name
//        cell.backgroundColor = device.color
//        cell.textLabel?.textColor = device.textColor
        
        
//        if indexPath.row == 0 {
//            cell.backgroundColor = UIColor.green
//            cell.textLabel?.text = "Ipad"
//        }else if indexPath.row == 1 {
//            cell.backgroundColor = UIColor.red
//            cell.textLabel?.text = "Iphone X"
//        }else if indexPath.row == 6 {
//            cell.backgroundColor = .orange
//            cell.textLabel?.text = "Apple Watch"
//        }else {
//            cell.backgroundColor = .yellow
//        }
        
        return cell
    }
    

    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
    }


}

