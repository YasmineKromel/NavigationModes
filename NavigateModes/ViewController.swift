//
//  ViewController.swift
//  NavigateModes
//
//  Created by Yasmine on 6/21/19.
//  Copyright © 2019 Yasmine. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    let obj1 = news.init(imageName: "news", title:"Title", source: "Google.com", switcher: true, desc:"lorem lorem lorem fa la ka ja gd hggfhgfdhgfggfgfgfhgfjdg jfhfkjhgkfkf hhfgdgfggukfkdkjgdfgjgf")
    
    @IBOutlet weak var mode: UIButton!
    @IBOutlet weak var header: UIView!
    @IBOutlet weak var map: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var Preview_mode = true
    var Edit_mode = false
    
    
    var myNews:[news] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        for i in 0...5
        {
            myNews.append(obj1)
        }
    }
    
    

    @IBAction func change_mode(_ sender: UIButton) {
        
        print ("clicked")
        if Preview_mode == true
        {
            let image = UIImage(named: "Edit")
            mode.imageView?.contentMode = .scaleAspectFit
           mode.setImage(image, for: .normal)
            
            Preview_mode = false
            Edit_mode = true
        }else if Edit_mode == true
        {
            let image = UIImage(named: "Preview")
             mode.imageView?.contentMode = .scaleAspectFit
            mode.setImage(image, for: .normal)
            
            Preview_mode = true
            Edit_mode = false
        }
        
        
    }
    

}

extension ViewController :UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListNews_Cell", for: indexPath) as! TableViewCell
        let image = UIImage(named: myNews[indexPath.row].imageName)
        cell.ImageNews.image = image
        cell.desc.text = myNews[indexPath.row].desc
        cell.title.text = myNews[indexPath.row].title
        cell.source.text = myNews[indexPath.row].source
        cell.switchLbl.isOn = myNews[indexPath.row].switcher
        
       return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myNews.count
    }
  
}

