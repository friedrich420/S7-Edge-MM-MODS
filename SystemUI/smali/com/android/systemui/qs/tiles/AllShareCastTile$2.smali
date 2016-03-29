.class Lcom/android/systemui/qs/tiles/AllShareCastTile$2;
.super Landroid/hardware/display/ExtendedDisplayListener;
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
.method constructor <init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    invoke-direct {p0}, Landroid/hardware/display/ExtendedDisplayListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDLNAConnectionStatusChanged(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 79
    const-string v0, "AllShareCastTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDLNAConnectionStatusChanged connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;->this$0:Lcom/android/systemui/qs/tiles/AllShareCastTile;

    # invokes: Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->access$100(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V

    .line 81
    return-void
.end method
