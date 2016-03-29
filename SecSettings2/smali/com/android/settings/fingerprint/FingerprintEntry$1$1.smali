.class Lcom/android/settings/fingerprint/FingerprintEntry$1$1;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEntry$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEntry$1;Lcom/samsung/android/fingerprint/FingerprintEvent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 251
    :pswitch_1
    const/4 v0, 0x0

    .line 252
    .local v0, "skipFinish":Z
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_2

    .line 253
    const-string v1, "FpstFingerprintEntry"

    const-string v2, "EVENT_IDENTIFY_FINISHED and then startFragment called "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$202(Lcom/android/settings/fingerprint/FingerprintEntry;Z)Z

    .line 255
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$300(Lcom/android/settings/fingerprint/FingerprintEntry;Landroid/content/Context;)V

    .line 274
    :cond_1
    :goto_1
    if-nez v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 261
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    const v2, 0x7f0e11e2

    # invokes: Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$400(Lcom/android/settings/fingerprint/FingerprintEntry;I)V

    goto :goto_1

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_4

    .line 263
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    const v2, 0x7f0e11e5

    # invokes: Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$400(Lcom/android/settings/fingerprint/FingerprintEntry;I)V

    goto :goto_1

    .line 264
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_1

    .line 265
    const/4 v0, 0x1

    .line 266
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEntry;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$100(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEntry$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry$1$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
