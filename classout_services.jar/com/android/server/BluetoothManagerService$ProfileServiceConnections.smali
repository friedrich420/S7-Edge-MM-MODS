.class final Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileServiceConnections"
.end annotation


# instance fields
.field mClassName:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mInvokingProxyCallbacks:Z

.field final mProxies:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothProfileServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V
    .registers 5
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1515
    iput-object p1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mProxies:Landroid/os/RemoteCallbackList;

    .line 1513
    const/4 v0, 0x0

    iput-boolean v0, p0, mInvokingProxyCallbacks:Z

    .line 1516
    iput-object v1, p0, mService:Landroid/os/IBinder;

    .line 1517
    iput-object v1, p0, mClassName:Landroid/content/ComponentName;

    .line 1518
    iput-object p2, p0, mIntent:Landroid/content/Intent;

    .line 1519
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .prologue
    .line 1506
    invoke-direct {p0}, bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1506
    invoke-direct {p0, p1}, removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .prologue
    .line 1506
    invoke-direct {p0}, removeAllProxies()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1506
    invoke-direct {p0, p1}, addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method private addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 6
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    const/16 v3, 0x191

    .line 1534
    iget-object v2, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1535
    iget-object v2, p0, mService:Landroid/os/IBinder;

    if-eqz v2, :cond_1c

    .line 1537
    :try_start_b
    iget-object v2, p0, mClassName:Landroid/content/ComponentName;

    iget-object v3, p0, mService:Landroid/os/IBinder;

    invoke-interface {p1, v2, v3}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 1548
    :cond_12
    :goto_12
    return-void

    .line 1538
    :catch_13
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string v3, "Unable to connect to proxy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 1542
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    iget-object v2, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v3, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1543
    iget-object v2, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1544
    .local v1, "msg":Landroid/os/Message;
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1545
    iget-object v2, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12
.end method

.method private bindService()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1522
    iget-object v2, p0, mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_30

    iget-object v2, p0, mService:Landroid/os/IBinder;

    if-nez v2, :cond_30

    iget-object v2, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, p0, mIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p0, v1, v4}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1524
    iget-object v1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1525
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1526
    iget-object v1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1527
    const/4 v1, 0x1

    .line 1530
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2f
    return v1

    .line 1529
    :cond_30
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private removeAllProxies()V
    .registers 2

    .prologue
    .line 1565
    iget-object v0, p0, mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1566
    iget-object v0, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1567
    return-void
.end method

.method private removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 5
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1551
    if-eqz p1, :cond_19

    .line 1552
    iget-object v1, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1554
    :try_start_a
    iget-object v1, p0, mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 1562
    :cond_f
    :goto_f
    return-void

    .line 1555
    :catch_10
    move-exception v0

    .line 1556
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to disconnect proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const-string v1, "BluetoothManagerService"

    const-string v2, "Trying to remove a null proxy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 1636
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1637
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile service for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mClassName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_26
    iget-object v1, p0, mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1642
    iget-object v1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1643
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1644
    iget-object v1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1645
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 1572
    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x191

    invoke-virtual {v3, v4, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1573
    iput-object p2, p0, mService:Landroid/os/IBinder;

    .line 1574
    iput-object p1, p0, mClassName:Landroid/content/ComponentName;

    .line 1576
    :try_start_10
    iget-object v3, p0, mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_22

    .line 1581
    :goto_16
    iget-boolean v3, p0, mInvokingProxyCallbacks:Z

    if-eqz v3, :cond_2b

    .line 1582
    const-string v3, "BluetoothManagerService"

    const-string v4, "Proxy callbacks already in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_21
    return-void

    .line 1577
    :catch_22
    move-exception v0

    .line 1578
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to linkToDeath"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1585
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const/4 v3, 0x1

    iput-boolean v3, p0, mInvokingProxyCallbacks:Z

    .line 1587
    iget-object v3, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1589
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    if-ge v1, v2, :cond_57

    .line 1591
    :try_start_37
    iget-object v3, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_42} :catch_45
    .catchall {:try_start_37 .. :try_end_42} :catchall_4e

    .line 1589
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1592
    :catch_45
    move-exception v0

    .line 1593
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to connect to proxy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_42

    .line 1597
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_4e
    move-exception v3

    iget-object v4, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1598
    iput-boolean v5, p0, mInvokingProxyCallbacks:Z

    throw v3

    .line 1597
    :cond_57
    iget-object v3, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1598
    iput-boolean v5, p0, mInvokingProxyCallbacks:Z

    goto :goto_21
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1604
    iget-object v3, p0, mService:Landroid/os/IBinder;

    if-nez v3, :cond_7

    .line 1632
    :goto_6
    return-void

    .line 1606
    :cond_7
    :try_start_7
    iget-object v3, p0, mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_d} :catch_1d

    .line 1610
    :goto_d
    iput-object v7, p0, mService:Landroid/os/IBinder;

    .line 1611
    iput-object v7, p0, mClassName:Landroid/content/ComponentName;

    .line 1613
    iget-boolean v3, p0, mInvokingProxyCallbacks:Z

    if-eqz v3, :cond_37

    .line 1614
    const-string v3, "BluetoothManagerService"

    const-string v4, "Proxy callbacks already in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1607
    :catch_1d
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No death recipient registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1617
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :cond_37
    const/4 v3, 0x1

    iput-boolean v3, p0, mInvokingProxyCallbacks:Z

    .line 1619
    iget-object v3, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1621
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v2, :cond_63

    .line 1623
    :try_start_43
    iget-object v3, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_51
    .catchall {:try_start_43 .. :try_end_4e} :catchall_5a

    .line 1621
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1624
    :catch_51
    move-exception v0

    .line 1625
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_52
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to disconnect from proxy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5a

    goto :goto_4e

    .line 1629
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v3

    iget-object v4, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1630
    iput-boolean v6, p0, mInvokingProxyCallbacks:Z

    throw v3

    .line 1629
    :cond_63
    iget-object v3, p0, mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1630
    iput-boolean v6, p0, mInvokingProxyCallbacks:Z

    goto :goto_6
.end method
