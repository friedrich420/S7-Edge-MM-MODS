.class Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;
.super Ljava/lang/Object;
.source "ChooseLockAdditionalPin.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->startVerifyPattern(Lcom/android/internal/widget/LockPatternUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

.field final synthetic val$wasSecureBefore:Z


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Z)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    iput-boolean p2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->val$wasSecureBefore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v3, 0x1

    .line 723
    if-nez p1, :cond_0

    .line 724
    const-string v1, "ChooseLockAdditionalPin"

    const-string v2, "critical: no token returned for known good pattern"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->access$902(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 728
    # getter for: Lcom/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings/ChooseLockAdditionalPin;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    const-string v1, "ChooseLockAdditionalPin"

    const-string v2, "startVerifyPattern, KnoxFingerprint device lock set"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 733
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 735
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 736
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 737
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    # setter for: Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->access$1002(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Z)Z

    .line 738
    # getter for: Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->access$1100()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    # getter for: Lcom/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings/ChooseLockAdditionalPin;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->val$wasSecureBefore:Z

    if-nez v1, :cond_3

    # getter for: Lcom/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings/ChooseLockAdditionalPin;->access$800()Z

    move-result v1

    if-nez v1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;->this$0:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->startActivity(Landroid/content/Intent;)V

    .line 745
    :cond_3
    return-void
.end method
