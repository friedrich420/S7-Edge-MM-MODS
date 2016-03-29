.class Lcom/android/settings/applock/AppLockTypeFragment$2$1;
.super Ljava/lang/Object;
.source "AppLockTypeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applock/AppLockTypeFragment$2;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/applock/AppLockTypeFragment$2;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iput-object p2, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 364
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_0

    .line 407
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 370
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v2, v2, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v2}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->finish()V

    goto :goto_0

    .line 376
    :sswitch_2
    const/4 v0, 0x0

    .line 377
    .local v0, "skipFinish":Z
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    # getter for: Lcom/android/settings/applock/AppLockTypeFragment;->mFlags:Z
    invoke-static {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->access$100(Lcom/android/settings/applock/AppLockTypeFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    # invokes: Lcom/android/settings/applock/AppLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->access$200(Lcom/android/settings/applock/AppLockTypeFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "applock_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    # invokes: Lcom/android/settings/applock/AppLockTypeFragment;->setAppLockFingerBackupKey()V
    invoke-static {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->access$300(Lcom/android/settings/applock/AppLockTypeFragment;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->finish()V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v2, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 388
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v2, v2, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v2}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 389
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->finish()V

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-eq v1, v2, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_0

    .line 396
    const/4 v0, 0x1

    .line 397
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2$1;->this$1:Lcom/android/settings/applock/AppLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    # getter for: Lcom/android/settings/applock/AppLockTypeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applock/AppLockTypeFragment;->access$000(Lcom/android/settings/applock/AppLockTypeFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applock/AppLockTypeFragment$2$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applock/AppLockTypeFragment$2$1$1;-><init>(Lcom/android/settings/applock/AppLockTypeFragment$2$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 364
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0x186a0 -> :sswitch_1
    .end sparse-switch
.end method
