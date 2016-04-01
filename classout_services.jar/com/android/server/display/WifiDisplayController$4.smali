.class Lcom/android/server/display/WifiDisplayController$4;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .prologue
    .line 1071
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 1088
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set WFD info with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1091
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 1075
    const-string v0, "WifiDisplayController"

    const-string v1, "Successfully set WFD info."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1078
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1079
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1080
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)V

    .line 1081
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateScanState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$900(Lcom/android/server/display/WifiDisplayController;)V

    .line 1083
    :cond_25
    return-void
.end method
