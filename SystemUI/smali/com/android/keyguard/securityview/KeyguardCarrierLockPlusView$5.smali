.class Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$5;
.super Ljava/lang/Object;
.source "KeyguardCarrierLockPlusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$100(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->isCarrierPasswordSaved()Z
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$800(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$100(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 234
    :cond_0
    return-void
.end method
