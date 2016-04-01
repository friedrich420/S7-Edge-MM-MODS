.class Lcom/android/server/DeviceManager3LMService$5;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .registers 2

    .prologue
    .line 3130
    iput-object p1, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 3132
    iget-object v0, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/server/DeviceManager3LMService;->access$802(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 3133
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .prologue
    .line 3135
    iget-object v0, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/server/DeviceManager3LMService;->access$802(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 3136
    return-void
.end method
