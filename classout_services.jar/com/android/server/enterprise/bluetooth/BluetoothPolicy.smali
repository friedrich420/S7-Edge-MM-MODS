.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.super Landroid/app/enterprise/IBluetoothPolicy$Stub;
.source "BluetoothPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPolicyService"


# instance fields
.field private isCacheUpdated:Z

.field mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

.field private mCacheIsBluetoothLogEnabled:Z

.field private mContext:Landroid/content/Context;

.field mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLogQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;-><init>()V

    .line 106
    iput-boolean v3, p0, mCacheIsBluetoothLogEnabled:Z

    .line 107
    iput-boolean v3, p0, isCacheUpdated:Z

    .line 108
    iput-object v1, p0, mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 109
    iput-object v1, p0, mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mProfileMap:Ljava/util/Map;

    .line 138
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 119
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 120
    iput-boolean v3, p0, mRestart:Z

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 127
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v1, p0, mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 128
    iget-object v1, p0, mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;->start()V

    .line 131
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_PROFILE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    .line 133
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_DEVICE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 134
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    move-result-object v1

    iput-object v1, p0, mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    .line 135
    invoke-direct {p0}, initProfileMap()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-boolean v0, p0, mRestart:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, mRestart:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    invoke-direct {p0}, disableDesktopConnectivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, mLogQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private applyDevicePolicy()V
    .registers 2

    .prologue
    .line 1541
    iget-object v0, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, applyBlackList(Ljava/util/List;)V

    .line 1543
    return-void
.end method

.method private delayedBTOff()V
    .registers 2

    .prologue
    .line 308
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->start()V

    .line 331
    return-void
.end method

.method private disableDesktopConnectivity()V
    .registers 9

    .prologue
    .line 880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 881
    .local v4, "token":J
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 883
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 885
    .local v1, "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 886
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 887
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 888
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    const/16 v7, 0x100

    if-ne v6, v7, :cond_10

    .line 891
    iget-object v6, p0, mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z

    goto :goto_10

    .line 894
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_32
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    return-void
.end method

.method private enforceBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 340
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 349
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 959
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const/4 v6, -0x1

    .line 961
    .local v6, "uid":I
    if-nez p2, :cond_2a

    .line 962
    invoke-direct {p0, p1}, enforceBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 963
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 965
    :cond_2a
    new-array v0, v11, [Ljava/lang/String;

    .line 966
    .local v0, "columns":[Ljava/lang/String;
    const-string v7, "bluetoothLogEnabled"

    aput-object v7, v0, v10

    .line 967
    const/4 v5, 0x0

    .line 969
    .local v5, "ret":Z
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    if-lez v6, :cond_8d

    .line 971
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 974
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_73

    .line 975
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v11, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 976
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 977
    const/4 v5, 0x1

    .line 980
    :cond_70
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1000
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_73
    :goto_73
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return v5

    .line 983
    :cond_8d
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 985
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_73

    .line 986
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - cvList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const/4 v2, 0x0

    .line 988
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 990
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_b5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 991
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 992
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - cv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v7, "bluetoothLogEnabled"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 994
    const/4 v5, 0x1

    .line 995
    goto :goto_73
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 162
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 165
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private initProfileMap()V
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1573
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    iget-object v0, p0, mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    return-void
.end method

.method private isProfileEnabled(II)Z
    .registers 11
    .param p1, "adminUid"    # I
    .param p2, "profile"    # I

    .prologue
    .line 625
    const/4 v2, 0x1

    .line 629
    .local v2, "lEnabled":Z
    if-gtz p2, :cond_1c

    .line 630
    :try_start_3
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5
    :try_end_9
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_4c

    .line 645
    :catch_9
    move-exception v0

    .line 646
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v5, "BluetoothPolicyService"

    const-string/jumbo v6, "isProfileEnabled() failed: INVALID PARAMETER INPUT"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_12
    :goto_12
    if-eqz v2, :cond_57

    invoke-direct {p0, p1, p2}, isProfileEnabledBySecureMode(II)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v5, 0x1

    :goto_1b
    return v5

    .line 633
    :cond_1c
    :try_start_1c
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string/jumbo v7, "profileSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 635
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    .line 636
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 637
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_31

    .line 638
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_46
    .catch Ljava/security/InvalidParameterException; {:try_start_1c .. :try_end_46} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_4c

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_31

    .line 639
    const/4 v2, 0x0

    .line 640
    goto :goto_12

    .line 647
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_4c
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 652
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    const/4 v5, 0x0

    goto :goto_1b
.end method

.method private isProfileEnabledBySecureMode(II)Z
    .registers 9
    .param p1, "adminUid"    # I
    .param p2, "profile"    # I

    .prologue
    .line 656
    const/4 v3, 0x1

    .line 657
    .local v3, "ret":Z
    const-string v5, "bluetooth_secure_mode_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 660
    .local v0, "bsmp":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 661
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_16
    move v4, v3

    .line 689
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_17
    return v4

    .line 665
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_18
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getSecureModeConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/BluetoothSecureModeConfig;

    move-result-object v1

    .line 667
    .local v1, "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    if-eqz v1, :cond_21

    .line 668
    sparse-switch p2, :sswitch_data_32

    :cond_21
    :goto_21
    move v4, v3

    .line 689
    .restart local v4    # "ret":I
    goto :goto_17

    .line 670
    .end local v4    # "ret":I
    :sswitch_23
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->hfpEnable:Z

    .line 671
    goto :goto_21

    .line 673
    :sswitch_26
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->pbapEnable:Z

    .line 674
    goto :goto_21

    .line 676
    :sswitch_29
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->a2dpEnable:Z

    .line 677
    goto :goto_21

    .line 679
    :sswitch_2c
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->ftpEnable:Z

    .line 680
    goto :goto_21

    .line 682
    :sswitch_2f
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->sapEnable:Z

    .line 683
    goto :goto_21

    .line 668
    :sswitch_data_32
    .sparse-switch
        0x2 -> :sswitch_23
        0x4 -> :sswitch_26
        0x8 -> :sswitch_29
        0x40 -> :sswitch_2c
        0x100 -> :sswitch_2f
    .end sparse-switch
.end method

.method private restartBluetooth()V
    .registers 3

    .prologue
    .line 1546
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1547
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1549
    const/4 v1, 0x1

    iput-boolean v1, p0, mRestart:Z

    .line 1550
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1552
    :cond_10
    return-void
.end method

.method private showProfileBlockedToast(I)V
    .registers 3
    .param p1, "profile"    # I

    .prologue
    .line 693
    const/4 v0, -0x1

    .line 695
    .local v0, "msgResId":I
    sparse-switch p1, :sswitch_data_30

    .line 731
    :goto_4
    return-void

    .line 697
    :sswitch_5
    const v0, 0x1040b6b

    .line 730
    :goto_8
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_4

    .line 700
    :sswitch_c
    const v0, 0x1040b6c

    .line 701
    goto :goto_8

    .line 703
    :sswitch_10
    const v0, 0x1040b69

    .line 704
    goto :goto_8

    .line 706
    :sswitch_14
    const v0, 0x1040b6a

    .line 707
    goto :goto_8

    .line 709
    :sswitch_18
    const v0, 0x1040b6d

    .line 710
    goto :goto_8

    .line 712
    :sswitch_1c
    const v0, 0x1040b6e

    .line 713
    goto :goto_8

    .line 715
    :sswitch_20
    const v0, 0x1040b6f

    .line 716
    goto :goto_8

    .line 718
    :sswitch_24
    const v0, 0x1040b70

    .line 719
    goto :goto_8

    .line 721
    :sswitch_28
    const v0, 0x1040b71

    .line 722
    goto :goto_8

    .line 724
    :sswitch_2c
    const v0, 0x1040b72

    .line 725
    goto :goto_8

    .line 695
    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_c
        0x4 -> :sswitch_10
        0x8 -> :sswitch_14
        0x10 -> :sswitch_18
        0x20 -> :sswitch_1c
        0x40 -> :sswitch_20
        0x80 -> :sswitch_24
        0x100 -> :sswitch_28
        0x200 -> :sswitch_2c
    .end sparse-switch
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1398
    const-string v7, "BluetoothPolicyService"

    const-string v8, "activateBluetoothDeviceRestriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1400
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1401
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1402
    .local v2, "refresh":Z
    const/4 v3, 0x0

    .line 1403
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1405
    .local v4, "token":J
    :try_start_14
    iget-object v7, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v7

    if-eq p2, v7, :cond_38

    move v2, v6

    .line 1406
    :goto_1d
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string/jumbo v9, "devicePolicyEnabled"

    invoke-virtual {v7, v0, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1408
    if-ne v3, v6, :cond_34

    if-eqz v2, :cond_34

    .line 1409
    iget-object v6, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1410
    invoke-direct {p0}, applyDevicePolicy()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_34} :catch_3a

    .line 1416
    :cond_34
    :goto_34
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1417
    return v3

    .line 1405
    :cond_38
    const/4 v2, 0x0

    goto :goto_1d

    .line 1412
    :catch_3a
    move-exception v1

    .line 1413
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public activateBluetoothUUIDRestriction(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1216
    const-string v7, "BluetoothPolicyService"

    const-string v8, "activateBluetoothUUIDRestriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v3, 0x0

    .line 1218
    .local v3, "ret":Z
    const/4 v2, 0x0

    .line 1219
    .local v2, "restartNeeded":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1220
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1221
    .local v0, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1223
    .local v4, "token":J
    :try_start_14
    iget-object v7, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v7

    if-eq p2, v7, :cond_38

    move v2, v6

    .line 1224
    :goto_1d
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string/jumbo v9, "profilePolicyEnabled"

    invoke-virtual {v7, v0, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1227
    if-ne v3, v6, :cond_34

    if-eqz v2, :cond_34

    .line 1228
    iget-object v6, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1229
    invoke-direct {p0}, restartBluetooth()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_34} :catch_3a

    .line 1235
    :cond_34
    :goto_34
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1236
    return v3

    .line 1223
    :cond_38
    const/4 v2, 0x0

    goto :goto_1d

    .line 1231
    :catch_3a
    move-exception v1

    .line 1232
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public addBluetoothDevicesToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1240
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addDevicesToBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1242
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1243
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1246
    .local v1, "ret":Z
    if-eqz p2, :cond_16

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    move v2, v1

    .line 1255
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_17
    return v2

    .line 1250
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1251
    .local v4, "token":J
    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1252
    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1253
    invoke-direct {p0}, applyDevicePolicy()V

    .line 1254
    :cond_30
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1255
    .restart local v2    # "ret":I
    goto :goto_17
.end method

.method public addBluetoothDevicesToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1312
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addDevicesToWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1314
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1315
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1318
    .local v1, "ret":Z
    if-eqz p2, :cond_16

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    move v2, v1

    .line 1327
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_17
    return v2

    .line 1322
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1323
    .local v4, "token":J
    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1324
    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1325
    invoke-direct {p0}, applyDevicePolicy()V

    .line 1326
    :cond_30
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1327
    .restart local v2    # "ret":I
    goto :goto_17
.end method

.method public addBluetoothUUIDsToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1074
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addProfilesToBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1076
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1077
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1080
    .local v1, "ret":Z
    if-eqz p2, :cond_16

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    move v2, v1

    .line 1088
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_17
    return v2

    .line 1083
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1084
    .local v4, "token":J
    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1085
    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1086
    invoke-direct {p0}, restartBluetooth()V

    .line 1087
    :cond_30
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1088
    .restart local v2    # "ret":I
    goto :goto_17
.end method

.method public addBluetoothUUIDsToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1145
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addProfilesToWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1147
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1148
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1151
    .local v1, "ret":Z
    if-eqz p2, :cond_16

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    move v2, v1

    .line 1160
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_17
    return v2

    .line 1155
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1156
    .local v4, "token":J
    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1157
    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1158
    invoke-direct {p0}, restartBluetooth()V

    .line 1159
    :cond_30
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1160
    .restart local v2    # "ret":I
    goto :goto_17
.end method

.method public allowBluetooth(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 263
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 265
    const/4 v12, 0x1

    .line 266
    .local v12, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 268
    .local v14, "token":J
    if-nez p2, :cond_1a

    .line 269
    :try_start_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 270
    .local v9, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_97

    .line 271
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 279
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_1a
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "bluetoothEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 281
    if-eqz v12, :cond_93

    .line 282
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BluetoothPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has changed allow bluetooth to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 288
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6e} :catch_a4
    .catchall {:try_start_b .. :try_end_6e} :catchall_b8

    .line 291
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_6e
    const-string v2, "Bluetooth"

    const-string v3, "allowBluetooth"

    invoke-virtual/range {p0 .. p1}, isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 292
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy allowBluetooth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_93} :catch_b3
    .catchall {:try_start_6e .. :try_end_93} :catchall_b8

    .line 302
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_93
    :goto_93
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    :goto_96
    return v12

    .line 273
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_97
    :try_start_97
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1a

    .line 275
    invoke-direct/range {p0 .. p0}, delayedBTOff()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a2} :catch_a4
    .catchall {:try_start_97 .. :try_end_a2} :catchall_b8

    goto/16 :goto_1a

    .line 298
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_a4
    move-exception v10

    .line 299
    .local v10, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 300
    :try_start_a6
    const-string v2, "BluetoothPolicyService"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_b8

    .line 302
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_96

    .line 293
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_b3
    move-exception v10

    .line 294
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_b4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_a4
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_93

    .line 302
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_b8
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowCallerIDDisplay(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1634
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1636
    :try_start_4
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "BLUETOOTH"

    const-string v4, "allowCallerID"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_11

    move-result v1

    .line 1642
    :goto_10
    return v1

    .line 1639
    :catch_11
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public allowOutgoingCalls(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 447
    const-string v3, "BluetoothPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowOutgoingCalls = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 449
    const/4 v2, 0x0

    .line 450
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 452
    .local v4, "token":J
    :try_start_21
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "BLUETOOTH"

    const-string v8, "allowOutgoingCalls"

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 454
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 455
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 457
    const/4 v3, 0x1

    iput-boolean v3, p0, mRestart:Z

    .line 458
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_43

    .line 463
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_3f
    :goto_3f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    return v2

    .line 460
    :catch_43
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method applyBlackList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1557
    .local p1, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1558
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 1559
    .local v1, "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1560
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1561
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1562
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, "*"

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1564
    :cond_2a
    iget-object v5, p0, mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_c

    .line 1567
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_34
    move-exception v3

    .line 1568
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3e
    return-void
.end method

.method public bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1040
    .local v0, "ret":Z
    invoke-virtual {p0, p1}, isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1041
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on server bluetoothLoglogConnectionChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v1, p0, mLogQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 1044
    :cond_53
    return v0
.end method

.method public clearBluetoothDevicesFromBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1278
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1280
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1281
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1282
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1283
    .local v2, "token":J
    iget-object v4, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 1284
    const/4 v4, 0x1

    if-ne v1, v4, :cond_26

    iget-object v4, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1285
    invoke-direct {p0}, applyDevicePolicy()V

    .line 1286
    :cond_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    return v1
.end method

.method public clearBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1350
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1352
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1353
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1354
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1355
    .local v2, "token":J
    iget-object v4, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 1356
    const/4 v4, 0x1

    if-ne v1, v4, :cond_26

    iget-object v4, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1357
    invoke-direct {p0}, applyDevicePolicy()V

    .line 1358
    :cond_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1359
    return v1
.end method

.method public clearBluetoothUUIDsFromBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1111
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1113
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1114
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1115
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1116
    .local v2, "token":J
    iget-object v4, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 1117
    const/4 v4, 0x1

    if-ne v1, v4, :cond_26

    iget-object v4, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1118
    invoke-direct {p0}, restartBluetooth()V

    .line 1119
    :cond_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1120
    return v1
.end method

.method public clearBluetoothUUIDsFromWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1183
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1185
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1186
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1187
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1188
    .local v2, "token":J
    iget-object v4, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 1189
    const/4 v4, 0x1

    if-ne v1, v4, :cond_26

    iget-object v4, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1190
    invoke-direct {p0}, restartBluetooth()V

    .line 1191
    :cond_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1192
    return v1
.end method

.method public getAllBluetoothDevicesBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1291
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllDevicesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1294
    .local v2, "token":J
    iget-object v1, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1296
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    return-object v0
.end method

.method public getAllBluetoothDevicesWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1379
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllDevicesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1382
    .local v2, "token":J
    iget-object v1, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1384
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1385
    return-object v0
.end method

.method public getAllBluetoothUUIDsBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllProfilesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1127
    .local v2, "token":J
    iget-object v1, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1130
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1131
    return-object v0
.end method

.method public getAllBluetoothUUIDsWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1196
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllProfilesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1199
    .local v2, "token":J
    iget-object v1, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1201
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    return-object v0
.end method

.method public getAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 376
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllowBluetoothDataTransfer - showMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x1

    .line 378
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowDataTransfer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 380
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_3d

    .line 381
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 382
    .local v2, "value":Z
    if-nez v2, :cond_2a

    .line 383
    move v1, v2

    .line 389
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_3d
    if-eqz p2, :cond_47

    if-nez v1, :cond_47

    .line 390
    const v4, 0x1040b77

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 393
    :cond_47
    return v1
.end method

.method public getBluetoothLog(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1005
    const-string v7, "BluetoothPolicyService"

    const-string/jumbo v8, "getBluetoothLog()"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1007
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    .line 1008
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "time"

    aput-object v8, v0, v7

    .line 1009
    const/4 v7, 0x1

    const-string/jumbo v8, "log"

    aput-object v8, v0, v7

    .line 1010
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v5, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BluetoothLogTable"

    invoke-virtual {v7, v8, v6, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1013
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_34

    .line 1014
    const-string v7, "BluetoothPolicyService"

    const-string/jumbo v8, "getBluetoothLog - cvList is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1032
    .end local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_33
    return-object v5

    .line 1017
    .restart local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - cvList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const/4 v1, 0x0

    .line 1019
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1021
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 1022
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1023
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "time"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1024
    .local v4, "report":Ljava/lang/String;
    if-eqz v4, :cond_52

    .line 1025
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1026
    const-string/jumbo v6, "log"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1027
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 1031
    .end local v4    # "report":Ljava/lang/String;
    :cond_95
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - reportList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public getEffectiveBluetoothDevicesBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1302
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothDevicesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1305
    .local v2, "token":J
    iget-object v1, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 1306
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    return-object v0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothDevicesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1392
    .local v2, "token":J
    iget-object v1, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 1393
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1394
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothUUIDsBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1138
    .local v2, "token":J
    iget-object v1, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 1139
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1206
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothUUIDsWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1209
    .local v2, "token":J
    iget-object v1, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 1210
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    return-object v0
.end method

.method getProfileFromUUID(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1447
    iget-object v4, p0, mProfileMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1448
    .local v3, "profileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1449
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1450
    .local v2, "profile":Ljava/lang/Integer;
    iget-object v4, p0, mProfileMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1451
    .local v0, "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 1452
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1453
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1456
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "profile":Ljava/lang/Integer;
    :goto_35
    return v4

    .line 1451
    .restart local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "profile":Ljava/lang/Integer;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1456
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "profile":Ljava/lang/Integer;
    :cond_39
    const/4 v4, -0x1

    goto :goto_35
.end method

.method public isBluetoothDeviceAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1476
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1482
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1483
    :cond_8
    const/4 v0, 0x0

    .line 1492
    :cond_9
    :goto_9
    return v0

    .line 1486
    :cond_a
    iget-object v1, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 1488
    .local v0, "ret":Z
    if-eqz p2, :cond_9

    if-nez v0, :cond_9

    .line 1489
    const v1, 0x1040b75

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_9
.end method

.method public isBluetoothDeviceRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1430
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "isBluetoothDeviceRestrictionActive"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1433
    .local v2, "token":J
    iget-object v1, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v0

    .line 1434
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1435
    return v0
.end method

.method public isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isBluetoothEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z

    .prologue
    .line 177
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isBluetoothEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    .line 180
    .local v1, "ret":Z
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 181
    const/4 v1, 0x0

    .line 195
    :cond_1c
    :goto_1c
    if-eqz p1, :cond_26

    if-nez v1, :cond_26

    .line 196
    const v4, 0x1040b68

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 199
    :cond_26
    return v1

    .line 183
    :cond_27
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 185
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1c

    .line 186
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 187
    .local v2, "value":Z
    if-nez v2, :cond_37

    .line 188
    move v1, v2

    .line 189
    goto :goto_1c
.end method

.method public isBluetoothEnabledWithMsg(Z)Z
    .registers 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 173
    invoke-virtual {p0, p1}, isBluetoothEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    .line 951
    iget-boolean v0, p0, isCacheUpdated:Z

    if-nez v0, :cond_d

    .line 952
    invoke-direct {p0, p1, v1}, getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    iput-boolean v0, p0, mCacheIsBluetoothLogEnabled:Z

    .line 953
    iput-boolean v1, p0, isCacheUpdated:Z

    .line 955
    :cond_d
    iget-boolean v0, p0, mCacheIsBluetoothLogEnabled:Z

    return v0
.end method

.method public isBluetoothUUIDAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1439
    invoke-virtual {p0, p2}, isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1443
    iget-object v0, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z
    .registers 5
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1460
    invoke-virtual {p0, p1}, getProfileFromUUID(Ljava/lang/String;)I

    move-result v0

    .line 1462
    .local v0, "profile":I
    invoke-virtual {p0, p1}, isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1463
    invoke-direct {p0, v0}, showProfileBlockedToast(I)V

    .line 1472
    :cond_e
    :goto_e
    return v1

    .line 1468
    :cond_f
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0}, isProfileEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1472
    :cond_1c
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public isBluetoothUUIDRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1421
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "isBluetoothUUIDRestrictionActive"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1424
    .local v2, "token":J
    iget-object v1, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v0

    .line 1425
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1426
    return v0
.end method

.method public isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1646
    const/4 v2, 0x1

    .line 1648
    .local v2, "ret":Z
    :try_start_1
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "allowCallerID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1651
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_23

    move-result v3

    .line 1652
    .local v3, "value":Z
    if-nez v3, :cond_f

    .line 1653
    move v2, v3

    .line 1660
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_22
    :goto_22
    return v2

    .line 1657
    :catch_23
    move-exception v0

    .line 1658
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public isDesktopConnectivityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 903
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isDesktopConnectivityEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isDesktopConnectivityEnabled(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z

    .prologue
    .line 906
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isDesktopConnectivityEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const/4 v1, 0x1

    .line 908
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "desktopConnectivityEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 911
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_2d

    .line 912
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 913
    .local v2, "value":Z
    if-nez v2, :cond_1a

    .line 914
    move v1, v2

    .line 920
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_2d
    if-eqz p1, :cond_37

    if-nez v1, :cond_37

    .line 921
    const v4, 0x1040b73

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 924
    :cond_37
    return v1
.end method

.method public isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 822
    const-string v6, "BluetoothPolicyService"

    const-string/jumbo v7, "isDiscoverableEnabled "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v3, 0x1

    .line 824
    .local v3, "ret":Z
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "discoverableModeEnabled"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 826
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_2d

    .line 827
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 828
    .local v4, "value":Z
    if-nez v4, :cond_1a

    .line 829
    move v3, v4

    .line 834
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Z
    :cond_2d
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDiscoverableEnabled ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v6, "bluetooth_secure_mode_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 838
    .local v0, "bsmp":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    if-eqz v3, :cond_63

    if-eqz v0, :cond_63

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 839
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getSecureModeConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/BluetoothSecureModeConfig;

    move-result-object v1

    .line 840
    .local v1, "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    if-eqz v1, :cond_63

    .line 841
    iget-boolean v6, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->scanMode:Z

    if-nez v6, :cond_64

    const/4 v3, 0x1

    .line 845
    .end local v1    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :cond_63
    :goto_63
    return v3

    .line 841
    .restart local v1    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :cond_64
    const/4 v3, 0x0

    goto :goto_63
.end method

.method public isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 549
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x1

    .line 551
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "limitedDiscoverableEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 554
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_2d

    .line 555
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 556
    .local v2, "value":Z
    if-nez v2, :cond_1a

    .line 557
    move v1, v2

    .line 562
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_2d
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLimitedDiscoverableEnabled ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return v1
.end method

.method public isOutgoingCallsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isOutgoingCallsAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isOutgoingCallsAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z

    .prologue
    .line 478
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x1

    .line 480
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowOutgoingCalls"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 482
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_2c

    .line 483
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 484
    .local v2, "value":Z
    if-nez v2, :cond_19

    .line 485
    move v1, v2

    .line 491
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_2c
    if-eqz p1, :cond_36

    if-nez v1, :cond_36

    .line 492
    const v4, 0x1040b76

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 495
    :cond_36
    return v1
.end method

.method public isPairingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isPairingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isPairingEnabled(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z

    .prologue
    .line 420
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x1

    .line 422
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "pairingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 424
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_2d

    .line 425
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 426
    .local v2, "value":Z
    if-nez v2, :cond_1a

    .line 427
    move v1, v2

    .line 433
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_2d
    if-eqz p1, :cond_37

    if-nez v1, :cond_37

    .line 434
    const v4, 0x1040b74

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 437
    :cond_37
    return v1
.end method

.method public isProfileEnabled(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # I

    .prologue
    .line 620
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 621
    .local v0, "adminUid":I
    invoke-direct {p0, v0, p2}, isProfileEnabled(II)Z

    move-result v1

    return v1
.end method

.method public isProfileEnabledInternal(IZ)Z
    .registers 9
    .param p1, "profile"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 735
    const/4 v3, 0x1

    .line 739
    .local v3, "lEnabled":Z
    if-gtz p1, :cond_1b

    .line 740
    :try_start_3
    new-instance v4, Ljava/security/InvalidParameterException;

    invoke-direct {v4}, Ljava/security/InvalidParameterException;-><init>()V

    throw v4
    :try_end_9
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_50

    .line 757
    :catch_9
    move-exception v1

    .line 758
    .local v1, "e":Ljava/security/InvalidParameterException;
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isProfileEnabledInternal() failed: INVALID PARAMETER INPUT"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :cond_12
    :goto_12
    if-eqz p2, :cond_19

    if-nez v3, :cond_19

    .line 764
    invoke-direct {p0, p1}, showProfileBlockedToast(I)V

    :cond_19
    move v4, v3

    .line 766
    :goto_1a
    return v4

    .line 743
    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, p1}, isProfileEnabled(II)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 744
    if-eqz p2, :cond_2a

    .line 745
    invoke-direct {p0, p1}, showProfileBlockedToast(I)V

    .line 747
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1a

    .line 750
    :cond_2c
    iget-object v4, p0, mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 751
    .local v0, "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 752
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    :try_end_48
    .catch Ljava/security/InvalidParameterException; {:try_start_1b .. :try_end_48} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_48} :catch_50

    move-result v4

    if-nez v4, :cond_4d

    .line 753
    const/4 v3, 0x0

    .line 754
    goto :goto_12

    .line 751
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 759
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :catch_50
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1498
    return-void
.end method

.method onAdminRemoved()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, isCacheUpdated:Z

    .line 205
    iget-object v0, p0, mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 207
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1500
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminRemoved - uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1502
    iget-object v0, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1505
    const/4 v0, 0x0

    iput-boolean v0, p0, isCacheUpdated:Z

    .line 1507
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1508
    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "onAdminRemoved - Clean log"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "BluetoothLogTable"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 1512
    :cond_3d
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1522
    return-void
.end method

.method public removeBluetoothDevicesFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1259
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeDevicesFromBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1261
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1262
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1265
    .local v1, "ret":Z
    if-eqz p2, :cond_17

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    move v2, v1

    .line 1274
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_18
    return v2

    .line 1269
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1270
    .local v4, "token":J
    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1271
    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1272
    invoke-direct {p0}, applyDevicePolicy()V

    .line 1273
    :cond_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1274
    .restart local v2    # "ret":I
    goto :goto_18
.end method

.method public removeBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1331
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeDevicesFromWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1333
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1334
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1337
    .local v1, "ret":Z
    if-eqz p2, :cond_17

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    move v2, v1

    .line 1346
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_18
    return v2

    .line 1341
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1342
    .local v4, "token":J
    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1343
    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    iget-object v3, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1344
    invoke-direct {p0}, applyDevicePolicy()V

    .line 1345
    :cond_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1346
    .restart local v2    # "ret":I
    goto :goto_18
.end method

.method public removeBluetoothUUIDsFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1092
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeProfilesFromBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1094
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1095
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1098
    .local v1, "ret":Z
    if-eqz p2, :cond_17

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    move v2, v1

    .line 1107
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_18
    return v2

    .line 1102
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1103
    .local v4, "token":J
    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1104
    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1105
    invoke-direct {p0}, restartBluetooth()V

    .line 1106
    :cond_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1107
    .restart local v2    # "ret":I
    goto :goto_18
.end method

.method public removeBluetoothUUIDsFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1164
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeProfilesFromWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1166
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1167
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1170
    .local v1, "ret":Z
    if-eqz p2, :cond_17

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    move v2, v1

    .line 1179
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_18
    return v2

    .line 1174
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1175
    .local v4, "token":J
    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1176
    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    iget-object v3, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1177
    invoke-direct {p0}, restartBluetooth()V

    .line 1178
    :cond_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1179
    .restart local v2    # "ret":I
    goto :goto_18
.end method

.method public setAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 359
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowBluetoothDataTransfer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, "token":J
    invoke-direct {p0}, restartBluetooth()V

    .line 363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "allowDataTransfer"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public setBluetooth(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 218
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 219
    const/4 v9, 0x1

    .line 220
    .local v9, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 222
    .local v10, "token":J
    :try_start_9
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string v3, "bluetoothEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 225
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetooth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 227
    .local v7, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz p2, :cond_74

    invoke-virtual {p0, p1}, isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 228
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 239
    :cond_3d
    :goto_3d
    if-eqz v9, :cond_70

    .line 240
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed bluetooth enabled to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_70} :catch_80
    .catchall {:try_start_9 .. :try_end_70} :catchall_9b

    .line 250
    :cond_70
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :goto_73
    return v9

    .line 231
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_74
    :try_start_74
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8f

    .line 232
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7f} :catch_80
    .catchall {:try_start_74 .. :try_end_7f} :catchall_9b

    goto :goto_3d

    .line 246
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_80
    move-exception v8

    .line 247
    .local v8, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 248
    :try_start_82
    const-string v0, "BluetoothPolicyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_9b

    .line 250
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_73

    .line 234
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_8f
    :try_start_8f
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3d

    .line 236
    invoke-direct {p0}, delayedBTOff()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9a} :catch_80
    .catchall {:try_start_8f .. :try_end_9a} :catchall_9b

    goto :goto_3d

    .line 250
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catchall_9b
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 929
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothLogEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 933
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 934
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "bluetoothLogEnabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 938
    .local v1, "ret":Z
    if-nez p2, :cond_58

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_58

    .line 939
    const-string v2, "BluetoothPolicyService"

    const-string/jumbo v3, "setBluetoothLogEnabled - Clean log"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BluetoothLogTable"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 941
    iget-object v2, p0, mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 943
    :cond_58
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothLogEnabled - return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    if-eqz v1, :cond_76

    .line 945
    const/4 v2, 0x0

    iput-boolean v2, p0, isCacheUpdated:Z

    .line 947
    :cond_76
    return v1
.end method

.method public setDesktopConnectivityState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 859
    const-string v3, "BluetoothPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDesktopConnectivityState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 861
    const/4 v2, 0x0

    .line 862
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 864
    .local v4, "token":J
    :try_start_22
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "desktopConnectivityEnabled"

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 866
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 867
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_40

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_40

    if-nez p2, :cond_40

    .line 868
    invoke-direct {p0}, disableDesktopConnectivity()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_40} :catch_44

    .line 874
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_40
    :goto_40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 875
    return v2

    .line 870
    :catch_44
    move-exception v1

    .line 871
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/4 v2, 0x0

    goto :goto_40
.end method

.method public setDiscoverableState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 781
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 782
    const/4 v9, 0x0

    .line 783
    .local v9, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 785
    .local v10, "token":J
    :try_start_9
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "discoverableModeEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 787
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDiscoverableState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    if-eqz v9, :cond_7c

    .line 789
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 790
    .local v7, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0, p1}, isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 792
    const/16 v0, 0x15

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 799
    :goto_40
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_95

    const-string/jumbo v5, "enabled"

    :goto_65
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Bluetooth discoverable state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7c} :catch_86
    .catchall {:try_start_9 .. :try_end_7c} :catchall_99

    .line 810
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_7c
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    :goto_7f
    return v9

    .line 795
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_80
    const/16 v0, 0x17

    :try_start_82
    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86
    .catchall {:try_start_82 .. :try_end_85} :catchall_99

    goto :goto_40

    .line 806
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_86
    move-exception v8

    .line 807
    .local v8, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 808
    :try_start_88
    const-string v0, "BluetoothPolicyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_99

    .line 810
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7f

    .line 799
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_95
    :try_start_95
    const-string/jumbo v5, "disabled"
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_86
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_65

    .line 810
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catchall_99
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setLimitedDiscoverableState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 505
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 506
    const/4 v11, 0x0

    .line 507
    .local v11, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 509
    .local v14, "token":J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string/jumbo v5, "limitedDiscoverableEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 511
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLimitedDiscoverableState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-eqz v11, :cond_8c

    .line 513
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 514
    .local v9, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual/range {p0 .. p1}, isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 516
    const/16 v2, 0x17

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 517
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 525
    :goto_4c
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BluetoothPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_cd

    const-string/jumbo v7, "enabled"

    :goto_73
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Bluetooth limited discoverable state."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_8c} :catch_bb
    .catchall {:try_start_9 .. :try_end_8c} :catchall_d1

    .line 536
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_8c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    :goto_8f
    return v11

    .line 519
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_90
    :try_start_90
    const-string/jumbo v2, "debug.bt.discoverable_time"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 520
    .local v12, "timeout":I
    const/16 v2, 0x15

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 521
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default discoverable_time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    if-ltz v12, :cond_ca

    .end local v12    # "timeout":I
    :goto_b7
    invoke-virtual {v9, v12}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ba} :catch_bb
    .catchall {:try_start_90 .. :try_end_ba} :catchall_d1

    goto :goto_4c

    .line 532
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_bb
    move-exception v10

    .line 533
    .local v10, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 534
    :try_start_bd
    const-string v2, "BluetoothPolicyService"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_d1

    .line 536
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8f

    .line 522
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .restart local v12    # "timeout":I
    :cond_ca
    const/16 v12, 0x78

    goto :goto_b7

    .line 525
    .end local v12    # "timeout":I
    :cond_cd
    :try_start_cd
    const-string/jumbo v7, "disabled"
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_bb
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    goto :goto_73

    .line 536
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catchall_d1
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPairingState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 403
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPairingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 405
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "pairingEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setProfileState(Landroid/app/enterprise/ContextInfo;ZI)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "profile"    # I

    .prologue
    .line 577
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, p1}, enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 579
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 580
    .local v0, "callingUid":I
    const/4 v3, 0x0

    .line 581
    .local v3, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 585
    .local v4, "token":J
    if-gtz p3, :cond_43

    .line 586
    :try_start_30
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6
    :try_end_36
    .catch Ljava/security/InvalidParameterException; {:try_start_30 .. :try_end_36} :catch_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_61

    .line 601
    :catch_36
    move-exception v1

    .line 602
    .local v1, "e":Ljava/security/InvalidParameterException;
    const-string v6, "BluetoothPolicyService"

    const-string/jumbo v7, "setProfileState() failed: INVALID PARAMETER INPUT"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :goto_3f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    return v3

    .line 592
    :cond_43
    :try_start_43
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_43 .. :try_end_4d} :catch_6c
    .catch Ljava/security/InvalidParameterException; {:try_start_43 .. :try_end_4d} :catch_36
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4d} :catch_61

    move-result v2

    .line 597
    .local v2, "lValue":I
    :goto_4e
    const/4 v6, 0x1

    if-ne v6, p2, :cond_71

    or-int/2addr v2, p3

    .line 598
    :goto_52
    :try_start_52
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 600
    invoke-direct {p0}, restartBluetooth()V
    :try_end_60
    .catch Ljava/security/InvalidParameterException; {:try_start_52 .. :try_end_60} :catch_36
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_61

    goto :goto_3f

    .line 603
    .end local v2    # "lValue":I
    :catch_61
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 593
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6c
    move-exception v1

    .line 594
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const v2, 0xffff

    .restart local v2    # "lValue":I
    goto :goto_4e

    .line 597
    .end local v1    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_71
    xor-int/lit8 v6, p3, -0x1

    and-int/2addr v2, v6

    goto :goto_52
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 1515
    iget-object v0, p0, mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1516
    iget-object v0, p0, mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1517
    return-void
.end method

.method public translateList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1363
    .local p1, "clist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ControlInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/ControlInfo;

    .line 1366
    .local v3, "obj":Landroid/app/enterprise/ControlInfo;
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    if-eqz v4, :cond_11

    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1368
    new-instance v1, Landroid/app/enterprise/BluetoothControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/BluetoothControlInfo;-><init>()V

    .line 1369
    .local v1, "info":Landroid/app/enterprise/BluetoothControlInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    .line 1370
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->adminPackageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->adminPackageName:Ljava/lang/String;

    .line 1371
    iget-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    iget-object v5, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1372
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1375
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/enterprise/BluetoothControlInfo;
    .end local v3    # "obj":Landroid/app/enterprise/ControlInfo;
    :cond_44
    return-object v2
.end method
