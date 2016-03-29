.class abstract Lcom/android/settings/SaveChosenLockWorkerBase;
.super Landroid/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SaveChosenLockWorkerBase$1;,
        Lcom/android/settings/SaveChosenLockWorkerBase$Listener;,
        Lcom/android/settings/SaveChosenLockWorkerBase$Task;
    }
.end annotation


# instance fields
.field protected mChallenge:J

.field private mFinished:Z

.field protected mHasChallenge:Z

.field private mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

.field private mResultData:Landroid/content/Intent;

.field protected mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWasSecureBefore:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mFinished:Z

    .line 85
    iput-object p1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SaveChosenLockWorkerBase;->setRetainInstance(Z)V

    .line 46
    return-void
.end method

.method protected prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJ)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    iput-boolean p3, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mHasChallenge:Z

    .line 64
    iput-wide p4, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mChallenge:J

    .line 65
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mFinished:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 71
    return-void
.end method

.method protected abstract saveAndVerifyInBackground()Landroid/content/Intent;
.end method

.method public setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    if-ne v0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    .line 54
    iget-boolean v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected start()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/android/settings/SaveChosenLockWorkerBase$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/SaveChosenLockWorkerBase;Lcom/android/settings/SaveChosenLockWorkerBase$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/SaveChosenLockWorkerBase$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method
