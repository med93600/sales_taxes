
with Ada.Command_Line,
     Ada.Exceptions,
     Ada.Text_IO;


procedure Kata_Harness.Main is
begin
   --  AUnit.Extras.Run.Enable_Test_Separators;
   Reporter.Set_Use_ANSI_Colors (True);

   Run (Reporter => Reporter);

exception
   when E : others =>
      Ada.Command_Line.Set_Exit_Status (Ada.Command_Line.Failure);
      Ada.Text_IO.Put_Line ("(EE) failure " & Ada.Exceptions.Exception_Information (E));
end Kata_Harness.Main;
