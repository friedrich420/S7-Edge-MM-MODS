.class Lcom/android/systemui/qs/tiles/AodTile$3;
.super Lcom/android/systemui/qs/GlobalSetting;
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
    .line 121
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AodTile$3;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 124
    # getter for: Lcom/android/systemui/qs/tiles/AodTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/AodTile;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOW_POWER_MODE (PSM) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile$3;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$3;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->getAodMState()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$200(Lcom/android/systemui/qs/tiles/AodTile;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$400(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V

    .line 126
    return-void
.end method
