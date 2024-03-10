import RxSwift

let disposeBag = DisposeBag()

Observable.from([1, 2, 3, 4, 5, 6, 7, 8, 9])
    .filter {
        $0.isMultiple(of: 2)    // 짝수만 걸러냄
    }
    .map {
        String($0)    //문자열로 변환
    }
    .subscribe(onNext: { number in
        print(number)
    }, onCompleted: {
        print("completed")
    })
    .disposed(by: disposeBag)

//2
//4
//6
//8
