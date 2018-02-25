
with AUnit;
with AUnit.Test_Cases;

package Sales_Taxes.Test is

   type T_Test is new AUnit.Test_Cases.Test_Case with null record;

   function Name            (Test : in T_Test) return AUnit.Message_String is (AUnit.Format ("sales_taxes.test"));

   procedure Register_Tests (Test : in out T_Test);
   overriding procedure Set_Up (Test : in out T_Test);
   overriding procedure Tear_Down_Case (Test : in out T_Test);
private

   procedure One_Item (Test : in out T_Test'Class);
   pragma Aor (Label, Harness_Routine_Specification);
end Sales_Taxes.Test;
