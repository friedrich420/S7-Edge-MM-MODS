.class Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;
.super Landroid/database/ContentObserver;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 280
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$600(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$102(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    .line 286
    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiCallingObserver() onChange - mWfcEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$700(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    .line 288
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
