.class Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 131
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_0

    .line 172
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 137
    :sswitch_1
    if-eqz p0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v6}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    .line 143
    :sswitch_2
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_1

    .line 144
    const-string v1, "FpstFingerprintConfirm"

    const-string v2, "Fingerprint Recognition Success! Start screen lock type"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "identifyFingerprint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(ILandroid/content/Intent;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v3, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 151
    const-string v1, "FpstFingerprintConfirm"

    const-string v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v2, 0x7f0e11e2

    # invokes: Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$100(Lcom/android/settings/fingerprint/FingerprintConfirm;I)V

    .line 165
    :cond_2
    :goto_1
    if-eqz p0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v6}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_4

    .line 154
    const-string v1, "FpstFingerprintConfirm"

    const-string v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v2, 0x7f0e11e5

    # invokes: Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$100(Lcom/android/settings/fingerprint/FingerprintConfirm;I)V

    goto :goto_1

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_2

    .line 157
    const-string v1, "FpstFingerprintConfirm"

    const-string v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$000(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0x186a0 -> :sswitch_1
    .end sparse-switch
.end method
