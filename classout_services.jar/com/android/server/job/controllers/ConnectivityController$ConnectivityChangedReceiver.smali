.class Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 169
    const-string/jumbo v3, "networkType"

    const/4 v6, -0x1

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, "networkType":I
    iget-object v6, p0, this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const-string/jumbo v3, "noConnectivity"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_45

    move v3, v4

    :goto_22
    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v6, v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$002(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    .line 174
    iget-object v3, p0, this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;
    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;)Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 175
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$000(Lcom/android/server/job/controllers/ConnectivityController;)Z

    move-result v3

    if-eqz v3, :cond_47

    :goto_37
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 176
    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 177
    iget-object v3, p0, this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;
    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;)Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "networkType":I
    :cond_44
    return-void

    .restart local v2    # "networkType":I
    :cond_45
    move v3, v5

    .line 172
    goto :goto_22

    .restart local v1    # "msg":Landroid/os/Message;
    :cond_47
    move v4, v5

    .line 175
    goto :goto_37
.end method
