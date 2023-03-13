table 50001 "Student"
{
    DataClassification = ToBeClassified;
    Caption = 'Student';
    // CaptionML = enu = 'Student', DAN = 'ETUDEINT';
    DataCaptionFields = "No.", "Student Name";


    fields
    {
        field(1; "No."; Code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
            Editable = false;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesMgmt.TestManual(SalesSetup."Student No.");
                end;
            end;

        }
        field(2; "First Name"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[150])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                "Student Name" := "First Name" + ' ' + "Last Name";
            end;
        }
        field(4; Email; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }

        field(5; "Phone No."; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;

        }
        field(6; Gender; Enum Gender)
        {
            DataClassification = ToBeClassified;
            //OptionMembers = ,Male,Female;
        }
        field(7; DOB; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date of Birth';
        }
        field(8; "User ID"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "User Setup"."User ID";
            Editable = false;
            //TableRelation = "User Setup"."User ID" where("E-Mail" = field(Email));
        }
        field(9; "Student Name"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "No. Series"; Code[50])
        {
            TableRelation = "No. Series";
            Editable = false;
        }
        field(11; EntryDate; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(12; "Entry Time"; Time)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }

        key(key2; Email)
        {

        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Student Name") { }
    }

    var
        myInt: Integer;
        age: Integer;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgmt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        "User ID" := UserId;
        EntryDate := Today;
        // "Entry Time" := DT2Time(CurrentDateTime);
        "Entry Time" := Time;
        if "No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Student No.");
            // NoSeriesMgmt.GetNextNo()
            NoSeriesMgmt.InitSeries(SalesSetup."Student No.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    procedure TestFunctionnn()
    var
        myInt: Integer;
    begin
        Message('I have been clicked');
    end;

    local procedure OnAssistEditOnBeforeExit(var stud: Record Student)
    begin
    end;

    procedure AssistEdit(OldStud: Record Student): Boolean
    var
        Stud: Record Student;
    begin
        with Stud do begin
            Stud := Rec;
            SalesSetup.Get();
            SalesSetup.TestField("Student No.");
            if NoSeriesMgmt.SelectSeries(SalesSetup."Student No.", OldStud."No. Series", "No. Series") then begin
                NoSeriesMgmt.SetSeries("No.");
                Rec := Stud;
                OnAssistEditOnBeforeExit(Stud);
                exit(true);
            end;
        end;
    end;

}