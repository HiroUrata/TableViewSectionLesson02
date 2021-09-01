//
//  ViewController.swift
//  TableViewSectionLesson02
//
//  Created by UrataHiroki on 2021/08/30.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
       
    }


}

extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}


extension ViewController:UITableViewDataSource{
    
    //セクション
    func numberOfSections(in tableView: UITableView) -> Int { //セクション数
        
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 25
        
    }
    
    
    
    
    //cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 11
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = {() -> String in
            
            if indexPath.row < 9{
                
                return "Cell0\(String(indexPath.row + 1))"
                
            }else{
                
                return "Cell\(String(indexPath.row + 1))"
                
            }
            }()
        
        return cell
    }
    
    
    
}
