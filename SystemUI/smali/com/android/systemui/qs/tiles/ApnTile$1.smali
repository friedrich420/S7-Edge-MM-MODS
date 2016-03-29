.class Lcom/android/systemui/qs/tiles/ApnTile$1;
.super Landroid/database/ContentObserver;
.source "ApnTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ApnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$1;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 92
    # getter for: Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/ApnTile;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APN changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$1;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$100(Lcom/android/systemui/qs/tiles/ApnTile;)V

    .line 94
    return-void
.end method
