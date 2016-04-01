.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
.super Landroid/os/Handler;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1647
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1648
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1649
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1653
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 1681
    :goto_5
    return-void

    .line 1655
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendStatusChangeBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3600(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_5

    .line 1661
    :pswitch_c
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleUpdateNotification()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3700(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_5

    .line 1666
    :pswitch_12
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendStartFABBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3800(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_5

    .line 1671
    :pswitch_18
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendStopFABBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3900(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_5

    .line 1676
    :pswitch_1e
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendDLNADisconnectReqBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$4000(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_5

    .line 1653
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method
