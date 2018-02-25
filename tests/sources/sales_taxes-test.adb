with Types; use Types;
package body Sales_Taxes.Test is
   
   -------------------
   --

   procedure Assert (Test      : in out T_Test'Class;
                     Effective : in     String;
                     Expected  : in     String);

   --
   ---------------------
   

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
      
      Cart.Add (Create (Name => "book",
                        Price => 10.0));
      
      Test.Assert (Effective => Cart.Output,
                   Expected  => "1 book at 10.00" & CRLF
                   & "Sales Taxes: 0.00" & CRLF 
                   & "Total: 10.00"); 
      
   end One_Item;
   pragma Aor (Label, Harness_Routine_Implementation);
   
    ------------
   --  Assert --
    ------------
    
   procedure Assert (Test      : in out T_Test'Class;
                     Effective : in     String;
                     Expected  : in     String)
   is
   begin
      Test.Assert (Actual   => Effective,
                   Expected => Expected,
                   Message  => ""); 
      
   end Assert;
     

end Sales_Taxes.Test;
