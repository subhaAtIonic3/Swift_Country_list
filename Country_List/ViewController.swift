//
//  ViewController.swift
//  Country_List
//
//  Created by Subhrajyoti Chakraborty on 13/08/20.
//  Copyright © 2020 Subhrajyoti Chakraborty. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var countryData = [Country]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Country"
        loadData()
    }
    
    func readJson() -> Data? {
        let path = Bundle.main.path(forResource: "country-list", ofType: "json")!
        do {
           if let data = try String(contentsOfFile: path).data(using: .utf8) {
                return data
            }
        } catch {
            print("Error: \(error.localizedDescription)")
        }
        return nil
    }
    
    func loadData() {
        if let data = readJson() {
            let decoder  = JSONDecoder()
            if let listData = try? decoder.decode([Country].self, from: data) {
                print("Successfully parse country data")
                countryData = listData
            } else {
                print("Unable to decode the country data")
            }
        } else {
            print("Unable to fetch data from json")
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        cell.textLabel?.text = countryData[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
        print("Tapped")
        let vc = DetailViewController()
        vc.capitalLabelText = countryData[indexPath.row].capital
        vc.titleString = countryData[indexPath.row].name
        navigationController?.pushViewController(vc, animated: true)
    }

}

