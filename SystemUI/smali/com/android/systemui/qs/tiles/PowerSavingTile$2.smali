.class Lcom/android/systemui/qs/tiles/PowerSavingTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/PowerSavingTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 82
    # getter for: Lcom/android/systemui/qs/tiles/PowerSavingTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "npsm handleValueChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/PowerSavingTile;->mNPowerSavingEnabled:Z
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$302(Lcom/android/systemui/qs/tiles/PowerSavingTile;Z)Z

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    # getter for: Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowerSavingEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$400(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/Object;)V

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
