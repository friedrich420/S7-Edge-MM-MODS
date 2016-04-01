.class Lcom/android/server/display/IpRemoteDisplayController$11;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$connectedMode:I

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldDisplayHeight:I

.field final synthetic val$oldDisplayWidth:I

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$requestPendingSetup:Z

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIIZIII)V
    .registers 13

    .prologue
    .line 684
    iput-object p1, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, val$surface:Landroid/view/Surface;

    iput-object p4, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, val$oldDisplayWidth:I

    iput p7, p0, val$oldDisplayHeight:I

    iput p8, p0, val$connectedMode:I

    iput-boolean p9, p0, val$requestPendingSetup:Z

    iput p10, p0, val$width:I

    iput p11, p0, val$height:I

    iput p12, p0, val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    .line 687
    iget-object v0, p0, val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_d

    iget-object v0, p0, val$surface:Landroid/view/Surface;

    iget-object v1, p0, val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_23

    :cond_d
    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_9e

    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_9e

    iget v0, p0, val$oldDisplayWidth:I

    if-ne v0, v3, :cond_9e

    iget v0, p0, val$oldDisplayHeight:I

    if-ne v0, v3, :cond_9e

    .line 689
    :cond_23
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnected()V

    .line 699
    :cond_2c
    :goto_2c
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mDisconnectByUser:Z
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 702
    iget-object v0, p0, val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_9d

    .line 703
    iget-object v0, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 704
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iget v2, p0, val$connectedMode:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V

    .line 707
    :cond_4d
    iget-object v0, p0, val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_57

    iget-object v0, p0, val$surface:Landroid/view/Surface;

    iget-object v1, p0, val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_6b

    :cond_57
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1600(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v0

    if-ne v0, v4, :cond_9d

    iget-boolean v0, p0, val$requestPendingSetup:Z

    if-eqz v0, :cond_9d

    iget v0, p0, val$width:I

    if-ne v0, v3, :cond_9d

    iget v0, p0, val$height:I

    if-ne v0, v3, :cond_9d

    .line 710
    :cond_6b
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, "platform":Ljava/lang/String;
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use surface on WFD !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, val$surface:Landroid/view/Surface;

    iget v3, p0, val$width:I

    iget v4, p0, val$height:I

    iget v5, p0, val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 715
    .end local v6    # "platform":Ljava/lang/String;
    :cond_9d
    return-void

    .line 690
    :cond_9e
    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2c

    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 691
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1600(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v0

    if-ne v0, v4, :cond_ce

    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mDisconnectByUser:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 692
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WFD_BROKER_CONNECTION_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 695
    :cond_ce
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnectionFailed()V

    goto/16 :goto_2c
.end method
