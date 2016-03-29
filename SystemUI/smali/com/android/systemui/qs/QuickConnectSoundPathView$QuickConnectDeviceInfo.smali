.class Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
.super Ljava/lang/Object;
.source "QuickConnectSoundPathView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickConnectSoundPathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickConnectDeviceInfo"
.end annotation


# static fields
.field public static final AP_MIRRORING_DEVICE:I = 0x3

.field public static final BT_DEVICE:I = 0x1

.field public static final WIFI_P2P_DEVICE:I = 0x2


# instance fields
.field public mQcDevice:Ljava/lang/Object;

.field public mType:I

.field final synthetic this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;)V
    .locals 1
    .param p2, "o"    # Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iget v0, p2, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    .line 320
    iget-object v0, p2, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    .line 321
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 350
    instance-of v2, p1, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 351
    check-cast v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    .line 352
    .local v0, "d":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 355
    .end local v0    # "d":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    :cond_0
    return v1
.end method

.method public getIcon()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 333
    iget v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;
    invoke-static {v1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$100(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$100(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDrawable(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 336
    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;
    invoke-static {v1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$200(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/WifiP2pController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$200(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/WifiP2pController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/WifiP2pController;->getDrawable(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v0

    goto :goto_0

    .line 337
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mApMirroringController:Lcom/android/systemui/statusbar/policy/ApMirroringController;
    invoke-static {v1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$300(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/ApMirroringController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mApMirroringController:Lcom/android/systemui/statusbar/policy/ApMirroringController;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$300(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/ApMirroringController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ApMirroringController;->getDrawable()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 345
    const-class v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    iget v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    if-ne v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 328
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 325
    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
