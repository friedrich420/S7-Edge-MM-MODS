.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettings_MultiSelect.java"


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
    .line 137
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$300(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 157
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 141
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveCallback onRemovalSucceeded called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$100(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$200(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    goto :goto_0
.end method
