with Ada.Text_IO;      use Ada.Text_IO;
with Ejercicios;       use Ejercicios;
with Test_Assertions;  use Test_Assertions;

package body Tests is

   --- Test procedimiento replaceChars
   ---
   ---
   ---
   ------------------------------
   ---
   ---
   ---

   procedure Test_1_1 is
      Msg   : constant String := "Comprobación procedimiento ReplaceChars test 1";
      in1 : String := "aaaabca";
      in2 : constant String := "bc";
      char1 : constant Character := 'k';
   begin
      Put_Line (in1);
      replaceChars (in1, in2, char1);
      Put_Line (in1);
      Assert_True (in1 = "aaaakka", Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1_1;

   procedure Test_1_2 is
      Msg   : constant String := "Comprobación procedimiento ReplaceChars test 2";
      in1 : String := "baabbccc";
      in2 : constant String := "bac";
      char1 : constant Character := 'k';
   begin
      replaceChars (in1, in2, char1);
      Assert_True (in1 = "kkkkkkkk", Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1_2;

   procedure Test_1_3 is
      Msg   : constant String := "Comprobación procedimiento ReplaceChars test 3";
      in1 : String := "";
      in2 : constant String := "bch";
      char1 : constant Character := 'k';
   begin
      replaceChars (in1, in2, char1);
      Assert_True (in1 = "", Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1_3;

   procedure Test_1_4 is
      Msg   : constant String := "Comprobación procedimiento ReplaceChars test 4";
      in1 : String := "aaa";
      in2 : constant String := "a";
      char1 : constant Character := 'k';
   begin
      replaceChars (in1, in2, char1);
      Assert_True (in1 = "kkk", Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1_4;

   procedure Test_1_5 is
      Msg   : constant String := "Comprobación procedimiento ReplaceChars test 5";
      in1 : String := "ccc";
      in2 : constant String := "a";
      char1 : constant Character := 'k';
   begin
      replaceChars (in1, in2, char1);
      Assert_True (in1 = "ccc", Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1_5;



   --- Test procedimiento binAdd
   ---
   ---
   ---
   ------------------------------
   ---
   ---
   ---

   procedure Test_2_1 is
      Msg   : constant String := "Comprobación procedimiento binAdd test 1";
      bin1 : constant bin_t := (0,0,0,0);
      bin2 : constant bin_t := (0,0,0,0);
      res : constant bin_t := (0,0,0,0);
   begin
      Assert_True (binAdd (bin1,bin2) = res, Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2_1;

   procedure Test_2_2 is
      Msg   : constant String := "Comprobación procedimiento binAdd test 2";
      bin1 : constant bin_t := (1,1,1,1);
      bin2 : constant bin_t := (0,0,0,0);
   begin
      Assert_True (binAdd (bin1,bin2) = (1,1,1,1), Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2_2;

   procedure Test_2_3 is
      Msg   : constant String := "Comprobación procedimiento binAdd test 3";
      bin1 : constant bin_t := (1,1,1,1);
      bin2 : constant bin_t := (0,0,0,1);
   begin
      Assert_True (binAdd (bin1,bin2) = (-1,-1,-1,-1), Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2_3;

   procedure Test_2_4 is
      Msg   : constant String := "Comprobación procedimiento binAdd test 4";
      bin1 : constant bin_t := (1,0,0,0);
      bin2 : constant bin_t := (1,0,0,0);
   begin
      Assert_True (binAdd (bin1,bin2) = (-1,-1,-1,-1), Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2_4;

   procedure Test_2_5 is
      Msg   : constant String := "Comprobación procedimiento binAdd test 5";
      bin1 : constant bin_t := (0,1,1,1);
      bin2 : constant bin_t := (1,1,0,0);
   begin
      Assert_True (binAdd (bin1,bin2) = (-1,-1,-1,-1), Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2_5;

   procedure Test_2_6 is
      Msg   : constant String := "Comprobación procedimiento binAdd test 6";
      bin1 : constant bin_t := (1,0,1,0);
      bin2 : constant bin_t := (0,1,0,1);
   begin
      Assert_True (binAdd (bin1,bin2) = (1,1,1,1), Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2_6;

   procedure Test_2_7 is
      Msg   : constant String := "Comprobación procedimiento binAdd test 7";
      bin1 : constant bin_t := (0,1,0,1);
      bin2 : constant bin_t := (1,0,1,0);
   begin
      Assert_True (binAdd (bin1,bin2) = (1,1,1,1), Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2_7;

end Tests;
