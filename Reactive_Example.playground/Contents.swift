import RxSwift
import RxRelay

//MARK: - Reactive Programming
let a = BehaviorRelay(value: 1)
let b = BehaviorRelay(value: 2)
var c: Int = a.value + b.value

Observable.combineLatest(a, b) { $0 + $1 }
    .subscribe(onNext: {
        c = $0
    })

print(c)    //3

a.accept(5)
print(c)    //7

//MARK: - Imperative Programming
var numA: Int = 1
var numB: Int = 2
var numC = numA + numB

print(numC)    //3

numA = 5
print(numC)    //3
