.class Lcom/android/systemui/qs/tiles/AllShareCastTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "AllShareCastTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AllShareCastTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 66
    const-string v0, "AllShareCastTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleValueChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    # invokes: Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V

    .line 68
    return-void
.end method
