.class Lcom/android/server/net/NetworkStatsService$9;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .prologue
    .line 1553
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1556
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_42

    move v1, v2

    .line 1576
    :cond_8
    :goto_8
    return v1

    .line 1558
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1559
    .local v0, "flags":I
    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    invoke-static {v3, v0}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1561
    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mIsDuringVideoCall:Z
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mIsVideoCall:Z
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1562
    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$2000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$2000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 1568
    .end local v0    # "flags":I
    :pswitch_36
    iget-object v2, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$2100(Lcom/android/server/net/NetworkStatsService;)V

    goto :goto_8

    .line 1572
    :pswitch_3c
    iget-object v2, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1200(Lcom/android/server/net/NetworkStatsService;)V

    goto :goto_8

    .line 1556
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_9
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method
