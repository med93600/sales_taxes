
with AUnit.Test_Suites,
     AUnit.Test_Cases,
     AUnit.Extras.Run,
     AUnit.Extras.Reporters.Consoles;

pragma Aor (Label, Harness_Withed_Units);
package Kata_Harness is

   Test_Suite  : constant AUnit.Test_Suites.Access_Test_Suite := AUnit.Test_Suites.New_Suite;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is (Test_Suite);
   pragma Aor (Label, Harness_Test_Case_Declaration);

   Reporter : AUnit.Extras.Reporters.Consoles.Console_Reporter;

   procedure Run is new AUnit.Extras.Run.Test_Runner (Suite => Suite);

   procedure Initialize;

end Kata_Harness;
