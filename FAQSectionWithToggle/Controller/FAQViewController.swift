// FAQViewController.swift

import UIKit

class FAQViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var faqItems: [FAQItem] = [
        FAQItem(question: "What is your return policy?", answer: "Our return policy is that we are good at everything and we prefer quality over quantity. You have 30 days from the date of purchase to return items. Please ensure that the items are in their original condition and packaging. We strive to make returns easy and hassle-free, and our customer support team is always available to assist you through the process.", isOpened: false),
        
        FAQItem(question: "How long does shipping take?", answer: "Shipping usually takes 5-7 business days within the continental United States. However, please allow for additional time during peak seasons or due to unexpected delays. International shipping times vary based on destination, customs processing, and shipping method selected. You will receive updates via email as your order progresses through the stages of shipping.", isOpened: false),
        
        FAQItem(question: "Do you offer international shipping?", answer: "Yes, we offer international shipping to over 100 countries. Shipping rates and delivery times vary by location and shipping method. Duties, taxes, and customs fees are the responsibility of the recipient and will vary by country. Please check with your local customs office for more details. Our international shipping partners ensure timely delivery and careful handling of your packages.", isOpened: false),
        
        FAQItem(question: "Can I track my order?", answer: "Yes, once your order has been shipped, you will receive a tracking number via email to track your package. You can use this tracking number on our website or through the carrier's website to monitor the status of your delivery. In addition to tracking, you will receive notifications about your order’s status, such as when it’s out for delivery or has been delivered.", isOpened: false),
        
        FAQItem(question: "What payment methods do you accept?", answer: "We accept all major credit cards, including Visa, MasterCard, American Express, and Discover. We also accept PayPal, Apple Pay, and Google Pay for quick and secure transactions. All payments are processed securely, and we do not store your payment information. We also offer financing options through our partners for larger purchases, making it easier for you to get what you need.", isOpened: false)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "FAQTableViewCell", bundle: nil), forCellReuseIdentifier: "FAQCell")
        tableView.separatorStyle = .none
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return faqItems.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FAQCell", for: indexPath) as? FAQTableViewCell else {
            return UITableViewCell()
        }
        
        let faqItem = faqItems[indexPath.section]
        cell.configure(with: faqItem)
        cell.toggleButton.tag = indexPath.section
        cell.toggleButton.addTarget(self, action: #selector(toggleAnswer(_:)), for: .touchUpInside)
        
        return cell
    }
    
    @objc func toggleAnswer(_ sender: UIButton) {
        let section = sender.tag
        faqItems[section].isOpened.toggle()
        tableView.reloadSections(IndexSet(integer: section), with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100     }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 3
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = UIColor.gray
        return footerView
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }

}
