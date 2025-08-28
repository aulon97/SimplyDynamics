codeunit 80100 "Event Subsrcriber"
{
    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post", OnCodeOnAfterGenJnlPostBatchRun, '', false, false)]
    // local procedure "Gen. Jnl.-Post_OnCodeOnAfterGenJnlPostBatchRun"(var GenJnlLine: Record "Gen. Journal Line")
    // begin
    //     gUserJnlPostingMgt.Run(GenJnlLine);
    // end;

    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Batch", OnProcessLinesOnAfterPostGenJnlLines, '', false, false)]
    // local procedure "Gen. Jnl.-Post Batch_OnProcessLinesOnAfterPostGenJnlLines"(var GenJournalLine: Record "Gen. Journal Line"; GLRegister: Record "G/L Register"; var GLRegNo: Integer; PreviewMode: Boolean)
    // begin
    //     gUserJnlPostingMgt.Run(GenJournalLine);
    // end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Batch", OnAfterPostGenJournalLine, '', false, false)]
    local procedure "Gen. Jnl.-Post Batch_OnAfterPostGenJournalLine"(var GenJournalLine: Record "Gen. Journal Line"; var Result: Boolean; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line")
    begin
        gUserJnlPostingMgt.Run(GenJournalLine);
    end;

    var
        gUserJnlPostingMgt: Codeunit "User Jnl. Posting Management";
}