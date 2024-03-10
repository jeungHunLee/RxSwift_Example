import RxSwift

struct SomeStruct {
    let observable = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
    private var disposeBag = DisposeBag()
    
    func subscribe() {
        observable.subscribe(onNext: { item in
            print(item)
        })
        .disposed(by: disposableBag)
    }
    
}
	
