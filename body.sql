create or replace package body assert
as
 --
 -- V0.1
 --

    procedure usr(assumed_user in varchar2) is
    begin

       if upper(assumed_user) != user then
          raise_application_error(-20800, user || ' is not ' || assumed_user);
       end if;

    end usr;

end assert;
/
