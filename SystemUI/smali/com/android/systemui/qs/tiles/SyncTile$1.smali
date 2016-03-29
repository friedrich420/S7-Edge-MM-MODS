.class Lcom/android/systemui/qs/tiles/SyncTile$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SyncTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 56
    .local v1, "syncAuto":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    # getter for: Lcom/android/systemui/qs/tiles/SyncTile;->mSyncAuto:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$000(Lcom/android/systemui/qs/tiles/SyncTile;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    # setter for: Lcom/android/systemui/qs/tiles/SyncTile;->mSyncAuto:Z
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->access$002(Lcom/android/systemui/qs/tiles/SyncTile;Z)Z

    .line 58
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/SyncTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$100(Lcom/android/systemui/qs/tiles/SyncTile;Ljava/lang/Object;)V

    .line 65
    .end local v1    # "syncAuto":Z
    :cond_0
    :goto_1
    return-void

    .line 58
    .restart local v1    # "syncAuto":Z
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 60
    .end local v1    # "syncAuto":Z
    :cond_2
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    # getter for: Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$200(Lcom/android/systemui/qs/tiles/SyncTile;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    # getter for: Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$200(Lcom/android/systemui/qs/tiles/SyncTile;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    # getter for: Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SyncTile;->access$200(Lcom/android/systemui/qs/tiles/SyncTile;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1
.end method
