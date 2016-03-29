.class Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;
.super Ljava/lang/Object;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iput-object p2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v0, :sswitch_data_0

    .line 471
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 430
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    goto :goto_0

    .line 437
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v0, v1, :cond_4

    .line 440
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z
    invoke-static {v0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$102(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;Z)Z

    .line 442
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    # invokes: Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$200(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 448
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    # getter for: Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1$1;-><init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v1, v1, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    goto/16 :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0x186a0 -> :sswitch_1
    .end sparse-switch
.end method
