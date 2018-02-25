with Types;
package Sales_Taxes is
   type T_Cart is tagged null record;
   procedure Add (Self : in T_Cart;
                  Item : in Types.T_Item);
   function Output (Self : in T_Cart) return String;
end Sales_Taxes;
