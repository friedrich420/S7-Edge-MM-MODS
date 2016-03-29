.class Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1847
    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPassword$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ChooseLockPassword$1;

    .prologue
    .line 1847
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1867
    const/4 v1, 0x0

    .line 1868
    .local v1, "result":Landroid/content/Intent;
    # getter for: Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->access$1000()Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 1870
    .local v3, "userId":I
    :goto_0
    # getter for: Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1871
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(Z)V

    .line 1874
    :cond_0
    # getter for: Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->access$1000()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1875
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1893
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v4, :cond_3

    .line 1896
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1901
    .local v2, "token":[B
    :goto_2
    if-nez v2, :cond_2

    .line 1902
    const-string v4, "ChooseLockPassword"

    const-string v5, "critical: no token returned for known good password."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1906
    .restart local v1    # "result":Landroid/content/Intent;
    const-string v4, "hw_auth_token"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1909
    .end local v2    # "token":[B
    :cond_3
    return-object v1

    .line 1868
    .end local v3    # "userId":I
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto :goto_0

    .line 1878
    .restart local v3    # "userId":I
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1879
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "knoxEnforcePassword"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1882
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1884
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_setup_complete"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->access$900()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1885
    const/high16 v4, 0x50000

    iget v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    if-ne v4, v5, :cond_7

    .line 1886
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings"

    const-string v6, "PYPT"

    const-string v7, "Password"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1888
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings"

    const-string v6, "PYPT"

    const-string v7, "Pin"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v2, 0x0

    .restart local v2    # "token":[B
    goto/16 :goto_2
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "required"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "chosenPassword"    # Ljava/lang/String;
    .param p7, "currentPassword"    # Ljava/lang/String;
    .param p8, "requestedQuality"    # I

    .prologue
    .line 1856
    invoke-virtual/range {p0 .. p5}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJ)V

    .line 1858
    iput-object p6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    .line 1859
    iput-object p7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    .line 1860
    iput p8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    .line 1862
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->start()V

    .line 1863
    return-void
.end method
