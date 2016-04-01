.class Lcom/sec/epdg/EpdgService$8;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .registers 2

    .prologue
    .line 1377
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1380
    const/4 v0, 0x0

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 4
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 1385
    const-string v0, "[EPDGService]"

    const-string v1, "Internet Keep alive timer expired send keep alive packet"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onInternetKeepAliveTimerExpiry()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1600(Lcom/sec/epdg/EpdgService;)V

    .line 1388
    return-void
.end method
