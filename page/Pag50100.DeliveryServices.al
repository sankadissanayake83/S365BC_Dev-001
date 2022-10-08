/// <summary>
/// Page Delivery Services (ID 50100).
/// </summary>
page 50100 "Delivery Services"
{
    Caption = 'Delivery Services';
    PageType = Worksheet;
    SourceTable = "Delivery Services";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }

    }

    actions
    {
        area(navigation)
        {
            action(ImportDeliveryServices)
            {
                ApplicationArea = All;
                Caption = 'Import Delivery Services', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Import;

                trigger OnAction()
                begin
                    Xmlport.Run(50100, false, true);
                end;
            }

            action(ExportDeliveryServices)
            {
                ApplicationArea = All;
                Caption = 'Export Delivery Services', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Export;

                trigger OnAction()
                begin
                    Xmlport.Run(50100, true, false);
                end;
            }
        }
    }
}
