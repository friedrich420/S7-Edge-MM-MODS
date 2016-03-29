.class Lcom/android/systemui/qs/tiles/LocationTile$3;
.super Lcom/android/systemui/qs/SecureSetting;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->getLocationMode()I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)I

    move-result v2

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->isGpsActivated(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$400(Lcom/android/systemui/qs/tiles/LocationTile;I)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$202(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z

    .line 130
    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/LocationTile;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATION_MODE changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$200(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)V

    .line 132
    return-void
.end method
