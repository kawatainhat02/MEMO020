aspect VisitAspect {
  void Point.acceptVisitor(Visitor v) {
    v.visit(this);
  }
}
pointcut set() : execution(* set*(..) ) && this(Point);
after () : set() {
Display.update();
}
before() : execution
