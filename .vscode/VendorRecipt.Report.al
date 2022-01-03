report 50111 VendorReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Vendor Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'VendorsReciptReport.rdl';


    dataset
    {

        dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
        {
            DataItemTableView = sorting("Entry No.");


            column(FromDate; FromDate)
            {

            }
            column(ToDate; ToDate)
            {

            }
            column(Document_Date; "Document Date")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Closed_at_Date; "Closed at Date")
            {

            }
            column(Vendor_No_; "Vendor No.")
            {

            }
            column(Vendor_Name; "Vendor Name")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Debit_Amount; "Debit Amount")
            {

            }
            column(Credit_Amount; "Credit Amount")
            {

            }
            column(Amount; Amount)
            {

            }

            trigger OnPreDataItem()

            begin

                SetRange("Posting Date", FromDate, ToDate);

            end;


        }
    }
    requestpage
    {
        layout
        {
            area(Content)

            {
                group(GroupName)
                {
                    field(FromDate; FromDate)
                    {
                        ApplicationArea = All;
                    }

                    field(ToDate; ToDate)
                    {
                        ApplicationArea = ALL;
                    }

                }

            }

        }

    }

    var

        FromDate: Date;

        ToDate: Date;

}



