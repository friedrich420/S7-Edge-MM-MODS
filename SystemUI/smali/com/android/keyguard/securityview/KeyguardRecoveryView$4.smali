.class Lcom/android/keyguard/securityview/KeyguardRecoveryView$4;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardRecoveryView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

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

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->access$402(Lcom/android/keyguard/securityview/KeyguardRecoveryView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$4;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->onPasswordChecked(ZIZ)V

    .line 390
    return-void
.end method
