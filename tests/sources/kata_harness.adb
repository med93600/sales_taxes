
package body Kata_Harness is
   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin

      AUnit.Test_Suites.Add_Test (Suite,  Sales_Taxes_Original_Input_Test);

      AUnit.Test_Suites.Add_Test (Suite,  Sales_Taxes_Test);
       pragma Aor (Label, Harness_Test_Case_Registration);
   end Initialize;

begin
   Initialize;
end Kata_Harness;
