//
//  ViewController.swift
//  DynamicType
//
//  Created by Vivek on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
    }

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
//        myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110).isActive = true
//        myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        myView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        myView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        myView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
    }

}

