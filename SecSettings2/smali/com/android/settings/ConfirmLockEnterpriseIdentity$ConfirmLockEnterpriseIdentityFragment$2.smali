.class Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 416
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 420
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$900(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e07b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$702(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;I)I

    .line 422
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 408
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 409
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$900(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$2;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    const v3, 0x7f0e07e3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
