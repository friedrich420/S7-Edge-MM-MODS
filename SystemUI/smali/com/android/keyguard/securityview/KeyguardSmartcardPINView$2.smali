.class Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$2;
.super Ljava/lang/Object;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 314
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$902(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->onPasswordChecked(ZIZ)V

    .line 317
    return-void
.end method
