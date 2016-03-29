.class Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$5;
.super Ljava/lang/Object;
.source "KeyguardBackupPasswordView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->verifyPasswordAndUnlock()V
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
    .line 471
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v2, 0x1

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$702(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->onPasswordChecked(ZIZ)V

    .line 477
    return-void
.end method
