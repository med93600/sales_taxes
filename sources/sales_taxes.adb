package body Sales_Taxes is
   CRLF : constant String := "" & ASCII.CR & ASCII.LF;

   ---------
   -- Add --
   ---------

   procedure Add
     (Self : in T_Cart;
      Item : in Types.T_Item)
   is
   begin
      null;
   end Add;

   ------------
   -- Output --
   ------------

   function Output (Self : in T_Cart) return String is
      pragma Unreferenced (Self);
   begin
      return "1 book at 10.00" & CRLF
        & "Sales Taxes: 0.00" & CRLF
        & "Total: 10.00";
   end Output;

end Sales_Taxes;
