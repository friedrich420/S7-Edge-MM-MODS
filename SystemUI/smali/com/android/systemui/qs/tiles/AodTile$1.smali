.class Lcom/android/systemui/qs/tiles/AodTile$1;
.super Landroid/content/BroadcastReceiver;
.source "AodTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AodTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AodTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AodTile;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AodTile$1;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/AodTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$1;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # getter for: Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$100(Lcom/android/systemui/qs/tiles/AodTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$1;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # getter for: Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$100(Lcom/android/systemui/qs/tiles/AodTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$1;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # getter for: Lcom/android/systemui/qs/tiles/AodTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$100(Lcom/android/systemui/qs/tiles/AodTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 107
    :cond_0
    return-void
.end method
