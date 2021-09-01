//
//  ViewController.swift
//  TableViewSectionLesson02
//
//  Created by UrataHiroki on 2021/08/30.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var tableView: UITableView!
    
    let sectionContentsColorArray = ["red","blue","green","white","yellow"]
    let sectionContentsSportsArray = ["Athletics","soccer","Cycling","basketball"]
    let sectionContentsFruitsArray = ["Orange","Pineapple","KiwiFruit"]
    let sectionContentsGrandTourArray = ["Giro d'Italia","Tour de France","Buerta Espana"]
    
    
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
        
        if section == 0{
            
            return sectionContentsColorArray.count
            
        }else if section == 1{
            
            return sectionContentsSportsArray.count
            
        }else if section == 2{
            
            return sectionContentsFruitsArray.count
            
        }else if section == 3{
            
            return sectionContentsGrandTourArray.count
            
        }else{
            
            return 0
            
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = {() -> String in
            
            if indexPath.section == 0{
                
                return sectionContentsColorArray[indexPath.row]
                
            }else if indexPath.section == 1{
                
                return sectionContentsSportsArray[indexPath.row]
                
            }else if indexPath.section == 2{
                
                return sectionContentsFruitsArray[indexPath.row]
                
            }else{
                
                return sectionContentsGrandTourArray[indexPath.row]
                
            }
        }()
        
        return cell
    }
    
    
    
}
