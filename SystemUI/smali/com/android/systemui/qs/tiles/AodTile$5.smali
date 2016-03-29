.class Lcom/android/systemui/qs/tiles/AodTile$5;
.super Lcom/android/systemui/qs/SystemSetting;
.source "AodTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AodTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AodTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AodTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AodTile$5;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 141
    # getter for: Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/AodTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FINGER_MAGNIFIER changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$5;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    const/4 v2, 0x3

    if-ne p1, v0, :cond_0

    :goto_0
    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->updateExclusiveFeature(IZ)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/qs/tiles/AodTile;->access$500(Lcom/android/systemui/qs/tiles/AodTile;IZ)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile$5;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$5;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->getAodMState()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$200(Lcom/android/systemui/qs/tiles/AodTile;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$700(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V

    .line 144
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
