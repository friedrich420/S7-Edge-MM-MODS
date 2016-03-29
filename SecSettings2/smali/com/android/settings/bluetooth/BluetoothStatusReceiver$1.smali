.class Lcom/android/settings/bluetooth/BluetoothStatusReceiver$1;
.super Landroid/os/Handler;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothStatusReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothStatusReceiver;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string v2, "BluetoothStatusReceiver"

    const-string v3, "mScanDialogHandler :: LAUNCH_SCAN_DIALOG"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.bluetooth.scandialog.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "mLaunchDialogIntent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/android/settings/bluetooth/BluetoothStatusReceiver;

    # getter for: Lcom/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothStatusReceiver;->access$000(Lcom/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "BluetoothStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
