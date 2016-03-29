.class Lcom/android/keyguard/securityview/KeyguardBackupPINView$1;
.super Ljava/lang/Object;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardBackupPINView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardBackupPINView;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPINView;

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

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPINView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardBackupPINView;->setPasswordEntryInputEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->access$000(Lcom/android/keyguard/securityview/KeyguardBackupPINView;Z)V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPINView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->access$102(Lcom/android/keyguard/securityview/KeyguardBackupPINView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPINView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardBackupPINView;->onPasswordChecked(ZIZ)V
    invoke-static {v0, p1, p2, v2}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->access$200(Lcom/android/keyguard/securityview/KeyguardBackupPINView;ZIZ)V

    .line 212
    return-void
.end method
