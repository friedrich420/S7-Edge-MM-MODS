.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$14;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showNoSIMDialog()V
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
    .line 614
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$14;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$14;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2900(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    .line 618
    return-void
.end method
