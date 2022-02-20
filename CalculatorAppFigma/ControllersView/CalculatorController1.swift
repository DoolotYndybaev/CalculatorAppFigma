//
//  ViewController1.swift
//  CalculatorAppFigma
//
//  Created by Doolot on 16/2/22.
//

import Foundation
import SnapKit
import UIKit
class CalculatorController1: UIViewController {
    private lazy var topView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var operationLabel: UILabel = {
        let view = UILabel()
        view.text = "12345679 x 9"
        view.font = .systemFont(ofSize: 24, weight: .semibold)
        view.adjustsFontSizeToFitWidth = true
        view.textAlignment = .right
        view.textColor = .gray
        return view
    }()
    private lazy var resultLabel: UILabel = {
        let view = UILabel()
        view.text = "1,11,11,111,111"
        view.adjustsFontSizeToFitWidth = true
        view.textAlignment = .right
        view.font = .systemFont(ofSize: 34, weight: .bold)
        view.textColor = .lightGray
        return view
    }()
    private lazy var ansLabel: UILabel = {
        let view = UILabel()
        view.text = "Ans ="
        view.font = UIFont.systemFont(ofSize: 35)
        view.textColor = .gray
        view.adjustsFontSizeToFitWidth = true
        view.textAlignment = .left
        return view
    }()
    private lazy var firstView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.layer.cornerRadius = 30
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        return view
    }()
    private lazy var backButton: UIButton = {
        let view = UIButton()
        view.setTitle("Story", for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.layer.cornerRadius = self.view.frame.width / 20
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        return view
    }()
    private lazy var degButton: UIButton = {
        let view = UIButton()
        view.setTitle("DEG", for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.layer.cornerRadius = self.view.frame.width / 20
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        return view
    }()
    private lazy var keyboardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        return view
    }()
    // ------------------------ Calculator Buttons ------------------
    
    private lazy var acButton: UIButton = {
        let view = UIButton()
        view.setTitle("C", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        //view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var plusMinusButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "percent"), for: .normal)
        view.tintColor = .lightGray
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var persentageButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "delete.backward"), for: .normal)
        view.tintColor = .lightGray
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var divideButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "divide"), for: .normal)
        view.tintColor = UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button7: UIButton = {
        let view = UIButton()
        view.setTitle("7", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button8: UIButton = {
        let view = UIButton()
        view.setTitle("8", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button9: UIButton = {
        let view = UIButton()
        view.setTitle("9", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var multiplyButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "multiply"), for: .normal)
        view.tintColor = UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button4: UIButton = {
        let view = UIButton()
        view.setTitle("4", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button5: UIButton = {
        let view = UIButton()
        view.setTitle("5", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button6: UIButton = {
        let view = UIButton()
        view.setTitle("6", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var minusButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "minus"), for: .normal)
        view.tintColor = UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button1: UIButton = {
        let view = UIButton()
        view.setTitle("1", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 9 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var button2: UIButton = {
        let view = UIButton()
        view.setTitle("2", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var Button3: UIButton = {
        let view = UIButton()
        view.setTitle("3", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var plusButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "plus"), for: .normal)
        view.tintColor = UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var Button0: UIButton = {
        let view = UIButton()
        view.setTitle("0", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var pointButton: UIButton = {
        let view = UIButton()
        view.setTitle(".", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var resultButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "equal"), for: .normal)
        view.tintColor = UIColor(red: 246/255, green: 51/255, blue: 86/255, alpha: 1)
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.layer.cornerRadius = self.view.frame.width / 8 - 15
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 0.5
        view.addTarget(self, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var verticalStackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.spacing = 15
        view.axis = .vertical
        return view
    }()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        setupViews()
        secondStart()
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
        btn2.setTitleColor(.white, for: .normal)
        let btn3 = UIButton()
        btn3.setTitle("Unit Converter", for: .normal)
        btn3.setTitleColor(.white, for: .normal)
        btn3.titleLabel?.adjustsFontSizeToFitWidth = true
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
            make.left.equalToSuperview().offset(30)
            make.width.equalToSuperview().dividedBy(6)
            make.height.equalTo(3)
        }
        //=========buttons Contraints====
        view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.top.equalTo(blackView.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.35)
        }
        topView.addSubview(firstView)
        firstView.snp.makeConstraints { make in
            make.top.equalTo(blackView.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalToSuperview().multipliedBy(0.5)
            }
        firstView.addSubview(operationLabel)
        operationLabel.snp.makeConstraints { make in
            make.bottom.equalTo(firstView.snp.centerY).offset(-5)
            make.width.equalToSuperview().multipliedBy(0.7)
            make.right.equalToSuperview().offset(-8)
        }
        firstView.addSubview(resultLabel)
        resultLabel.snp.makeConstraints { make in
            make.top.equalTo(firstView.snp.centerY).offset(5)
            make.width.equalToSuperview().multipliedBy(0.7)
            make.right.equalToSuperview().offset(-8)
            
        }
        firstView.addSubview(ansLabel)
        ansLabel.snp.makeConstraints { make in
            make.centerY.equalTo(resultLabel)
            make.right.equalTo(resultLabel.snp.left).offset(-8)
            make.left.equalToSuperview().offset(8)
        }
        topView.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.width.height.equalTo(50)
        }
        topView.addSubview(degButton)
        degButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.right.equalToSuperview().offset(-20)
            make.width.height.equalTo(50)
        }
        view.addSubview(keyboardView)
        keyboardView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        keyboardView.addSubview(verticalStackView)
        verticalStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(5)
            make.right.equalToSuperview().offset(-5)
            make.bottom.equalToSuperview().offset(-5)
        }
    }
    private func secondStart(){
        let stack1 = createStack()
        let stack2 = createStack()
        let stack3 = createStack()
        let stack4 = createStack()
        let stack5 = createStack()
        let stack6 = createStack()
        let stack7 = createStack()
        
        stack1.addArrangedSubview(acButton)
        stack1.addArrangedSubview(plusMinusButton)
        stack1.addArrangedSubview(persentageButton)
        stack1.addArrangedSubview(divideButton)
        
        stack2.addArrangedSubview(button7)
        stack2.addArrangedSubview(button8)
        stack2.addArrangedSubview(button9)
        stack2.addArrangedSubview(multiplyButton)
        
        stack3.addArrangedSubview(button4)
        stack3.addArrangedSubview(button5)
        stack3.addArrangedSubview(button6)
        stack3.addArrangedSubview(minusButton)
        
        stack4.addArrangedSubview(button1)
        stack4.addArrangedSubview(button2)
        stack4.addArrangedSubview(Button3)
        stack4.addArrangedSubview(plusButton)
        
        stack5.addArrangedSubview(Button0)
        
        stack6.addArrangedSubview(pointButton)
        stack6.addArrangedSubview(resultButton)
        
        stack7.addArrangedSubview(stack5)
        stack7.addArrangedSubview(stack6)
        
        
        verticalStackView.addArrangedSubview(stack1)
        verticalStackView.addArrangedSubview(stack2)
        verticalStackView.addArrangedSubview(stack3)
        verticalStackView.addArrangedSubview(stack4)
        verticalStackView.addArrangedSubview(stack7)
    }
    private func createStack() -> UIStackView {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 15
        return view
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
