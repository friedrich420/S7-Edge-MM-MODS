.class Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 727
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    .line 771
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 733
    :pswitch_1
    const/4 v0, 0x0

    .line 734
    .local v0, "skipFinish":Z
    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_5

    .line 735
    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "Fingerprint Recognition Success! Enable Fingerprint lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$100(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$200(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    .line 766
    :cond_1
    :goto_1
    if-nez v0, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$300(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$400(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 740
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$500(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 743
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintLockSettings;->setFingerprintLock()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$600(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    .line 744
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$500(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 746
    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v3, :cond_1

    .line 747
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 748
    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const v2, 0x7f0e11e2

    # invokes: Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$700(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V

    .line 763
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$500(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 750
    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_8

    .line 751
    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const v2, 0x7f0e11e5

    # invokes: Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$700(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V

    goto :goto_2

    .line 753
    :cond_8
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_6

    .line 754
    const/4 v0, 0x1

    .line 755
    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$000(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
