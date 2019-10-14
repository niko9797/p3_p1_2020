package Ejercicios
   with SPARK_Mode => On
is

   precision : constant Positive:=4;

   subtype Bool_val is Integer range -1 .. 1;
   type bin_t is array (Integer range 1 .. precision) of Bool_val;

   type t_array is array(Integer range 1 .. 2) of Integer;

   procedure replaceChars (inputStr: in out String; replacementStr: in String; replacementChar: in Character) with
     Global =>  null,
     Depends =>   (inputStr => (inputStr, replacementStr, replacementChar)),
       Pre =>   inputStr'Length/=0 and
       replacementStr'Length/=0 and
       inputStr'First=0 and
       replacementStr'First=0 and
       replacementChar in Character'Range,
     Post => (if (for all x in inputStr'Range) => (inputStr'Old(x)) /= ((for all y in replacementStr'Range) => (replacementStr(y)))) then (inputStr=inputStr'Old))

   ;

   function binAdd (bin_num1: bin_t; bin_num2: bin_t) return bin_t with
     Global => null,
     Depends => (binAdd'Result => (bin_num1, bin_num2)),
     Pre => (for all x in bin_num1'Range => bin_num1(x)/=-1) and
     (for all x in bin_num2'Range => (bin_num2(x)/=-1)),

       Contract_Cases =>
         ((bin_num1(1)=1 and then bin_num2(1)=1) => binAdd'Result=(-1,-1,-1,-1),
          (bin_num1(1)=0 and then bin_num2(1)=0) => binAdd'Result/=(-1,-1,-1,-1),
         ((bin_num1(1)=1 and then bin_num2(1)=0) or (bin_num1(1)=0 and then bin_num2(1)=1)) => (binAdd'Result(1)=1) or (binAdd'Result=(-1,-1,-1,-1)))
   ;

   function mixArray (v1: t_array; v2: t_array) return t_array
   ;

   procedure mixNumber (num: in out Positive)
   ;

   function extendArray (num1: Integer; num2: Integer) return t_array
   ;

   procedure multiplicacionVector(inputArray: in out t_array; num : in Integer)
   ;

end Ejercicios;
