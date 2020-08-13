//
//  DetailViewController.swift
//  Country_List
//
//  Created by Subhrajyoti Chakraborty on 13/08/20.
//  Copyright © 2020 Subhrajyoti Chakraborty. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var capitalLabel: UILabel!
    var capitalLabelText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Detail View"
        view.backgroundColor = .white
        
        capitalLabel = UILabel()
        capitalLabel.text = capitalLabelText
        capitalLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(capitalLabel)
        
        NSLayoutConstraint.activate([
            capitalLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor)
        ])
        
       
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
