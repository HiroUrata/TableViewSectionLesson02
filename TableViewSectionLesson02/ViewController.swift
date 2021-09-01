//
//  ViewController.swift
//  TableViewSectionLesson02
//
//  Created by UrataHiroki on 2021/08/30.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var tableView: UITableView!

    let sectionTitleArray = ["Colors","sports","Fruits","GrandTours"]
    let sectionContentsArray = [
    
        ["red","blue","green","white","yellow"],
        ["Athletics","soccer","Cycling","basketball"],
        ["Orange","Pineapple","KiwiFruit"],
        ["Giro d'Italia","Tour de France","Buerta Espana"]
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
       
        tableView.tableHeaderView = {() -> UIView in
            
            let headerView = UIView(frame: CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.size.width, height: view.frame.size.height / 4))
            
            headerView.backgroundColor = .systemIndigo
            headerView.layer.cornerRadius = 20.0
            headerView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
            
            return headerView
            
        }()
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
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionTitleArray[section]
        
    }
    
    
    
    
    //cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sectionContentsArray[section].count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = sectionContentsArray[indexPath.section][indexPath.row]
        
        return cell
    }
    
    
    
}
