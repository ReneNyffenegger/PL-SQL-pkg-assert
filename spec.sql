create or replace package assert
   authid current_user
as
 -- 
 -- V0.1
 --
    procedure usr(assumed_user varchar2);

end assert;
/
