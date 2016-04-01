.class Lcom/sec/epdg/EpdgService$1;
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
    .line 1232
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
    .line 1240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1235
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    check-cast p1, Landroid/content/Intent;

    .end local p1    # "obj":Ljava/lang/Object;
    # invokes: Lcom/sec/epdg/EpdgService;->handleSimStateChange(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/sec/epdg/EpdgService;->access$900(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V

    .line 1236
    return-void
.end method
