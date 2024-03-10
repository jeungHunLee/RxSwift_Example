import RxSwift

let observable = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
let disposable = observable.subscribe(onNext: { item in
    print(item)
})

DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
    disposable.dispose()
})
