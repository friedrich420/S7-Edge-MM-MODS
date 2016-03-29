.class Lcom/android/settings/bluetooth/BluetoothScanDialog$1;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothScanDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->updateScanButton()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    # getter for: Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    # getter for: Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    # getter for: Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method
