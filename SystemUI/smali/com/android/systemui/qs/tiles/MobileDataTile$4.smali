.class Lcom/android/systemui/qs/tiles/MobileDataTile$4;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleValueChanged mRoamingDataSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    if-ne p1, v0, :cond_1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$602(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 198
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
