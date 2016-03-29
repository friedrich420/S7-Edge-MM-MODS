.class Lcom/android/keyguard/status/SecKeyguardClockView$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x12d0

    const/16 v2, 0x12cf

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SERVICE_STATE"

    if-ne v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/status/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockView;->access$800(Lcom/android/keyguard/status/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
