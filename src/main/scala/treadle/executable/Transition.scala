// See LICENSE for license details.

package treadle.executable
import firrtl.ir.Info

trait Transition

case object PositiveEdge extends Transition
case object NegativeEdge extends Transition
case object NoTransition extends Transition

/**
  * Used internally by assigners that care about clock transitions
  * @param clockSymbol the clock
  * @param prevClockSymbol the previous state of the clock
  * @param dataStore needed to get current and prev values
  */
case class ClockTransitionGetter(clockSymbol: Symbol, prevClockSymbol: Symbol, dataStore: DataStore) {
  private val clockIndex = clockSymbol.index
  private val prevClockIndex = prevClockSymbol.index
  private val intData = dataStore.intData

  def isPosEdge: Boolean = intData(clockIndex) > 0 && intData(prevClockIndex) == 0
  def isNegEdge: Boolean = intData(clockIndex) == 0 && intData(prevClockIndex) > 0

  def transition: Transition = {
    if(isPosEdge) { PositiveEdge }
    else if(isNegEdge) { NegativeEdge }
    else { NoTransition }
  }
}

case class ClockBasedAssigner(
  assigner: Assigner,
  clockSymbol: Symbol,
  prevClockSymbol: Symbol,
  dataStore: DataStore,
  requiredTransition: Transition
) extends Assigner {

  override val symbol: Symbol = assigner.symbol
  override val info: Info = assigner.info

  private val clockTransitionGetter = ClockTransitionGetter(clockSymbol, prevClockSymbol, dataStore)

  override def run: FuncUnit = {
    if(clockTransitionGetter.transition == requiredTransition) {
      assigner.run()
    }
    () => Unit
  }

  override def setLeanMode(isLean: Boolean): Unit = {
    assigner.setLeanMode(isLean)
  }
}
