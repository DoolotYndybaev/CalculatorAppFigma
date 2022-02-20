//
//  ViewController.swift
//  CalculatorAppFigma
//
//  Created by Doolot on 16/2/22.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    private lazy var presentLabel: UILabel = {
        let view = UILabel()
        view.text = "Calculator"
        view.font = UIFont.boldSystemFont(ofSize: 70)
        view.textAlignment = .center
        view.adjustsFontSizeToFitWidth = true
        view.textColor = UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        setupViews()
    }
    func setupViews(){
        let blackView = UIView()
        blackView.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.addSubview(blackView)
        blackView.snp.makeConstraints { maker in
            maker.left.right.top.equalToSuperview()
            maker.height.equalTo(80)
        }
        let redView = UIView()
        redView.backgroundColor = UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1)
     
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 8

        
        let btn1 = UIButton()
        btn1.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        btn1.setTitle("Calculator", for: .normal)
        btn1.titleLabel?.adjustsFontSizeToFitWidth = true
        btn1.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        let btn2 = UIButton()
        btn2.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        btn2.setTitle("Exchange Rate", for: .normal)
        btn2.titleLabel?.adjustsFontSizeToFitWidth = true
        btn2.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        let btn3 = UIButton()
        btn3.setTitle("Unit Converter", for: .normal)
        btn3.titleLabel?.adjustsFontSizeToFitWidth = true
        btn3.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        btn3.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        
        stackView.addArrangedSubview(btn1)
        stackView.addArrangedSubview(btn2)
        stackView.addArrangedSubview(btn3)
      
        
        view.addSubview(stackView)
        stackView.snp.makeConstraints { maker in
            maker.left.right.top.equalToSuperview().inset(15)
            maker.height.equalTo(60)
        }
        view.addSubview(redView)
        redView.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(3)
        }
        view.addSubview(presentLabel)
        presentLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
    @objc func addTapped(sender: UIButton) {
        if sender.titleLabel?.text == "Calculator"{
            navigationController?.pushViewController(CalculatorController1(), animated: false)
        } else if sender.titleLabel?.text == "Exchange Rate"{
            navigationController?.pushViewController(ExchangeController1(), animated: false)
        } else if sender.titleLabel?.text == "Unit Converter"{
            navigationController?.pushViewController(ConverterController1(), animated: false)
        }
     }
  }
