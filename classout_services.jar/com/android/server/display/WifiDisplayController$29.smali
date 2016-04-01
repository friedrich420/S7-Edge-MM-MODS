.class Lcom/android/server/display/WifiDisplayController$29;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

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
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIZIII)V
    .registers 12

    .prologue
    .line 2328
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, val$surface:Landroid/view/Surface;

    iput-object p4, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, val$oldDisplayWidth:I

    iput p7, p0, val$oldDisplayHeight:I

    iput-boolean p8, p0, val$requestPendingSetup:Z

    iput p9, p0, val$width:I

    iput p10, p0, val$height:I

    iput p11, p0, val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2331
    iget-object v0, p0, val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    iget-object v0, p0, val$surface:Landroid/view/Surface;

    iget-object v1, p0, val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_22

    :cond_c
    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_9b

    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_9b

    iget v0, p0, val$oldDisplayWidth:I

    if-ne v0, v3, :cond_9b

    iget v0, p0, val$oldDisplayHeight:I

    if-ne v0, v3, :cond_9b

    .line 2333
    :cond_22
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    .line 2353
    :cond_2b
    :goto_2b
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z
    invoke-static {v0, v4}, Lcom/android/server/display/WifiDisplayController;->access$5302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2356
    iget-object v0, p0, val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_9a

    .line 2357
    iget-object v0, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 2359
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V

    .line 2367
    :cond_4f
    :goto_4f
    iget-object v0, p0, val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_59

    iget-object v0, p0, val$surface:Landroid/view/Surface;

    iget-object v1, p0, val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_6f

    :cond_59
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_82

    iget-boolean v0, p0, val$requestPendingSetup:Z

    if-eqz v0, :cond_82

    iget v0, p0, val$width:I

    if-ne v0, v3, :cond_82

    iget v0, p0, val$height:I

    if-ne v0, v3, :cond_82

    .line 2370
    :cond_6f
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, val$surface:Landroid/view/Surface;

    iget v3, p0, val$width:I

    iget v4, p0, val$height:I

    iget v5, p0, val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2373
    :cond_82
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2374
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    const v1, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2378
    :cond_9a
    return-void

    .line 2334
    :cond_9b
    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2b

    iget-object v0, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2337
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_d3

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_d3

    .line 2339
    const-string v0, "WifiDisplayController"

    const-string v1, "connected by change player or nfc, disable wifi_display_on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2344
    :cond_d3
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 2345
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WFD_BROKER_CONNECTION_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2349
    :cond_ed
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    goto/16 :goto_2b

    .line 2362
    :cond_f8
    iget-object v0, p0, val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2365
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_4f
.end method
