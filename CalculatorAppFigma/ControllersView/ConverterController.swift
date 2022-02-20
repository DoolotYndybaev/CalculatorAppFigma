//
//  ConverterController.swift
//  CalculatorAppFigma
//
//  Created by Doolot on 16/2/22.
//

import Foundation
import SnapKit
import UIKit
class ConverterController1: UIViewController {
    private lazy var lengthButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "ChartBar"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var lengthLabel: UILabel = {
        let view = UILabel()
        view.text = "Length"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
        return view
    }()
    private lazy var areaButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "SquareHalf"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var areaLabel: UILabel = {
        let view = UILabel()
        view.text = "Area"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
        return view
    }()
    private lazy var volumeButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Cube"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var volumeLabel: UILabel = {
        let view = UILabel()
        view.text = "Volume"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
        return view
    }()
    private lazy var speedButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Gauge"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var speedLabel: UILabel = {
        let view = UILabel()
        view.text = "Speed"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
        return view
    }()
    private lazy var weightButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Barbell"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var weightLabel: UILabel = {
        let view = UILabel()
        view.text = "Weight"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
        return view
    }()
    private lazy var temperatoreButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "ThermometerSimple"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var temperatoreLabel: UILabel = {
        let view = UILabel()
        view.text = "Tempera\n -ture"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
        view.numberOfLines = 0
        return view
    }()
    private lazy var powerButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Lightning"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var powerLabel: UILabel = {
        let view = UILabel()
        view.text = "Power"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
        return view
    }()
    private lazy var pressureButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "ClockAfternoon"), for: .normal)
        view.setTitleColor(UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1), for: .normal)
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 10.0
        view.layer.shadowOpacity = 10
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var pressureLabel: UILabel = {
        let view = UILabel()
        view.text = "Pressure"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .lightGray
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
        btn1.setTitleColor(.white, for: .normal)
        let btn2 = UIButton()
        btn2.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        btn2.setTitle("Exchange Rate", for: .normal)
        btn2.titleLabel?.adjustsFontSizeToFitWidth = true
        btn2.setTitleColor(.white, for: .normal)
        let btn3 = UIButton()
        btn3.setTitle("Unit Converter", for: .normal)
        btn2.titleLabel?.adjustsFontSizeToFitWidth = true
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
            make.right.equalToSuperview().offset(-40)
            make.width.equalToSuperview().dividedBy(4.5)
            make.height.equalTo(3)
        }
        //=========buttons Contraints====
        view.addSubview(lengthButton)
        lengthButton.snp.makeConstraints { make in
            make.top.equalTo(blackView.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(30)
            make.width.height.equalTo(80)
        }
        view.addSubview(lengthLabel)
        lengthLabel.snp.makeConstraints { make in
            make.top.equalTo(lengthButton.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(40)
        }
        view.addSubview(areaButton)
        areaButton.snp.makeConstraints { make in
            make.top.equalTo(blackView.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(80)
        }
        view.addSubview(areaLabel)
        areaLabel.snp.makeConstraints { make in
            make.top.equalTo(areaButton.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        view.addSubview(volumeButton)
        volumeButton.snp.makeConstraints { make in
            make.top.equalTo(blackView.snp.bottom).offset(30)
            make.right.equalToSuperview().offset(-30)
            make.width.height.equalTo(80)
        }
        view.addSubview(volumeLabel)
        volumeLabel.snp.makeConstraints { make in
            make.top.equalTo(lengthButton.snp.bottom).offset(10)
            make.right.equalToSuperview().offset(-40)
        }
        view.addSubview(speedButton)
        speedButton.snp.makeConstraints { make in
            make.top.equalTo(lengthLabel.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(30)
            make.width.height.equalTo(80)
        }
        view.addSubview(speedLabel)
        speedLabel.snp.makeConstraints { make in
            make.top.equalTo(speedButton.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(40)
        }
        view.addSubview(weightButton)
        weightButton.snp.makeConstraints { make in
            make.top.equalTo(areaLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(80)
        }
        view.addSubview(weightLabel)
        weightLabel.snp.makeConstraints { make in
            make.top.equalTo(weightButton.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        view.addSubview(temperatoreButton)
        temperatoreButton.snp.makeConstraints { make in
            make.top.equalTo(volumeLabel.snp.bottom).offset(30)
            make.right.equalToSuperview().offset(-30)
            make.width.height.equalTo(80)
        }
        view.addSubview(temperatoreLabel)
        temperatoreLabel.snp.makeConstraints { make in
            make.top.equalTo(temperatoreButton.snp.bottom).offset(10)
            make.right.equalToSuperview().offset(-40)
        }
        view.addSubview(powerButton)
        powerButton.snp.makeConstraints { make in
            make.top.equalTo(speedLabel.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(30)
            make.width.height.equalTo(80)
        }
        view.addSubview(powerLabel)
        powerLabel.snp.makeConstraints { make in
            make.top.equalTo(powerButton.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(40)
        }
        view.addSubview(pressureButton)
        pressureButton.snp.makeConstraints { make in
            make.top.equalTo(weightLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(80)
        }
        view.addSubview(pressureLabel)
        pressureLabel.snp.makeConstraints { make in
            make.top.equalTo(pressureButton.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
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
