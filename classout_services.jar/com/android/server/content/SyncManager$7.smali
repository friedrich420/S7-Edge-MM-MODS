.class Lcom/android/server/content/SyncManager$7;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    .prologue
    .line 396
    iput-object p1, p0, this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, -0x2710

    .line 399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 401
    .local v1, "userId":I
    if-ne v1, v3, :cond_f

    .line 410
    :cond_e
    :goto_e
    return-void

    .line 403
    :cond_f
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 404
    iget-object v2, p0, this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;I)V

    goto :goto_e

    .line 405
    :cond_1d
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 406
    iget-object v2, p0, this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->onUserStarting(I)V
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;I)V

    goto :goto_e

    .line 407
    :cond_2b
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 408
    iget-object v2, p0, this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->onUserStopping(I)V
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;I)V

    goto :goto_e
.end method
