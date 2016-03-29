.class Lcom/android/settings/fingerprint/FingerprintSettings$4;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 712
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->setTwselectionChecklist(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$600(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V

    .line 714
    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 4
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 718
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "OnTwMultiSelectStop"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 721
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->twselectionChecklist:[Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings;)[Z

    move-result-object v3

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V

    .line 725
    :cond_0
    return-void

    .line 719
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 730
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "FpstFingerprintSettings"

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

    .line 731
    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    add-int/lit8 v1, p3, -0x1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->updateTwMultiSelected(I)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings;I)V

    .line 734
    :cond_0
    return-void
.end method
