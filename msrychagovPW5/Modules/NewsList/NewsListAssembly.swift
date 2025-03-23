import UIKit

enum NewsListAssembly {
    static func build () -> UIViewController {
        let presenter = NewsListPresenter()
        let interactor = NewsListInteractor(presenter: presenter)
        let view = NewsListViewController(interactor: interactor)
        presenter.view = view
        
        return view
    }
}
