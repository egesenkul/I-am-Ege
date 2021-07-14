//
//  SchoolHistoryViewController.swift
//  I am Ege
//
//  Created by Ege Şenkul on 4.07.2021.
//

import UIKit

class SchoolHistoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let schools = [School(),School(),School()]
    
    @IBOutlet weak var schoolHistoryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FillSchoolInformations()
        
        let nib = UINib(nibName: "SchoolTableViewCell", bundle: nil)
        schoolHistoryTableView.register(nib, forCellReuseIdentifier: "SchoolTableViewCell")
        schoolHistoryTableView.delegate = self
        schoolHistoryTableView.dataSource = self
        schoolHistoryTableView.refreshControl = UIRefreshControl()
        schoolHistoryTableView.refreshControl?.addTarget(self,
                                                         action: #selector(pullToRefresh),
                                                         for: .valueChanged)
    }
    @objc func pullToRefresh(){
        print("Table refreshed")
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            self.schoolHistoryTableView.refreshControl?.endRefreshing()
        }
        
        // You can add your refresh datalist method to here
    }
    
    func FillSchoolInformations(){
        schools[0].SchoolName = "Kartal Anadolu Listesi"
        schools[0].Dates = "2010-2014"
        schools[0].Description = "Fen/Matematik"
        
        schools[1].SchoolName = "İzmir Üniversitesi"
        schools[1].Dates = "2014-2016"
        schools[1].Description = "Bilgisayar Müh."
        
        schools[2].SchoolName = "İzmir Ekonomi Üniversitesi"
        schools[2].Dates = "2016-2018"
        schools[2].Description = "Bilgisayar Müh."
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0;//Choose your custom row height
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        schools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = schoolHistoryTableView.dequeueReusableCell(withIdentifier: "SchoolTableViewCell", for: indexPath) as! SchoolTableViewCell
        cell.schoolDescription?.text = schools[indexPath.row].Description
        cell.schoolDateLabel?.text = schools[indexPath.row].Dates
        cell.schoolNameLabel?.text = schools[indexPath.row].SchoolName
        return cell
    }
}
