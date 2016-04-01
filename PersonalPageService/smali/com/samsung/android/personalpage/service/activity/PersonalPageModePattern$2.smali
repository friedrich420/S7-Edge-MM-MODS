.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;
.super Ljava/lang/Object;
.source "PersonalPageModePattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 282
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$300(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
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
    .line 286
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$400(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    iget-boolean v3, v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isBackupKey:Z

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->sendBroadcastForPrivateFinger()V

    .line 291
    :cond_0
    :try_start_0
    const-string v3, "PersonalPageModePattern"

    const-string v4, "pattern verification is successful"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->requestPrivateModeOn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PersonalPageModePattern"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception, mode change is fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # ++operator for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mNumWrongConfirmAttempts:I
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$504(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long v0, v4, v6

    .line 303
    .local v0, "deadline":J
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->setDeadline(J)V
    invoke-static {v3, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$600(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;J)V

    .line 304
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$700(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;J)V

    goto :goto_0

    .line 307
    .end local v0    # "deadline":J
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    sget-object v4, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V
    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$800(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V

    .line 308
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->postClearPatternRunnable()V
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$900(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$300(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method
