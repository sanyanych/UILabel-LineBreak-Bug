//
//  ListViewController.swift
//  UILabel-LineBreak-Bug
//
//  Created by Anisimov Aleksandr on 28.12.2021.
//

import UIKit

final class ListViewController: UITableViewController {
    
    private enum Section {
        case main
    }
    
    private lazy var snapshot = NSDiffableDataSourceSnapshot<Section, Cell.Configuration>()
    
    private lazy var dataSource = UITableViewDiffableDataSource<Section, Cell.Configuration>(tableView: tableView) { tableView, indexPath, item in
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Cell
        cell?.configure(with: item)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(Cell.self, forCellReuseIdentifier: "Cell")
        snapshot.appendSections([.main])
        snapshot.appendItems(ModelController.stub())
        dataSource.apply(snapshot)
    }
}
