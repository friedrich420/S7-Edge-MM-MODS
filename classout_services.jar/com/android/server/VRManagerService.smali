.class public Lcom/android/server/VRManagerService;
.super Lcom/android/internal/app/IVRManagerService$Stub;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VRManagerService$VRRecord;,
        Lcom/android/server/VRManagerService$DeviceEventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITHOUT_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITH_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

.field public static final ACTION_HMT_SENSOR_CONNECTED_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final EPEN_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"

.field private static final MESSAGE_DEVICE_EVENT:I = 0x1

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final SCHED_RESET_ON_FORK:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "VRManagerService"

.field private static final TOUCHKEY_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/input/enabled"

.field private static final TSP_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final VR_UNDOCK_TIMEOUT:I = 0xea60


# instance fields
.field private mAfControl:Landroid/sec/performance/AffinityControl;

.field private mContext:Landroid/content/Context;

.field private mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

.field private mDeviceEventLooper:Landroid/os/Looper;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerLock:Ljava/lang/Object;

.field private mLock:Ljava/lang/Object;

.field private mVRRecord:Lcom/android/server/VRManagerService$VRRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/app/IVRManagerService$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mHandlerLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, mAfControl:Landroid/sec/performance/AffinityControl;

    .line 70
    new-instance v0, Lcom/android/server/VRManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$1;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 105
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService Constructor ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VRManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    invoke-direct {p0}, stopVR()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VRManagerService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/VRManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, handleDeviceEventChanged(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelInit()V
    .registers 4

    .prologue
    .line 964
    iget-object v1, p0, mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    :try_start_3
    iget-object v0, p0, mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-eqz v0, :cond_2c

    .line 966
    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventHandler"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    .line 973
    :goto_17
    iget-object v0, p0, mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v0, :cond_38

    .line 974
    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventLooper"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, p0, mDeviceEventLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, mDeviceEventLooper:Landroid/os/Looper;

    .line 980
    :goto_2a
    monitor-exit v1

    .line 981
    return-void

    .line 970
    :cond_2c
    const-string v0, "VRManagerService"

    const-string/jumbo v2, "mDeviceEventHandler=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 980
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v0

    .line 978
    :cond_38
    :try_start_38
    const-string v0, "VRManagerService"

    const-string/jumbo v2, "mDeviceEventLooper=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_35

    goto :goto_2a
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 241
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 242
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_14
    return-void
.end method

.method private getService()Lcom/android/internal/app/IVRManagerService;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 248
    :try_start_1
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_34

    .line 251
    :try_start_4
    iget-object v1, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v1, :cond_1b

    iget-object v1, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v1}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 252
    invoke-direct {p0}, stopVR()V

    .line 254
    :cond_1b
    iget-object v1, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_22

    .line 255
    invoke-direct {p0}, startVR()V

    .line 257
    :cond_22
    iget-object v1, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_28

    .line 259
    monitor-exit v2

    .line 267
    :goto_27
    return-object v0

    .line 262
    :cond_28
    iget-object v1, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRRecord;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    monitor-exit v2

    move-object v0, v1

    goto :goto_27

    .line 264
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    :try_start_33
    throw v1
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_34} :catch_34

    .line 265
    :catch_34
    move-exception v1

    goto :goto_27
.end method

.method private handleDeviceEventChanged(III)V
    .registers 9
    .param p1, "event"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 896
    const-string/jumbo v2, "handleDeviceEventChanged"

    invoke-virtual {p0, p2, p3, v2}, enforceCallingPermission(IILjava/lang/String;)V

    .line 897
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :try_start_33
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 900
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_3d

    .line 901
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V

    .line 908
    :goto_3c
    return-void

    .line 903
    :cond_3d
    invoke-direct {p0, p1}, handleDeviceEventChangedForFactory(I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_40} :catch_41

    goto :goto_3c

    .line 905
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_41
    move-exception v0

    .line 906
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleDeviceEventChangedForFactory(I)V
    .registers 8
    .param p1, "event"    # I

    .prologue
    const/high16 v5, 0x20000000

    const/high16 v4, 0x40000000    # 2.0f

    .line 911
    const-string v1, "VRManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDeviceEventChangedForFactory  event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 913
    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_51

    .line 914
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 916
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    :cond_49
    :goto_49
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 942
    return-void

    .line 917
    :cond_51
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_64

    .line 918
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 920
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_49

    .line 921
    :cond_64
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_78

    .line 922
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_49

    .line 925
    :cond_78
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_85

    .line 926
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 927
    const-string v1, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_49

    .line 928
    :cond_85
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_92

    .line 929
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 930
    const-string v1, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_49

    .line 931
    :cond_92
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_9f

    .line 932
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 933
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_49

    .line 934
    :cond_9f
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_ac

    .line 935
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 936
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_49

    .line 937
    :cond_ac
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_49

    .line 938
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 939
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_49
.end method

.method private isSystemEPenEnabled()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 853
    const-string/jumbo v3, "isSystemEPenEnabled"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 855
    :try_start_8
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 856
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2d

    .line 859
    :goto_2c
    return v1

    :cond_2d
    move v1, v2

    .line 856
    goto :goto_2c

    .line 858
    :cond_2f
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_37} :catch_39
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_40

    move v1, v2

    .line 859
    goto :goto_2c

    .line 861
    :catch_39
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 863
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_40
    move-exception v0

    .line 864
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchKeyEnabled()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 824
    const-string/jumbo v3, "isSystemTouchKeyEnabled"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 826
    :try_start_8
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 827
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2d

    .line 830
    :goto_2c
    return v1

    :cond_2d
    move v1, v2

    .line 827
    goto :goto_2c

    .line 829
    :cond_2f
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_37} :catch_39
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_40

    move v1, v2

    .line 830
    goto :goto_2c

    .line 832
    :catch_39
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 834
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_40
    move-exception v0

    .line 835
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchSceenPanelEnabled()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 795
    const-string/jumbo v3, "isSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 797
    :try_start_8
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 798
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2d

    .line 801
    :goto_2c
    return v1

    :cond_2d
    move v1, v2

    .line 798
    goto :goto_2c

    .line 800
    :cond_2f
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_37} :catch_39
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_40

    move v1, v2

    .line 801
    goto :goto_2c

    .line 803
    :catch_39
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 805
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_40
    move-exception v0

    .line 806
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private requestInit()V
    .registers 5

    .prologue
    .line 945
    iget-object v2, p0, mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 947
    :try_start_3
    iget-object v1, p0, mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-nez v1, :cond_2c

    .line 948
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "requestInit()"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HMT VR DeviceEvent Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 951
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 953
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, mDeviceEventLooper:Landroid/os/Looper;

    .line 954
    iget-object v1, p0, mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v1, :cond_2e

    .line 955
    new-instance v1, Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, mDeviceEventLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;-><init>(Lcom/android/server/VRManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    .line 960
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_2c
    :goto_2c
    monitor-exit v2

    .line 961
    return-void

    .line 957
    .restart local v0    # "thread":Landroid/os/HandlerThread;
    :cond_2e
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "mSensorLooper is null! ignored!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 960
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private scheduleThreadFIFO(Ljava/lang/String;III)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 317
    const-string/jumbo v2, "scheduleThreadFIFO"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    .line 321
    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- elevateProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v2, 0x3

    :try_start_44
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 325
    const v2, 0x40000001    # 2.0000002f

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_4d} :catch_4f

    .line 326
    const/4 v1, 0x1

    .line 331
    :goto_4e
    return v1

    .line 327
    :catch_4f
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private scheduleThreadOTHER(Ljava/lang/String;III)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 335
    const-string/jumbo v2, "scheduleThreadOTHER"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 337
    const/4 v1, 0x0

    .line 339
    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- demoteProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x3

    :try_start_44
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 343
    const/4 v2, 0x0

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_4b} :catch_4d

    .line 344
    const/4 v1, 0x1

    .line 349
    :goto_4c
    return v1

    .line 345
    :catch_4d
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method private setSystemEPenEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 840
    const-string/jumbo v1, "setSystemEPenEnabled"

    invoke-virtual {p0, v1}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 842
    :try_start_6
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 843
    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    if-eqz p1, :cond_1d

    const-string v1, "1"

    :goto_19
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :goto_1c
    return-void

    .line 843
    :cond_1d
    const-string v1, "0"

    goto :goto_19

    .line 845
    :cond_20
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 847
    :catch_29
    move-exception v0

    .line 848
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemMouseControlType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 984
    const-string/jumbo v1, "setSystemMouseControlType"

    invoke-virtual {p0, v1}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 985
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 986
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_13

    .line 987
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseControlType(I)V

    .line 989
    :cond_13
    return-void
.end method

.method private setSystemShowMouseEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 869
    const-string/jumbo v1, "setSystemShowMouseEnabled"

    invoke-virtual {p0, v1}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 870
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 871
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_13

    .line 872
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    .line 874
    :cond_13
    return-void
.end method

.method private setSystemTouchKeyEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 811
    const-string/jumbo v1, "setSystemTouchKeyEnabled"

    invoke-virtual {p0, v1}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 813
    :try_start_6
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 814
    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    if-eqz p1, :cond_1d

    const-string v1, "1"

    :goto_19
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :goto_1c
    return-void

    .line 814
    :cond_1d
    const-string v1, "0"

    goto :goto_19

    .line 816
    :cond_20
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 818
    :catch_29
    move-exception v0

    .line 819
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemTouchSceenPanelEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 781
    const-string/jumbo v1, "setSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v1}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 784
    :try_start_6
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 785
    const-string v2, "/sys/class/sec/tsp/input/enabled"

    if-eqz p1, :cond_1d

    const-string v1, "1"

    :goto_19
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :goto_1c
    return-void

    .line 785
    :cond_1d
    const-string v1, "0"

    goto :goto_19

    .line 787
    :cond_20
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 789
    :catch_29
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVR()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 114
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, ensureNotOnMainThread(Landroid/content/Context;)V

    .line 118
    new-instance v5, Lcom/android/server/VRManagerService$VRRecord;

    invoke-direct {v5, p0, v9}, Lcom/android/server/VRManagerService$VRRecord;-><init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V

    .line 120
    .local v5, "vrRecord":Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 123
    .local v2, "ident":J
    :try_start_17
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android"

    const-string v8, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, "result":I
    if-nez v4, :cond_55

    .line 125
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.hmt.vrsvc"

    const-string v7, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/4 v7, 0x1

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_6f

    .line 133
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    iget-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-nez v6, :cond_74

    .line 137
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Unable to bind VRSystemService"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-object v9, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    .line 154
    :goto_54
    return-void

    .line 130
    :cond_55
    :try_start_55
    const-string v6, "VRManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVR() check signatures failed. result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_6f

    goto :goto_43

    .line 133
    .end local v4    # "result":I
    :catchall_6f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 140
    .restart local v4    # "result":I
    :cond_74
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Take iVRManagerService... start"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object v5, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    .line 142
    iget-object v6, v5, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/IVRManagerService;

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5, v6}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;

    .line 143
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Take iVRManagerService... ok!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_91
    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9d} :catch_9e

    goto :goto_54

    .line 148
    :catch_9e
    move-exception v0

    .line 149
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v6, "VRManagerService"

    const-string v7, "The VRConnection died unexpectedly."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-direct {p0}, stopVR()V

    goto :goto_54
.end method

.method private stopVR()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v0, :cond_e

    .line 158
    const-string v0, "VRManagerService"

    const-string/jumbo v1, "stopVR() already stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_d
    :goto_d
    return-void

    .line 162
    :cond_e
    const-string v0, "VRManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVR() mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iVRManagerService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, cancelInit()V

    .line 171
    :try_start_4c
    iget-object v0, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 172
    iget-object v0, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 173
    iget-object v0, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0, v1}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;
    :try_end_6a
    .catch Ljava/util/NoSuchElementException; {:try_start_4c .. :try_end_6a} :catch_7a

    .line 178
    :cond_6a
    :goto_6a
    iget-object v0, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v0, v0, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-eqz v0, :cond_d

    .line 179
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 180
    iput-object v3, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    goto :goto_d

    .line 175
    :catch_7a
    move-exception v0

    goto :goto_6a
.end method


# virtual methods
.method public GetPowerLevelState()I
    .registers 5

    .prologue
    .line 507
    const-string v3, "GetPowerLevelState"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 508
    const/4 v1, -0x1

    .line 510
    .local v1, "result":I
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 511
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 512
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 518
    :cond_10
    return v1

    .line 514
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 515
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    const/4 v4, 0x0

    .line 491
    const-string v3, "SetVrClocks"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 492
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 496
    .local v1, "result":[I
    :try_start_b
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 497
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_15

    .line 498
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    move-result-object v1

    .line 503
    :cond_15
    return-object v1

    .line 500
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_16
    move-exception v0

    .line 501
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1013
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump VRManagerService(system_process) from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    :goto_32
    return-void

    .line 1018
    :cond_33
    const-string v2, "VR MANAGER (dumpsys vr)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    iget-object v2, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v2, :cond_f9

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.q.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-object v3, v3, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.iVRManagerService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v3}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    iget-object v2, p0, mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$700(Lcom/android/server/VRManagerService$VRRecord;)Landroid/os/IBinder;

    move-result-object v0

    .line 1028
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_f2

    .line 1030
    :try_start_ca
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1031
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1032
    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d3} :catch_d5

    goto/16 :goto_32

    .line 1033
    :catch_d5
    move-exception v1

    .line 1034
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 1037
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f2
    const-string v2, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 1040
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_f9
    const-string v2, "  mVRRecord=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 1002
    :try_start_0
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 1003
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 1004
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1009
    :cond_9
    return-void

    .line 1006
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 1007
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 995
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 996
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 997
    .local v1, "uid":I
    invoke-virtual {p0, v0, v1, p1}, enforceCallingPermission(IILjava/lang/String;)V

    .line 998
    return-void
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "optionName"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string/jumbo v3, "getOption"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 389
    const/4 v1, 0x0

    .line 391
    .local v1, "result":Ljava/lang/String;
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 392
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 393
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v1

    .line 399
    :cond_11
    return-object v1

    .line 395
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 396
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 577
    const-string/jumbo v3, "getSystemOption"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 578
    const/4 v1, 0x0

    .line 581
    .local v1, "result":Ljava/lang/String;
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 582
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_1e

    .line 583
    const-string/jumbo v3, "tsp_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 584
    invoke-direct {p0}, isSystemTouchSceenPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v1, "1"

    .line 597
    :cond_1e
    :goto_1e
    return-object v1

    .line 584
    :cond_1f
    const-string v1, "0"

    goto :goto_1e

    .line 585
    :cond_22
    const-string/jumbo v3, "touchkey_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 586
    invoke-direct {p0}, isSystemTouchKeyEnabled()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v1, "1"

    :goto_33
    goto :goto_1e

    :cond_34
    const-string v1, "0"

    goto :goto_33

    .line 587
    :cond_37
    const-string/jumbo v3, "epen_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 588
    invoke-direct {p0}, isSystemEPenEnabled()Z

    move-result v3

    if-eqz v3, :cond_49

    const-string v1, "1"

    :goto_48
    goto :goto_1e

    :cond_49
    const-string v1, "0"

    goto :goto_48

    .line 590
    :cond_4c
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_4f} :catch_51

    move-result-object v1

    goto :goto_1e

    .line 593
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_51
    move-exception v0

    .line 594
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .registers 5

    .prologue
    .line 641
    const-string/jumbo v3, "getVRBright"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 642
    const/4 v1, 0x0

    .line 645
    .local v1, "result":I
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 646
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 647
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 653
    :cond_11
    return v1

    .line 649
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 650
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .registers 5

    .prologue
    .line 669
    const-string/jumbo v3, "getVRColorTemperature"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 670
    const/4 v1, 0x0

    .line 673
    .local v1, "result":I
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 674
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 675
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 681
    :cond_11
    return v1

    .line 677
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 678
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .registers 5

    .prologue
    .line 271
    const-string/jumbo v3, "isConnected"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 275
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 276
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 282
    :cond_11
    return v1

    .line 278
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 279
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isDevelopermode()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 287
    .local v0, "developerMode":I
    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDevelopermode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-ne v0, v1, :cond_2b

    .line 291
    :goto_2a
    return v1

    :cond_2b
    move v1, v2

    goto :goto_2a
.end method

.method public isVRComfortableViewEnabled()Z
    .registers 5

    .prologue
    .line 725
    const-string/jumbo v3, "isVRComfortableViewEnabled"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 726
    const/4 v1, 0x0

    .line 729
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 730
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 731
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 737
    :cond_11
    return v1

    .line 733
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 734
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .registers 5

    .prologue
    .line 697
    const-string/jumbo v3, "isVRDarkAdaptationEnabled"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 698
    const/4 v1, 0x0

    .line 701
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 702
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 703
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 709
    :cond_11
    return v1

    .line 705
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 706
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .registers 5

    .prologue
    .line 753
    const-string/jumbo v3, "isVRLowPersistenceEnabled"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 754
    const/4 v1, 0x0

    .line 757
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 758
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 759
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 765
    :cond_11
    return v1

    .line 761
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 762
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .registers 5

    .prologue
    .line 613
    const-string/jumbo v3, "isVRMode"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x0

    .line 617
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 618
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 619
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 625
    :cond_11
    return v1

    .line 621
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 622
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public notifyDeviceEventChanged(I)V
    .registers 9
    .param p1, "event"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 877
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 878
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 880
    .local v1, "uid":I
    invoke-direct {p0}, requestInit()V

    .line 882
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v2, p0, mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    .line 885
    iget-object v2, p0, mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 887
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_58

    .line 888
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 893
    :cond_57
    :goto_57
    return-void

    .line 889
    :cond_58
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_57

    .line 890
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_57
.end method

.method public relFreq(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string/jumbo v3, "relFreq"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 462
    const/4 v1, 0x0

    .line 464
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 465
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 466
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 471
    :cond_11
    return v1

    .line 468
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 469
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string/jumbo v2, "releaseCPUMhz"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 423
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 424
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 425
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 430
    :cond_f
    return-void

    .line 427
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 428
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string/jumbo v2, "releaseGPUMhz"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 451
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 452
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 453
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 458
    :cond_f
    return-void

    .line 455
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 456
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 475
    const-string/jumbo v3, "return2EnableFreqLev"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 476
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 480
    .local v1, "result":[I
    :try_start_c
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 481
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_16

    .line 482
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v1

    .line 487
    :cond_16
    return-object v1

    .line 484
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_17
    move-exception v0

    .line 485
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setAffinity(I[I)I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "cpus"    # [I

    .prologue
    .line 353
    const-string/jumbo v2, "setAffinity"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 356
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 357
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 358
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setAffinity(I[I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_25

    .line 364
    :cond_f
    iget-object v2, p0, mAfControl:Landroid/sec/performance/AffinityControl;

    if-nez v2, :cond_1a

    .line 365
    new-instance v2, Landroid/sec/performance/AffinityControl;

    invoke-direct {v2}, Landroid/sec/performance/AffinityControl;-><init>()V

    iput-object v2, p0, mAfControl:Landroid/sec/performance/AffinityControl;

    .line 368
    :cond_1a
    iget-object v2, p0, mAfControl:Landroid/sec/performance/AffinityControl;

    if-eqz v2, :cond_2c

    .line 369
    iget-object v2, p0, mAfControl:Landroid/sec/performance/AffinityControl;

    invoke-virtual {v2, p1, p2}, Landroid/sec/performance/AffinityControl;->SetAffinity(I[I)I

    move-result v2

    .line 371
    :goto_24
    return v2

    .line 360
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_25
    move-exception v0

    .line 361
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 371
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2c
    const/4 v2, -0x1

    goto :goto_24
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I

    .prologue
    const/4 v4, 0x0

    .line 403
    const-string/jumbo v3, "setCPUClockMhz"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 404
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 409
    .local v1, "result":[I
    :try_start_c
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 410
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_16

    .line 411
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v1

    .line 417
    :cond_16
    return-object v1

    .line 413
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_17
    move-exception v0

    .line 414
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # I

    .prologue
    .line 433
    const-string/jumbo v3, "setGPUClockMhz"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 434
    const/4 v1, 0x0

    .line 437
    .local v1, "result":I
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 438
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 439
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 445
    :cond_11
    return v1

    .line 441
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 442
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string/jumbo v2, "setOption"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 377
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 378
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 379
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 385
    :cond_f
    return-void

    .line 381
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 382
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 537
    const-string/jumbo v2, "setSystemOption"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 539
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 540
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_21

    .line 541
    const-string/jumbo v2, "tsp_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 542
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 543
    const/4 v2, 0x1

    invoke-direct {p0, v2}, setSystemTouchSceenPanelEnabled(Z)V

    .line 574
    :cond_21
    :goto_21
    return-void

    .line 544
    :cond_22
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 545
    const/4 v2, 0x0

    invoke-direct {p0, v2}, setSystemTouchSceenPanelEnabled(Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 571
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_2f
    move-exception v0

    .line 572
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 547
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_36
    :try_start_36
    const-string/jumbo v2, "touchkey_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 548
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 549
    const/4 v2, 0x1

    invoke-direct {p0, v2}, setSystemTouchKeyEnabled(Z)V

    goto :goto_21

    .line 550
    :cond_4c
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 551
    const/4 v2, 0x0

    invoke-direct {p0, v2}, setSystemTouchKeyEnabled(Z)V

    goto :goto_21

    .line 553
    :cond_59
    const-string/jumbo v2, "epen_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 554
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 555
    const/4 v2, 0x1

    invoke-direct {p0, v2}, setSystemEPenEnabled(Z)V

    goto :goto_21

    .line 556
    :cond_6f
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 557
    const/4 v2, 0x0

    invoke-direct {p0, v2}, setSystemEPenEnabled(Z)V

    goto :goto_21

    .line 559
    :cond_7c
    const-string/jumbo v2, "show_mouse_pointer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 560
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 561
    const/4 v2, 0x1

    invoke-direct {p0, v2}, setSystemShowMouseEnabled(Z)V

    goto :goto_21

    .line 562
    :cond_92
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 563
    const/4 v2, 0x0

    invoke-direct {p0, v2}, setSystemShowMouseEnabled(Z)V

    goto :goto_21

    .line 565
    :cond_9f
    const-string/jumbo v2, "mouse_control_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 566
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, setSystemMouseControlType(I)V

    goto/16 :goto_21

    .line 568
    :cond_b1
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_b4} :catch_2f

    goto/16 :goto_21
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    const/4 v2, 0x0

    .line 296
    const-string/jumbo v3, "setThreadSchedFifo"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 299
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 300
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_10

    .line 301
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IVRManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_1a

    .line 307
    :cond_10
    if-lez p4, :cond_21

    const/4 v3, 0x4

    if-gt p4, v3, :cond_21

    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, scheduleThreadFIFO(Ljava/lang/String;III)Z

    move-result v2

    .line 313
    :cond_19
    :goto_19
    return v2

    .line 303
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_1a
    move-exception v0

    .line 304
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 309
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_21
    if-nez p4, :cond_19

    .line 310
    invoke-direct {p0, p1, p2, p3, v2}, scheduleThreadOTHER(Ljava/lang/String;III)Z

    move-result v2

    goto :goto_19
.end method

.method public setVRBright(I)V
    .registers 5
    .param p1, "bright"    # I

    .prologue
    .line 629
    const-string/jumbo v2, "setVRBright"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 631
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 632
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 633
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 638
    :cond_f
    return-void

    .line 635
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 636
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 657
    const-string/jumbo v2, "setVRColorTemperature"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 659
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 660
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 661
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 666
    :cond_f
    return-void

    .line 663
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 664
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 713
    const-string/jumbo v2, "setVRComfortableView"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 715
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 716
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 717
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 722
    :cond_f
    return-void

    .line 719
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 720
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 685
    const-string/jumbo v2, "setVRDarkAdaptation"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 687
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 688
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 689
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 694
    :cond_f
    return-void

    .line 691
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 692
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 741
    const-string/jumbo v2, "setVRLowPersistence"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 743
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 744
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 745
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 750
    :cond_f
    return-void

    .line 747
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 748
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 601
    const-string/jumbo v2, "setVRMode"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 603
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 604
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 605
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 610
    :cond_f
    return-void

    .line 607
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 608
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRPerformanceMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 769
    const-string/jumbo v2, "setVRPerformanceMode"

    invoke-virtual {p0, v2}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 771
    :try_start_6
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 772
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 773
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRPerformanceMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 778
    :cond_f
    return-void

    .line 775
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 776
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z

    .prologue
    .line 522
    const-string/jumbo v3, "setVideoMode"

    invoke-virtual {p0, v3}, enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 523
    const/4 v1, 0x0

    .line 525
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 526
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 527
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 533
    :cond_11
    return v1

    .line 529
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 530
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 110
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService systemReady ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method
