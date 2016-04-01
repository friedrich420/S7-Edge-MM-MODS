.class Lcom/sec/epdg/EpdgService$2;
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
    .line 1244
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
    .line 1253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1247
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "onReceive action: ACTION_IMS_ON_SIMLOADED"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    const/16 v1, 0x3fd

    # invokes: Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$1000(Lcom/sec/epdg/EpdgService;I)V

    .line 1249
    return-void
.end method
