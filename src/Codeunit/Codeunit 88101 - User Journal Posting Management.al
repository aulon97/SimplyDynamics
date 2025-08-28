codeunit 80101 "User Jnl. Posting Management"
{
    TableNo = "Gen. Journal Line";
    trigger OnRun()
    var
        lUserJnlPostingHistory: Record "User Journal Posting History";
    begin
        lUserJnlPostingHistory.Init();
        lUserJnlPostingHistory."User Id" := USERID;
        lUserJnlPostingHistory."Journal Batch Name" := Rec."Journal Batch Name";
        lUserJnlPostingHistory."Journal Template Name" := Rec."Journal Template Name";
        lUserJnlPostingHistory.Amount := Rec.Amount;
        lUserJnlPostingHistory."Currency Code" := Rec."Currency Code";
        lUserJnlPostingHistory."Created Date/TIme" := CURRENTDATETIME;
        lUserJnlPostingHistory.Insert();
    end;


}