.class Lcom/android/systemui/qs/tiles/LocationTile$2;
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
    .line 107
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->getLocationMode()I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)I

    move-result v3

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->isGpsActivated(I)Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->access$400(Lcom/android/systemui/qs/tiles/LocationTile;I)Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$202(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z

    .line 112
    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/LocationTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOCATION_PROVIDERS_ALLOWED  changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/LocationTile;->access$200(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$500(Lcom/android/systemui/qs/tiles/LocationTile;)V

    .line 116
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseLocationForVZW:Z

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nim.vznavigator.app2app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "mVzwGpsIntent":Landroid/content/Intent;
    const-string v2, "context"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mCurrGpsActivated:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$200(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vznavigator:app2app?version=2.0&credential=0211&commands=A"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$600(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    .end local v0    # "mVzwGpsIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 118
    .restart local v0    # "mVzwGpsIntent":Landroid/content/Intent;
    :cond_1
    const-string v1, "vznavigator:app2app?version=2.0&credential=0211&commands=D"

    goto :goto_0
.end method
