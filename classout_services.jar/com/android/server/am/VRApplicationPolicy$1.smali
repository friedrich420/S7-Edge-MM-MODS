.class Lcom/android/server/am/VRApplicationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/VRApplicationPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VRApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/VRApplicationPolicy;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, this$0:Lcom/android/server/am/VRApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 94
    iget-object v2, p0, this$0:Lcom/android/server/am/VRApplicationPolicy;

    # setter for: Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z
    invoke-static {v2, v4}, Lcom/android/server/am/VRApplicationPolicy;->access$002(Lcom/android/server/am/VRApplicationPolicy;Z)Z

    .line 100
    :cond_12
    :goto_12
    return-void

    .line 95
    :cond_13
    const-string v2, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 96
    iget-object v2, p0, this$0:Lcom/android/server/am/VRApplicationPolicy;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z
    invoke-static {v2, v3}, Lcom/android/server/am/VRApplicationPolicy;->access$002(Lcom/android/server/am/VRApplicationPolicy;Z)Z

    .line 97
    iget-object v2, p0, this$0:Lcom/android/server/am/VRApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/am/VRApplicationPolicy;->mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

    invoke-virtual {v2, v4}, Lcom/android/server/am/VRApplicationPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 98
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, this$0:Lcom/android/server/am/VRApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/am/VRApplicationPolicy;->mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/VRApplicationPolicy$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12
.end method
