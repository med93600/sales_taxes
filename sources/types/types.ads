private with Ada.Strings.Unbounded;
package Types is

   type T_Item;
   function Create (Name : in String;
                    Price : in Float) return T_Item;

   type T_Item is private;
private
   type T_Item is record
      Name : Ada.Strings.Unbounded.Unbounded_String;
      Price : Float;
   end record;

end Types;
