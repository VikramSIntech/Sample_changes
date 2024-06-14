codeunit 50100 "Data Transfer"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        DataTransferFromOneFieldToOtherField(3, 50100, 50101)
    end;

    PROCEDURE DataTransferFromOneFieldToOtherField(TableNo_iInt: Integer; FromFieldNo_iInt: Integer; ToFieldNo_iInt: Integer);
    VAR
        RecordRef_: RecordRef;
        FieldRef_: FieldRef;
    BEGIN
        RecordRef_.Open(TableNo_iInt);
        IF RecordRef_.FindSet() then begin
            repeat
                FieldRef_ := RecordRef_.Field(ToFieldNo_iInt);
                FieldRef_.Value := RecordRef_.Field(FromFieldNo_iInt);
                RecordRef_.Modify();
            until RecordRef_.Next() = 0;
        end;
    END;
}