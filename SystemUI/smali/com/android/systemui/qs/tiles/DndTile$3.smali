.class Lcom/android/systemui/qs/tiles/DndTile$3;
.super Landroid/content/BroadcastReceiver;
.source "DndTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    const-string v1, "visible"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 213
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$300(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 214
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # invokes: Lcom/android/systemui/qs/tiles/DndTile;->refreshState()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)V

    .line 215
    return-void
.end method
