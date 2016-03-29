.class Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardCarrierPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$300(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 335
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->access$300(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_carrier_lock_too_many_failed_attempts:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 329
    return-void
.end method
