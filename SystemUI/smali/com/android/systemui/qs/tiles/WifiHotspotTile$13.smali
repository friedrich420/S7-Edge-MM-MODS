.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$13;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 606
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$13;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$13;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2800(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$13;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 611
    return-void
.end method
