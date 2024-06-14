pageextension 50100 PageExtension50100 extends "Payment Terms"
{
    layout
    {
        addafter(Description)
        {
            field("Code Field 1"; Rec."Code Field 1")
            {
                ApplicationArea = All;
                visible= false;
            }
            field("Code Field 2"; Rec."Code Field 2")
            {
                ApplicationArea = All;
                Visible= false;
            }
        }
    }
}
