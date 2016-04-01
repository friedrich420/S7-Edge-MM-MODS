.class Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;
.super Ljava/lang/Object;
.source "TrafficView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;


# direct methods
.method constructor <init>(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    return-void
.end method

.method static access$0(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;)Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;->this$0:Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mTrafficHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v2

    return-void
.end method
