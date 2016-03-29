.class Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;
.super Landroid/os/AsyncTask;
.source "ConfirmLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->handleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "cacpin"    # [Ljava/lang/String;

    .prologue
    .line 286
    const/4 v1, -0x1

    .line 293
    .local v1, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$400(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->val$password:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    move-result v2

    .line 294
    .local v2, "status":Z
    const-string v3, "ConfirmLockEnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPassword : status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 302
    const-string v3, "ConfirmLockEnterpriseIdentity"

    const-string v4, "EnterpriseIdentityVerification : invoked: validateUserAuthentication"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v2    # "status":Z
    :goto_0
    const-string v3, "ConfirmLockEnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnterpriseIdentityVerification: result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 306
    .restart local v2    # "status":Z
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 308
    .end local v2    # "status":Z
    :catch_0
    move-exception v0

    .line 309
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const-string v3, "ConfirmLockEnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In doInBackground Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 262
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/16 v9, 0x64

    .line 333
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 334
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 335
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setKeepScreenOn(Z)V

    .line 337
    const-string v6, "ConfirmLockEnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Verify completed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v4, 0x0

    .line 339
    .local v4, "res":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 385
    :goto_0
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mOrientation:I
    invoke-static {v7}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$200(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 389
    .end local v4    # "res":Z
    :goto_1
    return-void

    .line 341
    .restart local v4    # "res":Z
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 343
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    if-eqz v6, :cond_0

    if-lt v5, v9, :cond_0

    .line 344
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    .line 350
    :cond_0
    sget-object v6, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v6}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    const-string v6, "enterprise_password"

    iget-object v7, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->val$password:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 355
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "res":Z
    .end local v5    # "userId":I
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ConfirmLockEnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VerifyCAC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "res":Z
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v9, :cond_2

    .line 361
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->knoxConfirmLockHelper:Lcom/android/settings/KnoxConfirmLockHelper;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$500(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/settings/KnoxConfirmLockHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/KnoxConfirmLockHelper;->checkNumberOfAttempts()I

    .line 362
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    const v7, 0x7f0e07cb

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->showError(I)V
    invoke-static {v6, v7}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$600(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;I)V

    goto/16 :goto_0

    .line 364
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # ++operator for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$704(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_3

    .line 365
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$400(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 366
    .local v0, "deadline":J
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->handleAttemptLockout(J)V
    invoke-static {v6, v0, v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$800(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;J)V

    goto/16 :goto_0

    .line 368
    .end local v0    # "deadline":J
    :cond_3
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    const v7, 0x7f0e07cb

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->showError(I)V
    invoke-static {v6, v7}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$600(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;I)V

    .line 369
    iget-object v6, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 262
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$100(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$000(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setKeepScreenOn(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    # setter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$202(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;I)I

    .line 273
    const-string v0, "ConfirmLockEnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # getter for: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->mOrientation:I
    invoke-static {v2}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$200(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment$1;->this$0:Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;

    # invokes: Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->getDeviceOrientation()I
    invoke-static {v1}, Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;->access$300(Lcom/android/settings/ConfirmLockEnterpriseIdentity$ConfirmLockEnterpriseIdentityFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 281
    return-void
.end method
