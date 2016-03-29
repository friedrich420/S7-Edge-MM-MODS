.class Lcom/android/systemui/qs/tiles/DefaultDataTile$3;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$302(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 155
    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBILE_DATA : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsAirPlaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataPhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 157
    return-void
.end method
