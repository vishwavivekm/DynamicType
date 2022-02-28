//
//  ViewController.swift
//  DynamicType
//
//  Created by Vivek on 21/02/22.
//

import UIKit

enum Nature {
    case summer(Int)
    case winter(Int)
    case raining(Int)
    case mansoon(Int)
    
    func getVal(nat: Nature) -> String {
        switch nat {
        case .winter:
            return "Winter"
        case .raining:
            return "Rainy"
        case .mansoon:
            return "Mansoon"
        case .summer(let deg) where deg > 34 :
            return "Very Hot"
        default:
            return ""
        }
    }
}

class ViewController: UIViewController {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        createView()

//        let res = setClosure(nameBool: false) {
//            return getName(name: "Vivek")
//        }
        let res = setClosure(nameBool: false, closure: getName(name: "Vivek"))
        print(res)
        let clo = { (a: Int, b: Int) -> Int in
            return a + b
            
        }
        
        print(clo(10, 20))
        
        var sea = Nature.summer(54)
        print(sea.getVal(nat: sea))
        
    }
    
    var data: [Int] = [1,2,3,4,5,6,7]

    func createView() {
        let myView = UIView()
//        view.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
//        let  const = [
//            view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            view.widthAnchor.constraint(equalToConstant: 100),
//            view.heightAnchor.constraint(equalToConstant: 100)
//        ]
////        let horiConst = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
////        view.addConstraint(const)
//        NSLayoutConstraint.activate(const)
        myView.backgroundColor = .red
        view.addSubview(myView)
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        myView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
        myView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        myView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        myView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
//        myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110).isActive = true
//        myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        
        
//        1
//        2
//        3
//        4
    }
    
    func setClosure(nameBool: Bool, closure: @autoclosure () -> String) -> String {
        print("This is called")
        if nameBool == true{
            return closure()
        }
        return ""
    }

    func getName(name: String) -> String {
        print("This one also is called")
        return name
    }

    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "TempTVCell", for: indexPath) as! TempTVCell
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == data.count - 1 {
            for _ in 0...20 {
                let val = (data.last ?? 0) + 1
                data.append(val)
//                print(data)
            }
            print(data)
            tableView.reloadData()
        }
        
    }
    
    
}

class TempTVCell: UITableViewCell {
    
}
