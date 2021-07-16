create or replace package assert
   authid current_user
as
 --
 -- V0.2
 --

    procedure is_true(val      boolean);

    procedure usr(assumed_user varchar2);

end assert;
/
