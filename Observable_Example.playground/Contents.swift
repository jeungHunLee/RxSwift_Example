import RxSwift

//just method
let justObservable = Observable<Int>.just(1)

justObservable.subscribe(
    onNext: { item in
        print(item)
    }, onCompleted: {
        print("onCompleted")
    })

//empty method
let emptyObservable = Observable<Any>.empty()

emptyObservable.subscribe(
    onNext: { item in
        print(item)
    }, onCompleted: {
        print("onCompleted")
    }
)

//from method
let fromObservable = Observable<Int>.from([1, 2, 3, 4, 5])

fromObservable.subscribe(
    onNext: { item in
        print(item)
    }, onCompleted: {
        print("onCompleted")
    })

//create method
let createObservable = Observable<String>.create { observer in
    observer.onNext("안녕하세요!")
    observer.onNext("반갑습니다!")
    observer.onCompleted()
    return Disposables.create()
}

createObservable.subscribe(
    onNext: { item in
        print(item)
    }, onCompleted: {
        print("onCompleted")
    }
)
