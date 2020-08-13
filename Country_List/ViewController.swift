//
//  ViewController.swift
//  Country_List
//
//  Created by Subhrajyoti Chakraborty on 13/08/20.
//  Copyright © 2020 Subhrajyoti Chakraborty. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Country"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
        print("Tapped")
        let vc = DetailViewController()
        vc.capitalLabelText = "TEST"
        navigationController?.pushViewController(vc, animated: true)
    }

}

