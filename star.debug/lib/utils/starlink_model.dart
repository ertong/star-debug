

class StarlinkModel {
  static bool hasCady(String hw){
    return !(
        hw.startsWith("rev4") || hw=="rev_mini_prod1" || hw.startsWith("mini1_")  || hw.startsWith("rev5_")
    );
  }
}