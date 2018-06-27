//
//  PlantDetailViewController.swift
//  midterm
//

import UIKit

class PlantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row
        {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: plantDetailIconTextCell.self), for: indexPath) as! plantDetailIconTextCell
            cell.iconImageView.image = UIImage(named: "grass")
            cell.shortTextLabel.text = plants.habitat
            return cell
        case 1:
//            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: plantDetailTextCell.self), for: indexPath)as! plantDetailTextCell
//            //cell.iconImageView.image = UIImage(named: "distribution")
//            cell.shortTextLabel.text = butterfly.distribution
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: plantDetailTextCell.self), for: indexPath) as! plantDetailTextCell
            cell.descriptionLabel.text = plants.description
            return cell
        /*case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailMapCell.self), for: indexPath) as! RestaurantDetailMapCell
            return cell*/
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: plantDetailTextCell.self), for: indexPath)as!plantDetailTextCell
            cell.descriptionLabel.text = plants.habitat
            return cell
            
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailSeparatorCell.self), for: indexPath) as! RestaurantDetailSeparatorCell
            cell.titleLabel.text = "How to get there"
            return cell

        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailMapCell.self), for: indexPath) as! RestaurantDetailMapCell
            cell.configure(location: plants.location)
            return cell
        default:
            fatalError("Failed to instantiate the table view cell.")
        }
    }
    
    var plants: Plant = Plant()
    
    @IBOutlet weak var headerView: plantDetailHeaderView!
   // @IBOutlet var plantImageView: UIImageView!
   // var plantImageName = ""
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        //plantImageView.image = UIImage(named: plantImageName)
        //顯示植物圖片
        // Do any additional setup after loading the view.
        
        headerView.headerImageView.image = UIImage(named: plants.image)
        headerView.nameLabel.text = plants.name1
        headerView.name2Label.text = plants.name2
        navigationItem.largeTitleDisplayMode = .never
        
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toMap"
        {
            let destinationController = segue.destination as! mapViewController
            destinationController.plants = plants
        }
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
