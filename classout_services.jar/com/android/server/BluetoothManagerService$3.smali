.class Lcom/android/server/BluetoothManagerService$3;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 791
    iput-object p1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .param p1, "selfChange"    # Z

    .prologue
    .line 794
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onChange mBleAppCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / mSamsungBleAppCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v6}, Lcom/android/server/BluetoothManagerService;->isBleScanAlwaysAvailable()Z

    move-result v6

    if-nez v6, :cond_8c

    .line 796
    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v6

    if-nez v6, :cond_97

    .line 797
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_46

    const-string v6, "BluetoothManagerService"

    const-string v7, "clear all BleApps"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_46
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)V

    .line 799
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->clearBleApps()V
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)V

    .line 801
    :try_start_50
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_61

    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_61} :catch_8d

    .line 827
    :cond_61
    :goto_61
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onChange changed mBleAppcount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / mSamsungBleAppCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_8c
    return-void

    .line 802
    :catch_8d
    move-exception v1

    .line 803
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "error when disabling bluetooth"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 805
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_97
    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v6

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v7

    if-le v6, v7, :cond_61

    .line 806
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_ae

    const-string v6, "BluetoothManagerService"

    const-string v7, "Clear Google BleAppCount, Copy SamsungBleApps"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_ae
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 808
    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v6

    # setter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$202(I)I

    .line 809
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v6}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V

    .line 811
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v7, v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    monitor-enter v7

    .line 812
    :try_start_c6
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 813
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;>;"
    :goto_d2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_107

    .line 814
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 815
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 816
    .local v5, "token":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 817
    .local v0, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->setTokenAndAppInfo(Landroid/os/IBinder;Z)V
    :try_end_ef
    .catchall {:try_start_c6 .. :try_end_ef} :catchall_fb

    .line 819
    const/4 v6, 0x0

    :try_start_f0
    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_f3} :catch_fe
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_fb

    .line 823
    :try_start_f3
    iget-object v6, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d2

    .line 825
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;>;"
    .end local v5    # "token":Landroid/os/IBinder;
    :catchall_fb
    move-exception v6

    monitor-exit v7
    :try_end_fd
    .catchall {:try_start_f3 .. :try_end_fd} :catchall_fb

    throw v6

    .line 820
    .restart local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;>;"
    .restart local v5    # "token":Landroid/os/IBinder;
    :catch_fe
    move-exception v3

    .line 821
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_ff
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wake lock is already dead."

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 825
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;>;"
    .end local v3    # "ex":Landroid/os/RemoteException;
    .end local v5    # "token":Landroid/os/IBinder;
    :cond_107
    monitor-exit v7
    :try_end_108
    .catchall {:try_start_ff .. :try_end_108} :catchall_fb

    goto/16 :goto_61
.end method
