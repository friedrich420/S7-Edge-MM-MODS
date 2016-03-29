.class Lcom/android/systemui/qs/tiles/WifiCallingTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 107
    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleValueChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 109
    .local v0, "wfcEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # setter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$102(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    .line 111
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$300(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void

    .line 108
    .end local v0    # "wfcEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    .restart local v0    # "wfcEnabled":Z
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method
