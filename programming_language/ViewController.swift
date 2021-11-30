//
//  ViewController.swift
//  programming_language
//
//  Created by xmod on 28.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
 
    

    @IBOutlet weak var myTableView: UITableView!
    var myCodeList = [CodeModel]()
    var selectedItem : CodeModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        /// create object
        let kotlin = CodeModel(name: "kotlin", age: 4, image: UIImage(named: "kotlin")!)
        let swift = CodeModel(name: "swift", age: 9, image: UIImage(named: "swift")!)
        let flutter = CodeModel(name: "flutter", age: 2, image: UIImage(named: "flutter")!)
        let csharp = CodeModel(name: "c#", age: 30, image: UIImage.init(named: "csharp")!)
        let go = CodeModel(name: "go", age: 5, image: UIImage(named: "go")!)
        
        myCodeList.append(kotlin)
        myCodeList.append(swift)
        myCodeList.append(flutter)
        myCodeList.append(csharp)
        myCodeList.append(go)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCodeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myCodeList[indexPath.row].name
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem = myCodeList[indexPath.row]
        performSegue(withIdentifier: "SecondScreenVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "SecondScreenVC"){
            let destinationVC = segue.destination as! SecondScreenViewController
            destinationVC.select = selectedItem
        }
        
    }


}

