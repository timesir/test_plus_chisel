import Chisel._
import scala.math._


class SimpleModule extends Module {
  val io = IO(new Bundle {
    val start = Input(Bool())
    val out_plus = Output(UInt(width=32))
  })


  
  val vecPlus = Vec((0 to 5).map(_.U))
  val regVec = Reg(init =Vec(6,UInt(0,width=32)))
  when(io.start === 1.U)
  {
    regVec := vecPlus
  }
  io.out_plus := regVec.reduce(_+_)

}



object MainObj extends App {
  var margs=Array("--backend","v")
  chiselMain(margs, () => Module(new SimpleModule))
}
