.class Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$4;->onEnrollmentProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$4;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 325
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "isShopDemo is true, showLDUDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showLDUDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 351
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FingerprintSettings_register"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "applicationFingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startFingerprintLockSettings()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 337
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v0, "result_intent":Landroid/content/Intent;
    const-string v1, "fingerIndex"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v1, "isSharedDevice"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 342
    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "lock_screen_pin_pattern_password"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e1498

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 348
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1802(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0
.end method
