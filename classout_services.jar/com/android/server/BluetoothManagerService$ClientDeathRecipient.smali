.class Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mIsSamsungApp:Z

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 3

    .prologue
    .line 722
    iput-object p1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsSamsungApp:Z

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 733
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "BluetoothManagerService"

    const-string v4, "Binder is dead -  unregister Ble App"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_d
    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v1

    .line 735
    .local v1, "prevBleAppCount":I
    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v2

    .line 736
    .local v2, "prevSamsungAppCount":I
    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v3

    if-lez v3, :cond_1e

    # --operator for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$206()I

    .line 737
    :cond_1e
    iget-object v3, p0, mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_4b

    .line 738
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Google : remove token ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_42
    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v3, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    iget-object v4, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :cond_4b
    iget-boolean v3, p0, mIsSamsungApp:Z

    if-eqz v3, :cond_92

    .line 742
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string v3, "BluetoothManagerService"

    const-string v4, "Its Samsung App, decrease the count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_5c
    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v3

    if-lez v3, :cond_65

    # --operator for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$306()I

    .line 744
    :cond_65
    iget-object v3, p0, mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_92

    .line 745
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_89

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Samsung : remove token ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_89
    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    iget-object v4, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :cond_92
    if-le v1, v2, :cond_d3

    .line 750
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_a1

    const-string v3, "BluetoothManagerService"

    const-string v4, "Google app killed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_a1
    :try_start_a1
    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v3

    # getter for: Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$300()I

    move-result v4

    if-ne v3, v4, :cond_d3

    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_d3

    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_d3

    .line 753
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_ce

    const-string v3, "BluetoothManagerService"

    const-string v4, "Stop third party scan, if any"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_ce
    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_d3} :catch_f8

    .line 762
    :cond_d3
    :goto_d3
    # getter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$200()I

    move-result v3

    if-nez v3, :cond_f7

    .line 763
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_e6

    const-string v3, "BluetoothManagerService"

    const-string v4, "Disabling LE only mode after application crash"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_e6
    :try_start_e6
    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_f7

    .line 766
    iget-object v3, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_f7} :catch_102

    .line 772
    :cond_f7
    :goto_f7
    return-void

    .line 756
    :catch_f8
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "error when sending ble disable"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d3

    .line 768
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_102
    move-exception v0

    .line 769
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to call onBrEdrDown"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f7
.end method

.method public setTokenAndAppInfo(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSamsungApp"    # Z

    .prologue
    .line 727
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTokenAndAppInfo :: isSamsungApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_2a
    iput-boolean p2, p0, mIsSamsungApp:Z

    .line 729
    iput-object p1, p0, mToken:Landroid/os/IBinder;

    .line 730
    return-void
.end method
