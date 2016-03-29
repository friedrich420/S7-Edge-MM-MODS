.class Lcom/android/systemui/qs/tiles/WifiCallingTile$3;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 267
    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTMStateListener onCallStateChanged(): state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez p1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$400(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    .line 272
    :goto_1
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$500(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    goto :goto_1
.end method
