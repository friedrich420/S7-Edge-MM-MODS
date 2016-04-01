.class Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;
.super Landroid/os/Handler;
.source "TrafficView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;


# direct methods
.method constructor <init>(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    return-void
.end method

.method static access$0(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;)Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v7, v0

    iget-object v7, v7, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    iget-wide v7, v7, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->lastUpdateTime:J

    sub-long/2addr v5, v7

    move-wide v2, v5

    .line 171
    move-wide v5, v2

    const/4 v7, 0x0

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 188
    :goto_0
    return-void

    .line 176
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    iget-wide v8, v8, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->totalTxBytes:J

    sub-long/2addr v6, v8

    const/16 v8, 0x3e8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-wide v8, v2

    div-long/2addr v6, v8

    iput-wide v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    .line 177
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    iget-wide v8, v8, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->totalRxBytes:J

    sub-long/2addr v6, v8

    const/16 v8, 0x3e8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-wide v8, v2

    div-long/2addr v6, v8

    iput-wide v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    .line 178
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->totalTxBytes:J

    .line 179
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->totalRxBytes:J

    .line 180
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->lastUpdateTime:J

    .line 182
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v6, v0

    iget-object v6, v6, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-static {v6}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->access$1000008(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    iget v7, v7, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefFontSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->setTextSize(IF)V

    .line 184
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-virtual {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->refreshColor()V

    .line 186
    move-object v5, v0

    iget-object v5, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    invoke-virtual {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->update()V

    .line 188
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
