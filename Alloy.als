module sample/HelloWorld
one sig Display {
    console : one Console
}
one sig Console {
    message : some Message
}

/** メッセージ */
abstract sig Message {}

/** Hello World */
sig HelloWorld extends Message {}

//=====================================================
//
// 事実
//
//=====================================================

/** 全てのメッセージはコンソールに表示される */
fact {
    all m : Message | m in Console.message
}

//=====================================================
//
// 実行
//
//=====================================================
pred show{}
run show
