package body Sales_Taxes.Original_Input_Test is

   ------------
   -- Set_Up --
   ------------

   overriding procedure Set_Up (Test : in out T_Test)
   is
      pragma Unreferenced (Test);
   begin
      null;
   end Set_Up;
   --------------------
   -- Tear_Down_Case --
   --------------------
   overriding procedure Tear_Down_Case (Test : in out T_Test)
   is
      pragma Unreferenced (Test);
   begin
      null;
   end Tear_Down_Case;

   --------------------
   --  Register_Tests --
   --------------------
   procedure Register_Tests (Test : in out T_Test)
   is
      pragma Unreferenced (Test);
      package Handler is new AUnit.Test_Cases.Specific_Test_Case_Registration (T_Test);
      pragma Unreferenced (Handler);
   begin

--        Handler.Register_Wrapper 
--          (Test    => Test,
--           Routine => Input_1_Test'Access,
--           Name    => "Input_1_Test");
      null;
      pragma Aor (Label, Harness_Routine_Registration);

   end Register_Tests;

   --------------------
   --  Input_1_Test --
   --------------------

   procedure Input_1_Test (Test : in out T_Test'Class)
   is
--        Cart : T_Cart := Create;
--        Book : T_Book := Create (12.49);
--        Music : T_CD  := Create (16.99);
--        Chocolate : T_Chocolate  := Create (0.85);
   begin
--        Cart.Add (Books);
--        Cart.Add (Books);
--        Cart.Add (Music);
--        Cart.Add (Chocolate);
      
      
      Test.Assert (Condition => False,
                  Message   => "not yet implemented ");
   end Input_1_Test;
   pragma Aor (Label, Harness_Routine_Implementation);

end Sales_Taxes.Original_Input_Test;
