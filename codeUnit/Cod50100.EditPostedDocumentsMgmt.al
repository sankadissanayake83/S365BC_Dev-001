/// <summary>
/// Codeunit EditPostedDocumentsMgmt (ID 50100).
/// </summary>
codeunit 50100 EditPostedDocumentsMgmt
{
    [EventSubscriber(ObjectType::Page, Page::"Posted Sales Inv. - Update", 'OnAfterRecordChanged', '', false, false)]
    local procedure OnAfterRecordChanged(var SalesInvoiceHeader: Record "Sales Invoice Header"; xSalesInvoiceHeader: Record "Sales Invoice Header"; var IsChanged: Boolean);
    begin
        IsChanged := (SalesInvoiceHeader."External Document No." <> xSalesInvoiceHeader."External Document No.");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Inv. Header - Edit", 'OnRunOnBeforeAssignValues', '', false, false)]
    local procedure OnBeforeSalesInvHeaderModify(var SalesInvoiceHeader: Record "Sales Invoice Header"; SalesInvoiceHeaderRec: Record "Sales Invoice Header");
    begin
        SalesInvoiceHeader."External Document No." := SalesInvoiceHeaderRec."External Document No.";
    end;
}
