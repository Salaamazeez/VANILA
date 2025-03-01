pageextension 50024 GLPostingPreviewExt extends "G/L Entries Preview"
{
    layout
    {
        addafter(Description)
        {
            field("G/L Account Name ";Rec."G/L Account Name") { }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord()
    begin
        GetVendor();
    end;

    local procedure GetVendor()
    begin
        if PurchInvHdr.Get(Rec."Document No.") then;
    end;
    var
        PurchInvHdr: Record "Purch. Inv. Header";
}