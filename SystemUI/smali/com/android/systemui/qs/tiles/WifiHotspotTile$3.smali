.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$3;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 336
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 337
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 338
    return-void
.end method
