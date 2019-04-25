import Foundation

// Use Case層
protocol UsecaseOutputPort: AnyObject {
    func useCaseDidUpdate(value: Int)
}
protocol UsecaseInputPort {
    func update(something: Int)
}
final class UseCase: UsecaseInputPort {
    private weak var output: UsecaseOutputPort?
    init(output: UsecaseOutputPort) {
        self.output = output
    }
    func update(something value: Int) {
        // 値を使ったアプリケーション固有の処理
        // Entity層の処理・データも使える
        // output経由でPresenterへ通知(逆方向)
        output?.useCaseDidUpdate(value: value)
    }
}

// インターフェイスアダプター層
final class Presenter: UsecaseOutputPort {
    func useCaseDidUpdate(value: Int) {
        print("UI更新\(value)")
    }
}
final class Controller {
    private let useCaseInput: UsecaseInputPort
    init(input: UsecaseInputPort) {
        self.useCaseInput = input
    }
    func received(something value: Int) {
        // Input経由でUse Caseを呼び出し(逆方向)
        useCaseInput.update(something: value)
    }
}

// 円の構築
let useCase: UseCase = .init(output: Presenter())
let controller: Controller = .init(input: useCase)
// 処理開始
//controller.received(something: 10)
