.class Lcom/android/keyguard/status/SecKeyguardStatusView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardStatusView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    .line 146
    const-string v0, "SecKeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishedGoingToSleep() why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->access$300(Lcom/android/keyguard/status/SecKeyguardStatusView;)Lcom/android/keyguard/status/SecKeyguardClockView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardWeatherView:Lcom/android/keyguard/status/SecKeyguardWeatherView;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->access$400(Lcom/android/keyguard/status/SecKeyguardStatusView;)Lcom/android/keyguard/status/SecKeyguardWeatherView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardWeatherView:Lcom/android/keyguard/status/SecKeyguardWeatherView;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->access$400(Lcom/android/keyguard/status/SecKeyguardStatusView;)Lcom/android/keyguard/status/SecKeyguardWeatherView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardStatusView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->access$000(Lcom/android/keyguard/status/SecKeyguardStatusView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardStatusView;->mIsDcmClock:Z
    invoke-static {v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->access$100(Lcom/android/keyguard/status/SecKeyguardStatusView;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardStatusView;->updateStatusView()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->access$200(Lcom/android/keyguard/status/SecKeyguardStatusView;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 141
    const-string v0, "SecKeyguardStatusView"

    const-string v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;->this$0:Lcom/android/keyguard/status/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardStatusView;->updateStatusView()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->access$200(Lcom/android/keyguard/status/SecKeyguardStatusView;)V

    .line 155
    return-void
.end method
