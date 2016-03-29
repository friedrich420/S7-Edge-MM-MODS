.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$11;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$11;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$11;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1302(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$11;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1400(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    .line 463
    return-void
.end method
