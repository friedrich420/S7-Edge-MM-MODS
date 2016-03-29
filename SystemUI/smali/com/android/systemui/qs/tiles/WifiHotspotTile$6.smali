.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;
.super Ljava/lang/Object;
.source "WifiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Z)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->handleRefreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$500(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;->val$state:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setMode(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$600(Lcom/android/systemui/qs/tiles/WifiHotspotTile;I)V

    .line 402
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
