pageextension 50023 GeneralLedgerEntries extends "General Ledger Entries"
{
    layout
    {
        addbefore(Amount)
        {
            field(CurrencyCode; Rec."Source Currency Code")
            {
                ApplicationArea = All;
                Caption = 'Currency Code';
            }
        }
       
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