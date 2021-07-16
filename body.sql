create or replace package body assert
as
 --
 -- V0.2
 --

    procedure is_true(val boolean) is -- {
    begin

        if val is null then
           raise_application_error(-20800, user || ' val is neither true nor false');
        end if;

        if not val then
           raise_application_error(-20800, user || ' val is false');
        end if;

    end is_true; -- }

    procedure usr(assumed_user in varchar2) is -- {
    begin

       if upper(assumed_user) != user then
          raise_application_error(-20800, user || ' is not ' || assumed_user);
       end if;

    end usr; -- }

end assert;
/
