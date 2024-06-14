tableextension 50100 tableextension50100 extends "Payment Terms"
{
    fields
    {
        field(50100; "Code Field 1"; Code[20])
        {
            Caption = 'Code Field 1';
            DataClassification = ToBeClassified;
            //ObsoleteState = Removed;
        }
        field(50101; "Code Field 2"; Code[20])
        {
            Caption = 'Code Field 2';
            DataClassification = ToBeClassified;
            Editable = true;

        }
        field(50102; "Code Field 3"; Code[20])
        {
            Caption = 'Code Field 3';
            DataClassification = ToBeClassified;
            Editable = false;
        }

    }
}
