.class Lcom/android/server/display/WifiDisplayAdapter$21;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$deviceType:I

.field final synthetic val$ipAddr:Ljava/lang/String;

.field final synthetic val$isPendingRequest:Z

.field final synthetic val$options:Ljava/lang/String;

.field final synthetic val$port:Ljava/lang/String;

.field final synthetic val$remoteP2pMacAddr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 1752
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, val$deviceType:I

    iput-object p3, p0, val$ipAddr:Ljava/lang/String;

    iput-object p4, p0, val$port:Ljava/lang/String;

    iput-object p5, p0, val$options:Ljava/lang/String;

    iput-object p6, p0, val$deviceName:Ljava/lang/String;

    iput-object p7, p0, val$remoteP2pMacAddr:Ljava/lang/String;

    iput-boolean p8, p0, val$isPendingRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1755
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1758
    iget v0, p0, val$deviceType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1f

    .line 1759
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestEnableLocked CONN_STATE_SCREEN_SHARING_AP call requestStopScan."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    .line 1762
    :cond_1f
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v0

    iget-object v1, p0, val$ipAddr:Ljava/lang/String;

    iget-object v2, p0, val$port:Ljava/lang/String;

    iget v3, p0, val$deviceType:I

    iget-object v4, p0, val$options:Ljava/lang/String;

    iget-object v5, p0, val$deviceName:Ljava/lang/String;

    iget-object v6, p0, val$remoteP2pMacAddr:Ljava/lang/String;

    iget-boolean v7, p0, val$isPendingRequest:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/IpRemoteDisplayController;->requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1764
    :cond_36
    return-void
.end method
