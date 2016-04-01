.class public Lcom/sec/rll/ExtControlDeviceService;
.super Lcom/sec/rll/IExtControlDeviceService$Stub;
.source "ExtControlDeviceService.java"


# static fields
.field private static final ACTION_NFC_POLICY_CHANGED:Ljava/lang/String; = "android.action.nfc.policychanged"

.field private static final DEVICE_GPS:I = 0x1001

.field private static final DEVICE_NFC:I = 0x2001

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final STATUS_DISABLED:I = 0x0

.field private static final STATUS_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SRIB-ExtControlDeviceService"

.field private static mContext:Landroid/content/Context;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mUid:I

.field private static sService:Lcom/sec/rll/ExtControlDeviceService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/rll/IExtControlDeviceService$Stub;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/rll/ExtControlDeviceService;
    .registers 2

    .prologue
    .line 42
    const-class v1, Lcom/sec/rll/ExtControlDeviceService;

    monitor-enter v1

    :try_start_3
    sget-object v0, sService:Lcom/sec/rll/ExtControlDeviceService;

    if-nez v0, :cond_e

    .line 43
    new-instance v0, Lcom/sec/rll/ExtControlDeviceService;

    invoke-direct {v0}, <init>()V

    sput-object v0, sService:Lcom/sec/rll/ExtControlDeviceService;

    .line 45
    :cond_e
    sget-object v0, sService:Lcom/sec/rll/ExtControlDeviceService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNfcState()I
    .registers 2

    .prologue
    .line 115
    const-string/jumbo v0, "persist.security.nfc.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sput-object p0, mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, mUid:I

    .line 38
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    return-void
.end method

.method private isAccessPermitted()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 129
    .local v1, "callerUid":I
    sget v7, mUid:I

    if-ne v1, v7, :cond_22

    .line 130
    const-string v7, "SRIB-ExtControlDeviceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UID matches - access granted to uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_21
    return v6

    .line 135
    :cond_22
    sget-object v7, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "packages":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2b
    if-ge v2, v3, :cond_4a

    aget-object v5, v0, v2

    .line 140
    .local v5, "pkg":Ljava/lang/String;
    const-string v7, "com.example.testrll"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3f

    const-string v7, "com.kddi.extcontroldevice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 142
    :cond_3f
    const-string v7, "SRIB-ExtControlDeviceService"

    const-string v8, "Allowing RLL access"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 137
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 147
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_4a
    const-string v6, "SRIB-ExtControlDeviceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Access denied to UID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v6, 0x0

    goto :goto_21
.end method

.method private static setLocationMode(I)Z
    .registers 3
    .param p0, "mode"    # I

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 121
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static setNfcState(I)V
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 107
    const-string/jumbo v1, "persist.security.nfc.lockout"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.action.nfc.policychanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "nfcIntent":Landroid/content/Intent;
    const-string v1, "NfcState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getStatus(I)I
    .registers 9
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    const-string v3, "SRIB-ExtControlDeviceService"

    const-string/jumbo v4, "getStatus called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_12

    .line 157
    const/4 v1, -0x1

    .line 183
    :cond_11
    :goto_11
    return v1

    .line 160
    :cond_12
    const/16 v3, 0x1001

    if-ne p1, v3, :cond_53

    .line 162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 163
    const-string v3, "SRIB-ExtControlDeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get gps state called return value  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "currentMode":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_51

    if-ne v0, v2, :cond_11

    :cond_51
    move v1, v2

    .line 172
    goto :goto_11

    .line 176
    .end local v0    # "currentMode":I
    :cond_53
    const/16 v2, 0x2001

    if-ne p1, v2, :cond_11

    .line 178
    const-string v1, "SRIB-ExtControlDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get nfc/felica state called return value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, getNfcState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, getNfcState()I

    move-result v1

    goto :goto_11
.end method

.method public setStatus(II)V
    .registers 9
    .param p1, "deviceType"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 51
    const-string v2, "SRIB-ExtControlDeviceService"

    const-string/jumbo v3, "setStatus called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_10

    .line 103
    :cond_f
    :goto_f
    return-void

    .line 57
    :cond_10
    const/16 v2, 0x1001

    if-ne p1, v2, :cond_66

    .line 59
    const-string v2, "SRIB-ExtControlDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set gps state called with state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "currentMode":I
    const/4 v1, 0x3

    .line 64
    .local v1, "mode":I
    packed-switch v0, :pswitch_data_86

    .line 95
    :goto_41
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    .line 66
    :pswitch_4e
    if-ne p2, v5, :cond_52

    .line 67
    const/4 v1, 0x3

    goto :goto_41

    .line 69
    :cond_52
    const/4 v1, 0x2

    .line 71
    goto :goto_41

    .line 73
    :pswitch_54
    if-ne p2, v5, :cond_58

    .line 74
    const/4 v1, 0x3

    goto :goto_41

    .line 76
    :cond_58
    const/4 v1, 0x2

    .line 78
    goto :goto_41

    .line 80
    :pswitch_5a
    if-ne p2, v5, :cond_5e

    .line 81
    const/4 v1, 0x1

    goto :goto_41

    .line 83
    :cond_5e
    const/4 v1, 0x0

    .line 85
    goto :goto_41

    .line 87
    :pswitch_60
    if-ne p2, v5, :cond_64

    .line 88
    const/4 v1, 0x1

    goto :goto_41

    .line 90
    :cond_64
    const/4 v1, 0x0

    goto :goto_41

    .line 97
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :cond_66
    const/16 v2, 0x2001

    if-ne p1, v2, :cond_f

    .line 99
    const-string v2, "SRIB-ExtControlDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set NFC/Felica state called with state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p2}, setNfcState(I)V

    goto :goto_f

    .line 64
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
    .end packed-switch
.end method
