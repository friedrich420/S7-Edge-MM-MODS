.class Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$4;
.super Ljava/lang/Object;
.source "KeyguardBackupPasswordView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 421
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 423
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 426
    const-string v2, "previousStage"

    const-string v3, "lock_screen_fingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v2, "disable_systemkey"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$400(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$500(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v5, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 436
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$600(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 437
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "KeyguardBackupPasswordView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
