.class public Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.super Landroid/os/Binder;
.source "KiesUsbObserver.java"


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String;

.field public static isTwiceReset:Z

.field public static isbootcomplete:Z

.field private static mSystemReady:Z


# instance fields
.field private CDFS_ADB_FUNCTION_STRING:Ljava/lang/String;

.field private CDFS_FUNCTION_STRING:Ljava/lang/String;

.field public final br:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCDFSEventObserver:Landroid/os/UEventObserver;

.field private final mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 48
    sput-boolean v1, mSystemReady:Z

    .line 56
    sput-boolean v1, isbootcomplete:Z

    .line 57
    sput-boolean v1, isTwiceReset:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    iput-object v5, p0, mFileObserver:Landroid/os/FileObserver;

    .line 51
    iput-object v5, p0, usbManager:Landroid/hardware/usb/UsbManager;

    .line 53
    const-string/jumbo v3, "mass_storage"

    iput-object v3, p0, CDFS_FUNCTION_STRING:Ljava/lang/String;

    .line 54
    const-string/jumbo v3, "mass_storage,adb"

    iput-object v3, p0, CDFS_ADB_FUNCTION_STRING:Ljava/lang/String;

    .line 89
    new-instance v3, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;

    invoke-direct {v3, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v3, p0, br:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v3, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;

    invoke-direct {v3, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v3, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v3, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;

    invoke-direct {v3, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v3, p0, mCDFSEventObserver:Landroid/os/UEventObserver;

    .line 60
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 61
    new-instance v3, Lcom/android/server/KiesConnectivity/KiesUsbManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/KiesConnectivity/KiesUsbManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 62
    iget-object v3, p0, mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, mHandler:Landroid/os/Handler;

    .line 63
    iget-object v3, p0, mCDFSEventObserver:Landroid/os/UEventObserver;

    const-string v4, "SWITCH_NAME=USB_MESSAGE"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v3, "usb"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    iput-object v3, p0, usbManager:Landroid/hardware/usb/UsbManager;

    .line 67
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v2, "lIntentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "config":Ljava/lang/String;
    if-eqz v0, :cond_c6

    .line 77
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "usbManager.getDefaultCurrentFunctions(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v3, "askon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    const-string v3, "askon,adb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    const-string/jumbo v3, "mtp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    const-string/jumbo v3, "mtp,adb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    const-string/jumbo v3, "ptp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    const-string/jumbo v3, "ptp,adb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 82
    :cond_be
    iget-object v3, p0, usbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v4, "mass_storage"

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 85
    :cond_c6
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, sendMsg(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    .prologue
    .line 38
    iget-object v0, p0, mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    .prologue
    .line 38
    invoke-direct {p0}, getUsbCDFSMode()I

    move-result v0

    return v0
.end method

.method private getUsbCDFSMode()I
    .registers 6

    .prologue
    .line 172
    const-string/jumbo v2, "sys.usb.config"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "config":Ljava/lang/String;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string/jumbo v2, "mass_storage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string/jumbo v2, "mass_storage,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 176
    :cond_35
    const/16 v1, 0x7d0

    .line 182
    .local v1, "usbMode":I
    :goto_37
    return v1

    .line 179
    .end local v1    # "usbMode":I
    :cond_38
    const/4 v1, -0x1

    .restart local v1    # "usbMode":I
    goto :goto_37
.end method

.method private getUsbMode()I
    .registers 6

    .prologue
    .line 155
    const-string/jumbo v2, "sys.usb.config"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "config":Ljava/lang/String;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string/jumbo v2, "mass_storage,mtp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string/jumbo v2, "mass_storage,mtp,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 159
    :cond_35
    const/16 v1, 0x7d0

    .line 165
    .local v1, "usbMode":I
    :goto_37
    return v1

    .line 162
    .end local v1    # "usbMode":I
    :cond_38
    const/4 v1, -0x1

    .restart local v1    # "usbMode":I
    goto :goto_37
.end method

.method private isAdbEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "enabled":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 192
    if-ne v0, v1, :cond_12

    .line 195
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private sendMsg(II)V
    .registers 7
    .param p1, "usbState"    # I
    .param p2, "usbMode"    # I

    .prologue
    const/4 v1, -0x1

    .line 203
    move v0, p2

    .line 205
    .local v0, "arg1":I
    if-eq p1, v1, :cond_6

    if-ne p2, v1, :cond_f

    .line 206
    :cond_6
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMsg -> wrong argument"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_e
    return-void

    .line 210
    :cond_f
    const/16 v1, 0x7d0

    if-eq p2, v1, :cond_1c

    .line 211
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMsg -> UsbMode is not mtp"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 215
    :cond_1c
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_53

    .line 217
    if-nez p1, :cond_23

    .line 218
    const/4 v0, 0x0

    .line 220
    :cond_23
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMsg ->usbState is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UsbMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e

    .line 224
    :cond_53
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMsg -> mHandler is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static declared-synchronized systemReady()V
    .registers 3

    .prologue
    .line 270
    const-class v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, mSystemReady:Z

    .line 271
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v2, "systemReady done"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    .line 272
    monitor-exit v1

    return-void

    .line 270
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method
