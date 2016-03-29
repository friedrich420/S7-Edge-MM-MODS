.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$4;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 410
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    .line 414
    return-void
.end method
