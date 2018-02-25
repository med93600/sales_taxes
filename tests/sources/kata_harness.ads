
with AUnit.Test_Suites,
     AUnit.Test_Cases,
     AUnit.Extras.Run,
     AUnit.Extras.Reporters.Consoles;

pragma Aor (Label, Harness_Withed_Units);

with Sales_Taxes.Original_Input_Test; --  Morpheus

with Sales_Taxes.Test; --  Morpheus
package Kata_Harness is

   Test_Suite  : constant AUnit.Test_Suites.Access_Test_Suite := AUnit.Test_Suites.New_Suite;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is (Test_Suite);

   Sales_Taxes_Original_Input_Test : constant AUnit.Test_Cases.Test_Case_Access := new Sales_Taxes.Original_Input_Test.T_Test;
   pragma Aor (Label, Sales_Taxes_Original_Input_Test);

   Sales_Taxes_Test : constant AUnit.Test_Cases.Test_Case_Access := new Sales_Taxes.Test.T_Test;
   pragma Aor (Label, Sales_Taxes_Test);
   pragma Aor (Label, Harness_Test_Case_Declaration);

   Reporter : AUnit.Extras.Reporters.Consoles.Console_Reporter;

   procedure Run is new AUnit.Extras.Run.Test_Runner (Suite => Suite);

   procedure Initialize;

end Kata_Harness;
