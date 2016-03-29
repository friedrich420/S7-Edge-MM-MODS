.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 5
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    .line 619
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 620
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    invoke-virtual {v1, v4, p2, v2, v3}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 647
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v2

    invoke-virtual {v1, v4, p2, v4, v2}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v0

    .line 629
    .local v0, "localEffectiveUserId":I
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1100(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static {v2, p1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    # setter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$902(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-wide/16 v6, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v4

    .line 590
    .local v4, "localEffectiveUserId":I
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 592
    .local v2, "challenge":J
    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    .line 595
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1100(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    new-instance v5, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    invoke-direct {v5, p0, p2, v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    # setter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v6, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$902(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 615
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 518
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 525
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$900(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1000(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 531
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_challenge"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 533
    .local v2, "verifyChallenge":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->access$200()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1100(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 537
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 538
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 541
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 543
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 544
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # ++operator for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1204(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    .line 551
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # setter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v3, v7}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1202(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 552
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ConfirmLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 553
    .restart local v1    # "mIntent":Landroid/content/Intent;
    const-string v3, "lockscreen.password_type"

    const/high16 v4, 0x20000

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string v3, "personal_mQuality"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    const-string v3, "from_personal"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    const-string v3, "forLockPatternBackupPin"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    const-string v3, "confirm_credentials"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    const/high16 v3, 0x2000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 559
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 560
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 562
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v4, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    # invokes: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1300(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/ConfirmLockPattern$Stage;)V

    goto/16 :goto_0

    .line 565
    :cond_4
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v4, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    # invokes: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1300(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/ConfirmLockPattern$Stage;)V

    goto/16 :goto_0

    .line 569
    :cond_5
    if-eqz v2, :cond_6

    .line 570
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 571
    invoke-direct {p0, p1, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 575
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 579
    :cond_7
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I
    invoke-static {v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v4

    invoke-virtual {v3, v7, v0, v7, v4}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 511
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$800(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/KnoxConfirmLockHelper;->setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V

    .line 514
    :cond_0
    return-void
.end method
