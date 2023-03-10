codeunit 50001 "Student Code unit"
{
    trigger OnRun()
    begin
        ProcessStudentMarks();
    end;

    var
        myInt: Integer;

    procedure ProcessStudentMarks()
    var
        myInt: Integer;
    begin
        Message('The student marks are 100');
    end;
}