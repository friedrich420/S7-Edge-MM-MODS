.class Lcom/android/keyguard/securityview/KeyguardFMMView$3;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardFMMView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardFMMView;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v3, 0x1

    .line 192
    const-string v0, "KeyguardFMMView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChecked(matched = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/keyguard/securityview/KeyguardFMMView;->access$300(Lcom/android/keyguard/securityview/KeyguardFMMView;Z)V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardFMMView;->access$402(Lcom/android/keyguard/securityview/KeyguardFMMView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/keyguard/securityview/KeyguardFMMView;->onPasswordChecked(ZIZ)V

    .line 196
    return-void
.end method
