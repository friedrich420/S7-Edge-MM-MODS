.class Lcom/android/server/BluetoothManagerService$4;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    .prologue
    .line 2925
    iput-object p1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2928
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 2929
    const/4 v0, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5602(Z)Z

    .line 2930
    iget-object v0, p0, this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->enable()Z

    .line 2935
    :goto_c
    if-eqz p1, :cond_11

    .line 2936
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2937
    :cond_11
    return-void

    .line 2932
    :cond_12
    iget-object v0, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v1, 0xd

    const/16 v2, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2933
    iget-object v0, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.CHINA_NAL_SECURITY_SCAN_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c
.end method
