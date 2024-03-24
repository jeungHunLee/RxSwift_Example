import RxSwift

let intArrayObservable = Observable<Int>.from(Array(1...6))

//map() method
intArrayObservable
    .map {
        return $0 * 10
    }
    .subscribe(
        onNext: {
            print($0)
        }, 
        onCompleted: {
            print("completed")
        }
    )

//flatMap() method
intArrayObservable
    .flatMap { item in
        return Observable<Int>.from(Array(repeating: item, count: item))
    }
    .subscribe(
        onNext: {
            print($0)
        },
        onCompleted: {
            print("completed")
        }
    )

//buffer() method
intArrayObservable
    .buffer(timeSpan: .seconds(1),
            count: 3,
            scheduler: MainScheduler.instance)
    .take(2)
    .subscribe(
        onNext: {
            print($0)
        },
        onCompleted: {
            print("completed")
        }
    )

//scan() method
intArrayObservable
    .scan(0) { (prev, next) in
        return prev + next
    }
    .subscribe(
        onNext: {
            print($0)
        },
        onCompleted: {
            print("completed")
        }
    )
