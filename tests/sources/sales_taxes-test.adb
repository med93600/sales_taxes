with Types; use Types;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
package body Sales_Taxes.Test is

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
      package Handler is new AUnit.Test_Cases.Specific_Test_Case_Registration (T_Test);
   begin

      Handler.Register_Wrapper 
        (Test    => Test,
         Routine => One_Item'Access,
         Name    => "One_Item");
      pragma Aor (Label, Harness_Routine_Registration);

   end Register_Tests;

   CRLF : constant String := "" & ASCII.CR & ASCII.LF;
   --------------------
   --  One_Item --
   --------------------

   procedure One_Item (Test : in out T_Test'Class)
   is
      Cart : T_Cart;
   begin
      
      Cart.Add (T_Item'(Name => To_Unbounded_String ("book"),
                        Price => 10.0));
      Test.Assert (Actual   => Cart.Output,
                   Expected => "1 book at 10.00" & CRLF
                   & "Sales Taxes: 0.00" & CRLF 
                   & "Total: 10.00",
                   Message => "");
   end One_Item;
   pragma Aor (Label, Harness_Routine_Implementation);

end Sales_Taxes.Test;
