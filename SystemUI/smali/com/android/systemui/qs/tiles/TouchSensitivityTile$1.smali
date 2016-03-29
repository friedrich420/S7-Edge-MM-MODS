.class Lcom/android/systemui/qs/tiles/TouchSensitivityTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "TouchSensitivityTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/TouchSensitivityTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$1;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 42
    const-string v1, "TouchSensitivityTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleValueChanged() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$1;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$1;->this$0:Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    # getter for: Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->access$000(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->access$100(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;Ljava/lang/Object;)V

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
