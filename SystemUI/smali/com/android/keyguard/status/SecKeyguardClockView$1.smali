.class Lcom/android/keyguard/status/SecKeyguardClockView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 87
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->handleUpdateClock()V
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$000(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->handleDelayedOnConfigurationChanged()V
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$100(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->handleSetSelectedTrue()V
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$200(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->handleUpdateOwnerInfo()V
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$300(Lcom/android/keyguard/status/SecKeyguardClockView;)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$400(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 102
    .local v1, "isNetworkRoaming":Z
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mIsNetworkRoaming:Z
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$500(Lcom/android/keyguard/status/SecKeyguardClockView;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # setter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mIsNetworkRoaming:Z
    invoke-static {v2, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$502(Lcom/android/keyguard/status/SecKeyguardClockView;Z)Z

    .line 104
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    goto :goto_0

    .line 108
    .end local v1    # "isNetworkRoaming":Z
    :pswitch_5
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockView;->isDualClockSet()Z
    invoke-static {v2}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$600(Lcom/android/keyguard/status/SecKeyguardClockView;)Z

    move-result v0

    .line 109
    .local v0, "isDual":Z
    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$700()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x12cb
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
