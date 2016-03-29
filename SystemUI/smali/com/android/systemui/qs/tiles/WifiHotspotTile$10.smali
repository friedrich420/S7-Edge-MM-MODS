.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showBatteryUsageWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Z)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 436
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 437
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->val$state:Z

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showWarningDialog(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Z)V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V

    .line 441
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;->val$state:Z

    if-eqz v3, :cond_1

    :goto_1
    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setMode(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$600(Lcom/android/systemui/qs/tiles/WifiHotspotTile;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
