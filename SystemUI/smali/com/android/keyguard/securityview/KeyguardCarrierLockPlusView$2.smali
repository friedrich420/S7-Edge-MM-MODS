.class Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardCarrierLockPlusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;
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
    .line 133
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$300(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$300(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$402(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    const-string v0, "KeyguardCarrierLockPlusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMccInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$400(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;->access$300(Lcom/android/keyguard/securityview/KeyguardCarrierLockPlusView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
