//
//  ViewController.swift
//  Memorable Places
//
//  Created by Advait on 26/06/17.
//  Copyright © 2017 Advait. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{
    var places = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        /*let placesObject = UserDefaults.standard.value(forKey: "places")
        
        if let temp = placesObject as? [String]{
            places = temp
        }
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 4
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier  : "Cell")
        
        cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
    }

}

