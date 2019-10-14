with Ada.Text_IO; use Ada.Text_IO;

package body Ejercicios
with SPARK_Mode => On
is

   procedure replaceChars (inputStr: in out String; replacementStr: in String; replacementChar: in Character) is
      -- Procedimiento que toma una string inputStr, 
      -- busca en ella los caracteres contenidos en replacementStr,
      -- reemplaza cada caracter con el caracter replacementChar,
      -- devuelve la string original modificada.
      J: Positive := 1;
      K: Positive := 1;
   begin
      
      while J<=inputStr'Length loop
         
         pragma Loop_Variant(Increases => J);
         pragma Loop_Invariant(J <=  inputStr'Length);
         
         while K<=replacementStr'Length loop
            
            pragma Loop_Variant(Increases => K);
            pragma Loop_Invariant(K<=replacementStr'Length);
            
            if inputStr(J)=replacementStr(K) then
               inputStr(J):=replacementChar;
            end if;
            
            K:=K+1;
            
         end loop;
         K:=1;
         
         J:= J+1;
         
      end loop;
   end replaceChars;
   
   function binAdd (bin_num1: bin_t; bin_num2: bin_t) return bin_t is
      -- Funcion que toma dos numeros binarios positivos bin_num1 y bin_num2,
      -- realiza su suma y la devuelve
      -- devuelve un array formado por -1 en caso de salirse de margenes
      J: Integer := 4;
      resultado : bin_t := (0,0,0,0);
      acarreo : Integer := 0;
      temp : Integer;
   begin
      while J>=1 loop
         temp := bin_num1(J) + bin_num2(J) + acarreo;
         pragma Loop_Variant(Decreases => J);
         pragma Loop_Invariant(acarreo = 1 or acarreo = 0);
         pragma Loop_Invariant(J'Loop_Entry>=J and J>0);
         if temp >= 2 then
            acarreo:=1;
            resultado(J):=1;
            
         elsif temp = 1 then
            resultado(J):=1;
            acarreo:=0;
         else
            resultado(J):=0;
            acarreo:=0;
         end if;
         
         J:=J-1;
         
      end loop;
      
      if acarreo=1 then
         return (-1,-1,-1,-1);
      else
         return resultado;
      end if;
      
   end binAdd;
        
   function mixArray (v1: t_array; v2: t_array) return t_array is
      -- Funcion que toma dos arrays,
      -- Mezcla las posiciones pares del primer array
      -- con las posiciones impares del segundo array
      -- y devuelve el array resultante
   begin
      return (0,0);
   end mixArray;
   
   procedure mixNumber (num: in out Positive) is
      -- Procedimiento que toma un numero positivo num
      -- suma sus cifras por separado,
      -- hasta llegar a un solo numero
      -- ej: num=156, num=1+5+6=12, num=1+2=3, return 3
   begin
      null;
   end mixNumber;
   
   function extendArray (num1: Integer; num2: Integer) return t_array is
      -- Procedimiento que toma dos numero enteros positivos de entrada,
      -- y devuelve un array con los dos numeros, la suma y la resta.
      
   begin
      null;
      return(0,0);
   end extendArray;
   
   procedure multiplicacionVector(inputArray: in out t_array; num : in Integer) is
      -- Procedimiento que toma un array,
      -- y multiplica cada valor por un numero num,
      -- devuelve el array resultante
   begin
      null;
   end multiplicacionVector;
   
   
end Ejercicios;
