with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Types is

   ------------
   -- Create --
   ------------

   function Create
     (Name : in String;
      Price : in Float)
      return T_Item
   is
   begin
      return T_Item'(Name  => To_Unbounded_String (Name),
                     Price => Price);
   end Create;

end Types;
