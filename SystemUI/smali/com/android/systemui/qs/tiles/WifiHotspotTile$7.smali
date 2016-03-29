.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$7;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showWarningDialog(Z)V
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
    .line 417
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$7;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 420
    const-string v0, "HotspotTile"

    const-string v1, "showWarningDialog dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$7;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$700(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    .line 422
    return-void
.end method
