.class Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$3;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->onPasswordChecked(ZIZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$100(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;ZIZ)V

    .line 227
    return-void
.end method
