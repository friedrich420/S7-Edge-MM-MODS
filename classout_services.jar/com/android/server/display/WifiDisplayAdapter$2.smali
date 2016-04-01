.class Lcom/android/server/display/WifiDisplayAdapter$2;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/IpRemoteDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    .prologue
    .line 1417
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 14
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v7, 0x2

    .line 1471
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onDisplayConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string/jumbo v0, "wlan.wfd.status"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 1475
    :try_start_2e
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1476
    if-eqz p2, :cond_a2

    .line 1477
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$2600(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1482
    :goto_44
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    .line 1484
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_66

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 1487
    :cond_66
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1488
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x6

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1489
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1491
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1492
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a0

    .line 1494
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->syncRemoteDisplayStatus(IZ)V

    .line 1495
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1496
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStartFloatingIconBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1499
    :cond_a0
    monitor-exit v6

    .line 1500
    return-void

    .line 1479
    :cond_a2
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->rememberedDisplayLocked(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2700(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    goto :goto_44

    .line 1499
    :catchall_a8
    move-exception v0

    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_2e .. :try_end_aa} :catchall_a8

    throw v0
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V
    .registers 7
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "connectingMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 1447
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "IpRemoteDisplayListener onDisplayConnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1451
    :try_start_f
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v2, :cond_2b

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1454
    :cond_2b
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1455
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1457
    const-string v0, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting state = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->access$702(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1460
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_62

    .line 1461
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1464
    :cond_62
    monitor-exit v1

    .line 1465
    return-void

    .line 1464
    :catchall_64
    move-exception v0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_f .. :try_end_66} :catchall_64

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .registers 4

    .prologue
    .line 1431
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onDisplayConnectionFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1434
    :try_start_25
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 1436
    :cond_35
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1438
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1439
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1441
    :cond_46
    monitor-exit v1

    .line 1442
    return-void

    .line 1441
    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public onDisplayDisconnected()V
    .registers 5

    .prologue
    .line 1505
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpRemoteDisplayListener onDisplayDisconnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const-string/jumbo v1, "wlan.wfd.status"

    const-string/jumbo v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1510
    :try_start_2e
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1511
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    .line 1513
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 1515
    :cond_49
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    .line 1516
    .local v0, "prevConnectedState":I
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1517
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x7

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1518
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2302(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1519
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2102(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1520
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1522
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_90

    .line 1523
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1524
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 1525
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleDLNADisconnectReqBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1526
    :cond_8b
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStopFloatingIconBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1529
    :cond_90
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, -0x1

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$702(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1530
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1533
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a3

    .line 1534
    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestDisableWiFiP2P()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3400(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1536
    .end local v0    # "prevConnectedState":I
    :cond_a3
    monitor-exit v2

    .line 1537
    return-void

    .line 1536
    :catchall_a5
    move-exception v1

    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_2e .. :try_end_a7} :catchall_a5

    throw v1
.end method

.method public onDisplayDisconnecting()V
    .registers 5

    .prologue
    .line 1541
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1542
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1545
    :cond_17
    const-string v0, "WifiDisplayAdapter"

    const-string v2, "IpRemoteDisplayListener onDisplayDisconnecting"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x3

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1549
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v2, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/WifiDisplayController;->syncRemoteDisplayStatus(IZ)V

    .line 1551
    :cond_34
    monitor-exit v1

    .line 1552
    return-void

    .line 1551
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .registers 4
    .param p1, "featureState"    # I

    .prologue
    .line 1420
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1421
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_19

    .line 1422
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1702(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1423
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1425
    :cond_19
    monitor-exit v1

    .line 1426
    return-void

    .line 1425
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onQosLevelChanged(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 1557
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onQosLevelChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mQoSLevel:I
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3502(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1560
    return-void
.end method
