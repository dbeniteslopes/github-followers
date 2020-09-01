import UIKit

protocol GFRepoItemInfoViewControllerDelegate: class {
    func didTapGitHubProfile(for user: User)
}

class GFRepoItemViewController: GFItemInfoViewController {
    
    weak var delegate: GFRepoItemInfoViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
