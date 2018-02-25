with Ada.Strings.Unbounded;
package Types is
   type T_Item is record
      Name : Ada.Strings.Unbounded.Unbounded_String;
      Price : Float;
   end record;

end Types;
