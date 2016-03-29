.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 615
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    const-string v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZI)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->copyTwselectionChecklist()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 618
    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 2
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 621
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    const-string v1, "OnTwMultiSelectStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwMultiSelected()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 625
    return-void
.end method

.method public onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "isShiftpress"    # Z
    .param p7, "isCtrlpress"    # Z
    .param p8, "isPentpress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTwMultiSelected, position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    if-lez p3, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    add-int/lit8 v1, p3, -0x1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwChecklist(I)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;I)V

    .line 634
    :cond_0
    return-void
.end method
