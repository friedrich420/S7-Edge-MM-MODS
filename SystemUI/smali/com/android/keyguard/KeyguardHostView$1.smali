.class Lcom/android/keyguard/KeyguardHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustGrantedWithFlags(II)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    if-eq p2, v4, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHostView;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->isVisibleToUser()Z
    invoke-static {v4}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    .line 79
    .local v0, "bouncerVisible":Z
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_5

    move v2, v1

    .line 81
    .local v2, "initiatedByUser":Z
    :goto_1
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_6

    .line 84
    .local v1, "dismissKeyguard":Z
    :goto_2
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 85
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    .line 86
    :cond_3
    if-nez v0, :cond_4

    .line 90
    const-string v4, "KeyguardViewBase"

    const-string v5, "TrustAgent dismissed Keyguard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardHostView;->dismiss(Z)Z

    goto :goto_0

    .end local v1    # "dismissKeyguard":Z
    .end local v2    # "initiatedByUser":Z
    :cond_5
    move v2, v3

    .line 79
    goto :goto_1

    .restart local v2    # "initiatedByUser":Z
    :cond_6
    move v1, v3

    .line 81
    goto :goto_2

    .line 94
    .restart local v1    # "dismissKeyguard":Z
    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 72
    return-void
.end method
