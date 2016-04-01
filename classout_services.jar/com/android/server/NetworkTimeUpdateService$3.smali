.class Lcom/android/server/NetworkTimeUpdateService$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    .prologue
    .line 305
    iput-object p1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 312
    iget-object v1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 314
    :cond_1a
    return-void
.end method
