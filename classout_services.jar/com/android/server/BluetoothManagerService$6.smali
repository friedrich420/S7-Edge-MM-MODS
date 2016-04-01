.class Lcom/android/server/BluetoothManagerService$6;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

.field final synthetic val$keyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/app/KeyguardManager;)V
    .registers 3

    .prologue
    .line 2951
    iput-object p1, p0, this$0:Lcom/android/server/BluetoothManagerService;

    iput-object p2, p0, val$keyguardManager:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2954
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4e

    iget-object v2, p0, val$keyguardManager:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_4e

    iget-object v2, p0, val$keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 2955
    iget-object v2, p0, this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v3, 0xd

    const/16 v4, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2956
    iget-object v2, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.settings.CHINA_NAL_SECURITY_SCAN_CANCEL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2957
    if-eqz p1, :cond_31

    .line 2958
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2961
    :cond_31
    :try_start_31
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2962
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2963
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2964
    const/high16 v2, 0x13a00000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2969
    iget-object v2, p0, this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_4e} :catch_50

    .line 2974
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4e
    :goto_4e
    const/4 v2, 0x0

    return v2

    .line 2970
    :catch_50
    move-exception v0

    .line 2971
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_4e
.end method
