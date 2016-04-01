.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field final UPDATE_ALL:I

.field final UPDATE_BT:I

.field final UPDATE_CPU:I

.field final UPDATE_RADIO:I

.field final UPDATE_WIFI:I

.field mContext:Landroid/content/Context;

.field private final mExternalStatsLock:Ljava/lang/Object;

.field final mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 15
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v1, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, UPDATE_CPU:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, UPDATE_WIFI:I

    .line 84
    const/4 v0, 0x4

    iput v0, p0, UPDATE_RADIO:I

    .line 85
    const/16 v0, 0x8

    iput v0, p0, UPDATE_BT:I

    .line 86
    const/16 v0, 0xf

    iput v0, p0, UPDATE_ALL:I

    .line 1198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mExternalStatsLock:Ljava/lang/Object;

    .line 1205
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    const/4 v3, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move-wide v8, v1

    move-wide v10, v1

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v0, p0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 166
    new-instance v0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    .line 169
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    iput-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 170
    return-void
.end method

.method static synthetic access$000(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 72
    invoke-static {p0}, nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1000
    add-int/lit8 p2, p2, 0x1

    .line 1001
    array-length v0, p3

    if-lt p2, v0, :cond_28

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_25

    const-string v0, "--enable"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, p1}, dumpHelp(Ljava/io/PrintWriter;)V

    move p2, v1

    .line 1019
    .end local p2    # "i":I
    :goto_24
    return p2

    .line 1002
    .restart local p2    # "i":I
    :cond_25
    const-string v0, "--disable"

    goto :goto_15

    .line 1006
    :cond_28
    const-string/jumbo v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string/jumbo v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1007
    :cond_3e
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1008
    :try_start_41
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 1009
    monitor-exit v1

    goto :goto_24

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_48

    throw v0

    .line 1010
    :cond_4b
    const-string/jumbo v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1011
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1012
    :try_start_59
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 1013
    monitor-exit v1

    goto :goto_24

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_60

    throw v0

    .line 1015
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0, p1}, dumpHelp(Ljava/io/PrintWriter;)V

    move p2, v1

    .line 1017
    goto :goto_24
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 974
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    const-string v0, "  [--checkin] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    const-string v0, "  --c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 202
    sget-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_7

    .line 203
    sget-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    .line 207
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 205
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 206
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    .line 207
    sget-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    goto :goto_6
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1305
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1306
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4e

    .line 1307
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    .line 1309
    .local v1, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1310
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_35

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_35

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_35

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_4d

    .line 1312
    :cond_35
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth energy data is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    .end local v1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_4d
    :goto_4d
    return-object v1

    :cond_4e
    const/4 v1, 0x0

    goto :goto_4d
.end method

.method private pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    .prologue
    .line 1210
    move-object/from16 v0, p0

    iget-object v15, v0, mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v15, :cond_1d

    .line 1211
    const-string/jumbo v15, "wifi"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 1213
    move-object/from16 v0, p0

    iget-object v15, v0, mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v15, :cond_1d

    .line 1214
    const/4 v5, 0x0

    .line 1300
    :goto_1c
    return-object v5

    .line 1221
    :cond_1d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v15, v0, mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    .line 1222
    .local v4, "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    if-eqz v4, :cond_1ea

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v15

    if-eqz v15, :cond_1ea

    .line 1223
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_55

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_55

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_55

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-gez v15, :cond_73

    .line 1225
    :cond_55
    const-string v15, "BatteryStatsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reported WiFi energy data is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v5, 0x0

    goto :goto_1c

    .line 1229
    :cond_73
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v15, v0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v0, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v22, v0

    sub-long v16, v20, v22

    .line 1230
    .local v16, "timePeriodMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v8, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1231
    .local v8, "lastIdleMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v12, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1232
    .local v12, "lastTxMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v10, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1233
    .local v10, "lastRxMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v6, v15, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1237
    .local v6, "lastEnergy":J
    move-object/from16 v0, p0

    iget-object v5, v0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1238
    .local v5, "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 1239
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v15

    iput v15, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 1242
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1243
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v10

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1249
    const-wide/16 v20, 0x0

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v8

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1250
    const-wide/16 v20, 0x0

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1253
    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-ltz v15, :cond_f3

    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-gez v15, :cond_12f

    .line 1257
    :cond_f3
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1258
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1259
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1260
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1262
    const-string v15, "BatteryStatsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_12f
    const-wide/16 v2, 0x2ee

    .line 1267
    .local v2, "SAMPLE_ERROR_MILLIS":J
    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    iget-wide v0, v5, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v22, v0

    add-long v18, v20, v22

    .line 1269
    .local v18, "totalTimeMs":J
    const-wide/16 v20, 0x2ee

    add-long v20, v20, v16

    cmp-long v15, v18, v20

    if-lez v15, :cond_1e3

    .line 1270
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v15, "Total time "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1273
    const-string v15, " is longer than sample period "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1275
    const-string v15, ".\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    const-string v15, "Previous WiFi snapshot: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v20, "idle="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-static {v8, v9, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1278
    const-string v15, " rx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-static {v10, v11, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1280
    const-string v15, " tx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-static {v12, v13, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1282
    const-string v15, " e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1283
    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    const-string v15, "Current WiFi snapshot: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v20, "idle="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1286
    const-string v15, " rx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1288
    const-string v15, " tx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1290
    const-string v15, " e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1291
    const-string v15, "BatteryStatsService"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_1e3
    move-object/from16 v0, p0

    iput-object v4, v0, mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    :try_end_1e7
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1e7} :catch_1e9

    goto/16 :goto_1c

    .line 1297
    .end local v2    # "SAMPLE_ERROR_MILLIS":J
    .end local v4    # "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v5    # "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v6    # "lastEnergy":J
    .end local v8    # "lastIdleMs":J
    .end local v10    # "lastRxMs":J
    .end local v12    # "lastTxMs":J
    .end local v16    # "timePeriodMs":J
    .end local v18    # "totalTimeMs":J
    :catch_1e9
    move-exception v15

    .line 1300
    :cond_1ea
    const/4 v5, 0x0

    goto/16 :goto_1c
.end method


# virtual methods
.method addIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 246
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 247
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 248
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public computeBatteryTimeRemaining()J
    .registers 7

    .prologue
    .line 331
    iget-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 332
    :try_start_3
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    .line 333
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_16

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .end local v0    # "time":J
    :cond_16
    monitor-exit v3

    return-wide v0

    .line 334
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public computeChargeTimeRemaining()J
    .registers 7

    .prologue
    .line 338
    iget-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 339
    :try_start_3
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    .line 340
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_16

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .end local v0    # "time":J
    :cond_16
    monitor-exit v3

    return-wide v0

    .line 341
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1025
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    .line 1027
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump BatteryStats from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    :cond_42
    :goto_42
    return-void

    .line 1033
    :cond_43
    const/4 v9, 0x0

    .line 1034
    .local v9, "flags":I
    const/16 v27, 0x0

    .line 1035
    .local v27, "useCheckinFormat":Z
    const/16 v24, 0x0

    .line 1036
    .local v24, "isRealCheckin":Z
    const/16 v25, 0x0

    .line 1037
    .local v25, "noOutput":Z
    const/16 v28, 0x0

    .line 1038
    .local v28, "writeData":Z
    const-wide/16 v10, -0x1

    .line 1039
    .local v10, "historyStart":J
    const/16 v17, -0x1

    .line 1040
    .local v17, "reqUid":I
    if-eqz p3, :cond_25e

    .line 1041
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_54
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v20

    if-ge v0, v6, :cond_25e

    .line 1042
    aget-object v4, p3, v20

    .line 1043
    .local v4, "arg":Ljava/lang/String;
    const-string v6, "--checkin"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 1044
    const/16 v27, 0x1

    .line 1045
    const/16 v24, 0x1

    .line 1041
    :goto_69
    add-int/lit8 v20, v20, 0x1

    goto :goto_54

    .line 1046
    :cond_6c
    const-string v6, "--history"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1047
    or-int/lit8 v9, v9, 0x8

    goto :goto_69

    .line 1048
    :cond_77
    const-string v6, "--history-start"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 1049
    or-int/lit8 v9, v9, 0x8

    .line 1050
    add-int/lit8 v20, v20, 0x1

    .line 1051
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v20

    if-lt v0, v6, :cond_99

    .line 1052
    const-string v6, "Missing time argument for --history-since"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_42

    .line 1056
    :cond_99
    aget-object v6, p3, v20

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1057
    const/16 v28, 0x1

    goto :goto_69

    .line 1058
    :cond_a2
    const-string v6, "-c"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 1059
    const/16 v27, 0x1

    .line 1060
    or-int/lit8 v9, v9, 0x10

    goto :goto_69

    .line 1061
    :cond_af
    const-string v6, "--charged"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 1062
    or-int/lit8 v9, v9, 0x2

    goto :goto_69

    .line 1063
    :cond_ba
    const-string v6, "--daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 1064
    or-int/lit8 v9, v9, 0x4

    goto :goto_69

    .line 1065
    :cond_c5
    const-string v6, "--reset"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 1066
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1067
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1068
    const-string v6, "Battery stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const/16 v25, 0x1

    .line 1070
    monitor-exit v7
    :try_end_e3
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_ef

    .line 1071
    const-string/jumbo v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, updateExternalStats(Ljava/lang/String;I)V

    goto/16 :goto_69

    .line 1070
    :catchall_ef
    move-exception v6

    :try_start_f0
    monitor-exit v7
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v6

    .line 1072
    :cond_f2
    const-string v6, "--write"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 1073
    const-string/jumbo v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, updateExternalStats(Ljava/lang/String;I)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1075
    :try_start_109
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1076
    const-string v6, "Battery stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    const/16 v25, 0x1

    .line 1078
    monitor-exit v7

    goto/16 :goto_69

    :catchall_11c
    move-exception v6

    monitor-exit v7
    :try_end_11e
    .catchall {:try_start_109 .. :try_end_11e} :catchall_11c

    throw v6

    .line 1079
    :cond_11f
    const-string v6, "--new-daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_142

    .line 1080
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1081
    :try_start_12c
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1082
    const-string v6, "New daily stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    const/16 v25, 0x1

    .line 1084
    monitor-exit v7

    goto/16 :goto_69

    :catchall_13f
    move-exception v6

    monitor-exit v7
    :try_end_141
    .catchall {:try_start_12c .. :try_end_141} :catchall_13f

    throw v6

    .line 1085
    :cond_142
    const-string v6, "--read-daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_165

    .line 1086
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1087
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1088
    const-string v6, "Last daily stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    const/16 v25, 0x1

    .line 1090
    monitor-exit v7

    goto/16 :goto_69

    :catchall_162
    move-exception v6

    monitor-exit v7
    :try_end_164
    .catchall {:try_start_14f .. :try_end_164} :catchall_162

    throw v6

    .line 1091
    :cond_165
    const-string v6, "--enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_176

    const-string/jumbo v6, "enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a1

    .line 1092
    :cond_176
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v20

    .line 1093
    if-ltz v20, :cond_42

    .line 1096
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 1098
    :cond_1a1
    const-string v6, "--disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b2

    const-string/jumbo v6, "disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1dd

    .line 1099
    :cond_1b2
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v20

    .line 1100
    if-ltz v20, :cond_42

    .line 1103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 1105
    :cond_1dd
    const-string v6, "-h"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ee

    .line 1106
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_42

    .line 1108
    :cond_1ee
    const-string v6, "-a"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fa

    .line 1109
    or-int/lit8 v9, v9, 0x20

    goto/16 :goto_69

    .line 1110
    :cond_1fa
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_22a

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_22a

    .line 1111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_42

    .line 1117
    :cond_22a
    :try_start_22a
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_239
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22a .. :try_end_239} :catch_23c

    move-result v17

    goto/16 :goto_69

    .line 1119
    :catch_23c
    move-exception v12

    .line 1120
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_42

    .line 1127
    .end local v4    # "arg":Ljava/lang/String;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v20    # "i":I
    :cond_25e
    if-nez v25, :cond_42

    .line 1131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1133
    .local v22, "ident":J
    :try_start_264
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_270

    .line 1134
    or-int/lit8 v9, v9, 0x40

    .line 1137
    :cond_270
    const-string/jumbo v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, updateExternalStats(Ljava/lang/String;I)V
    :try_end_27a
    .catchall {:try_start_264 .. :try_end_27a} :catchall_2f9

    .line 1139
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1142
    if-ltz v17, :cond_287

    .line 1145
    and-int/lit8 v6, v9, 0xa

    if-nez v6, :cond_287

    .line 1146
    or-int/lit8 v9, v9, 0x2

    .line 1148
    and-int/lit8 v9, v9, -0x11

    .line 1152
    :cond_287
    if-eqz v27, :cond_34a

    .line 1153
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 1154
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v24, :cond_323

    .line 1157
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v13, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v13

    .line 1158
    :try_start_29f
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->exists()Z
    :try_end_2a8
    .catchall {:try_start_29f .. :try_end_2a8} :catchall_2f6

    move-result v6

    if-eqz v6, :cond_322

    .line 1160
    :try_start_2ab
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v26

    .line 1161
    .local v26, "raw":[B
    if-eqz v26, :cond_322

    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v21

    .line 1163
    .local v21, "in":Landroid/os/Parcel;
    const/4 v6, 0x0

    move-object/from16 v0, v26

    array-length v7, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1164
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1165
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v14, 0x0

    invoke-direct {v5, v6, v7, v14}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 1167
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1168
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    .line 1169
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_2f3
    .catch Ljava/io/IOException; {:try_start_2ab .. :try_end_2f3} :catch_2fe
    .catch Landroid/os/ParcelFormatException; {:try_start_2ab .. :try_end_2f3} :catch_36f
    .catchall {:try_start_2ab .. :try_end_2f3} :catchall_2f6

    .line 1172
    :try_start_2f3
    monitor-exit v13

    goto/16 :goto_42

    .line 1179
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v21    # "in":Landroid/os/Parcel;
    .end local v26    # "raw":[B
    :catchall_2f6
    move-exception v6

    monitor-exit v13
    :try_end_2f8
    .catchall {:try_start_2f3 .. :try_end_2f8} :catchall_2f6

    throw v6

    .line 1139
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_2f9
    move-exception v6

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1174
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_2fe
    move-exception v6

    move-object v12, v6

    .line 1175
    .local v12, "e":Ljava/lang/Exception;
    :goto_300
    :try_start_300
    const-string v6, "BatteryStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure reading checkin file "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v14}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_322
    monitor-exit v13
    :try_end_323
    .catchall {:try_start_300 .. :try_end_323} :catchall_2f6

    .line 1181
    :cond_323
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1182
    :try_start_328
    move-object/from16 v0, p0

    iget-object v13, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1183
    .end local v17    # "reqUid":I
    if-eqz v28, :cond_344

    .line 1184
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1186
    :cond_344
    monitor-exit v7

    goto/16 :goto_42

    :catchall_347
    move-exception v6

    monitor-exit v7
    :try_end_349
    .catchall {:try_start_328 .. :try_end_349} :catchall_347

    throw v6

    .line 1188
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :cond_34a
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1189
    :try_start_34f
    move-object/from16 v0, p0

    iget-object v13, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move/from16 v16, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1190
    if-eqz v28, :cond_369

    .line 1191
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1193
    :cond_369
    monitor-exit v7

    goto/16 :goto_42

    :catchall_36c
    move-exception v6

    monitor-exit v7
    :try_end_36e
    .catchall {:try_start_34f .. :try_end_36e} :catchall_36c

    throw v6

    .line 1174
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_36f
    move-exception v6

    move-object v12, v6

    goto :goto_300
.end method

.method public enforceCallingPermission()V
    .registers 6

    .prologue
    .line 905
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 910
    :goto_a
    return-void

    .line 908
    :cond_b
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .prologue
    .line 893
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .prologue
    .line 899
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatistics()[B
    .registers 6

    .prologue
    .line 290
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    .local v1, "out":Landroid/os/Parcel;
    const-string/jumbo v2, "get-stats"

    const/16 v3, 0xf

    invoke-virtual {p0, v2, v3}, updateExternalStats(Ljava/lang/String;I)V

    .line 296
    iget-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 297
    :try_start_17
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_26

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 300
    .local v0, "data":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    return-object v0

    .line 298
    .end local v0    # "data":[B
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BATTERY_STATS"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 310
    .local v2, "out":Landroid/os/Parcel;
    const-string/jumbo v4, "get-stats"

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5}, updateExternalStats(Ljava/lang/String;I)V

    .line 311
    iget-object v4, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 312
    :try_start_17
    iget-object v5, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 313
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2c

    .line 314
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 315
    .local v0, "data":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 317
    :try_start_25
    const-string v4, "battery-stats"

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_2f

    move-result-object v3

    .line 320
    :goto_2b
    return-object v3

    .line 313
    .end local v0    # "data":[B
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v3

    .line 318
    .restart local v0    # "data":[B
    :catch_2f
    move-exception v1

    .line 319
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public initPowerManagement()V
    .registers 3

    .prologue
    .line 186
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 187
    iget-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 188
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V

    .line 189
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 190
    return-void
.end method

.method public isCharging()Z
    .registers 3

    .prologue
    .line 325
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 326
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 327
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isOnBattery()Z
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 387
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 388
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 389
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;I)V

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteAlarmStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 381
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 382
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;I)V

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 25
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 422
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 423
    iget-object v12, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 424
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 426
    monitor-exit v12

    .line 427
    return-void

    .line 426
    :catchall_21
    move-exception v0

    monitor-exit v12
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 516
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 517
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V

    .line 518
    monitor-exit v1

    .line 519
    return-void

    .line 518
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteDeviceIdleMode(ZLjava/lang/String;I)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .prologue
    .line 838
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 839
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 840
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ZLjava/lang/String;I)V

    .line 841
    monitor-exit v1

    .line 842
    return-void

    .line 841
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 345
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 346
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 347
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFlashlightOff(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 628
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 629
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 630
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V

    .line 631
    monitor-exit v1

    .line 632
    return-void

    .line 631
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFlashlightOn(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 621
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 622
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 623
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V

    .line 624
    monitor-exit v1

    .line 625
    return-void

    .line 624
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 722
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 723
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 724
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 725
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 764
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 765
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 766
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 767
    monitor-exit v1

    .line 768
    return-void

    .line 767
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 729
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 730
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 731
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 732
    monitor-exit v1

    .line 733
    return-void

    .line 732
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 771
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 772
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 773
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 774
    monitor-exit v1

    .line 775
    return-void

    .line 774
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteInteractive(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .prologue
    .line 508
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 509
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 510
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 511
    monitor-exit v1

    .line 512
    return-void

    .line 511
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteJobFinish(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 373
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 374
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 375
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;I)V

    .line 376
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 366
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 367
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 368
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 369
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteMobileRadioPowerState(IJ)V
    .registers 6
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 522
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 523
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 524
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerState(IJ)V

    .line 525
    monitor-exit v1

    .line 526
    return-void

    .line 525
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 822
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 823
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 824
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 825
    monitor-exit v1

    .line 826
    return-void

    .line 825
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteNetworkStatsEnabled()V
    .registers 3

    .prologue
    .line 830
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 831
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 832
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkStatsEnabledLocked()V

    .line 833
    monitor-exit v1

    .line 834
    return-void

    .line 833
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePackageInstalled(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 845
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 846
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 847
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;I)V

    .line 848
    monitor-exit v1

    .line 849
    return-void

    .line 848
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 852
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 853
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 854
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V

    .line 855
    monitor-exit v1

    .line 856
    return-void

    .line 855
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneDataConnectionState(IZ)V
    .registers 5
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 550
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 551
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 552
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 553
    monitor-exit v1

    .line 554
    return-void

    .line 553
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneOff()V
    .registers 3

    .prologue
    .line 536
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 537
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 538
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 539
    monitor-exit v1

    .line 540
    return-void

    .line 539
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneOn()V
    .registers 3

    .prologue
    .line 529
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 530
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 531
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 532
    monitor-exit v1

    .line 533
    return-void

    .line 532
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 543
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 544
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 545
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 546
    monitor-exit v1

    .line 547
    return-void

    .line 546
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 557
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 558
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 559
    .local v0, "simState":I
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 560
    :try_start_e
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 561
    monitor-exit v2

    .line 562
    return-void

    .line 561
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 270
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 271
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 264
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 265
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 282
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 283
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 284
    monitor-exit v1

    .line 285
    return-void

    .line 284
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 258
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 259
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method noteProcessState(Ljava/lang/String;II)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 276
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 277
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStateLocked(Ljava/lang/String;II)V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public noteResetAudio()V
    .registers 3

    .prologue
    .line 607
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 608
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 609
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 610
    monitor-exit v1

    .line 611
    return-void

    .line 610
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteResetCamera()V
    .registers 3

    .prologue
    .line 649
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 650
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 651
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V

    .line 652
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteResetFlashlight()V
    .registers 3

    .prologue
    .line 656
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 657
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 658
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V

    .line 659
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteResetVideo()V
    .registers 3

    .prologue
    .line 614
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 615
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 616
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 617
    monitor-exit v1

    .line 618
    return-void

    .line 617
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteScreenBrightness(I)V
    .registers 4
    .param p1, "brightness"    # I

    .prologue
    .line 487
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 488
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 489
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 490
    monitor-exit v1

    .line 491
    return-void

    .line 490
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteScreenState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 480
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 481
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 482
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 483
    monitor-exit v1

    .line 484
    return-void

    .line 483
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartAudio(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 579
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 580
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 581
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 582
    monitor-exit v1

    .line 583
    return-void

    .line 582
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartCamera(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 635
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 636
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 637
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V

    .line 638
    monitor-exit v1

    .line 639
    return-void

    .line 638
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartGps(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 466
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 467
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 468
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGpsLocked(I)V

    .line 469
    monitor-exit v1

    .line 470
    return-void

    .line 469
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartSensor(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 438
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 439
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 440
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 441
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartVideo(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 593
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 594
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 595
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 596
    monitor-exit v1

    .line 597
    return-void

    .line 596
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 20
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 395
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 396
    iget-object v12, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 397
    :try_start_6
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 399
    monitor-exit v12

    .line 400
    return-void

    .line 399
    :catchall_1f
    move-exception v0

    monitor-exit v12
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 15
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 412
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 413
    iget-object v7, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 414
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 416
    monitor-exit v7

    .line 417
    return-void

    .line 416
    :catchall_13
    move-exception v0

    monitor-exit v7
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public noteStopAudio(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 586
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 587
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 588
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 589
    monitor-exit v1

    .line 590
    return-void

    .line 589
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopCamera(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 642
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 643
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 644
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V

    .line 645
    monitor-exit v1

    .line 646
    return-void

    .line 645
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopGps(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 473
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 474
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 475
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGpsLocked(I)V

    .line 476
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopSensor(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 445
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 446
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 447
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 448
    monitor-exit v1

    .line 449
    return-void

    .line 448
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopVideo(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 600
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 601
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 602
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 603
    monitor-exit v1

    .line 604
    return-void

    .line 603
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 404
    iget-object v10, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v10

    .line 405
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 407
    monitor-exit v10

    .line 408
    return-void

    .line 407
    :catchall_1b
    move-exception v0

    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 431
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 432
    iget-object v6, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 433
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 434
    monitor-exit v6

    .line 435
    return-void

    .line 434
    :catchall_12
    move-exception v0

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 359
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 360
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 361
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 362
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 352
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 353
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 354
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteUserActivity(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 494
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 495
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 496
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 497
    monitor-exit v1

    .line 498
    return-void

    .line 497
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteVibratorOff(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 459
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 460
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 461
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 462
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteVibratorOn(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 452
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 453
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 454
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 455
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 502
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 503
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V

    .line 504
    monitor-exit v1

    .line 505
    return-void

    .line 504
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 792
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 793
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 794
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 795
    monitor-exit v1

    .line 796
    return-void

    .line 795
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 799
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 800
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 801
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 802
    monitor-exit v1

    .line 803
    return-void

    .line 802
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 757
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 758
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 759
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 760
    monitor-exit v1

    .line 761
    return-void

    .line 760
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 814
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 815
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 816
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 817
    monitor-exit v1

    .line 818
    return-void

    .line 817
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 750
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 751
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 752
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 753
    monitor-exit v1

    .line 754
    return-void

    .line 753
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 806
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 807
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 808
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 809
    monitor-exit v1

    .line 810
    return-void

    .line 809
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiOff()V
    .registers 3

    .prologue
    .line 572
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 573
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 574
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 575
    monitor-exit v1

    .line 576
    return-void

    .line 575
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiOn()V
    .registers 3

    .prologue
    .line 565
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 566
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 567
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 568
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiRadioPowerState(IJ)V
    .registers 10
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J

    .prologue
    .line 664
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 668
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 669
    :try_start_6
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 670
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-eq p1, v1, :cond_16

    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-ne p1, v1, :cond_38

    :cond_16
    const-string v0, "active"

    .line 673
    .local v0, "type":Ljava/lang/String;
    :goto_18
    iget-object v1, p0, mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi-data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleWifiSync(Ljava/lang/String;)V

    .line 675
    .end local v0    # "type":Ljava/lang/String;
    :cond_31
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJ)V

    .line 676
    monitor-exit v2

    .line 677
    return-void

    .line 670
    :cond_38
    const-string/jumbo v0, "inactive"

    goto :goto_18

    .line 676
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .registers 4
    .param p1, "newRssi"    # I

    .prologue
    .line 715
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 716
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 717
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 718
    monitor-exit v1

    .line 719
    return-void

    .line 718
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 680
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 681
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 682
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 683
    monitor-exit v1

    .line 684
    return-void

    .line 683
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 687
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 688
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 689
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 690
    monitor-exit v1

    .line 691
    return-void

    .line 690
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStarted(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 736
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 737
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 738
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 739
    monitor-exit v1

    .line 740
    return-void

    .line 739
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 778
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 779
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 780
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 781
    monitor-exit v1

    .line 782
    return-void

    .line 781
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStopped(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 743
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 744
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 745
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 746
    monitor-exit v1

    .line 747
    return-void

    .line 746
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 785
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 786
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 787
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 788
    monitor-exit v1

    .line 789
    return-void

    .line 788
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 5
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 702
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 703
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 704
    monitor-exit v1

    .line 705
    return-void

    .line 704
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 694
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 695
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 696
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 697
    monitor-exit v1

    .line 698
    return-void

    .line 697
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 5
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 708
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 709
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 710
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 711
    monitor-exit v1

    .line 712
    return-void

    .line 711
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onLowPowerModeChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 213
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 174
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    .line 177
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfile(Lcom/android/internal/os/PowerProfile;)V

    .line 178
    const-string v0, "batterystats"

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 179
    return-void
.end method

.method removeIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 252
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 253
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method removeUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 240
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 241
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public scheduleWriteToDisk()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method

.method public setBatteryState(IIIIII)V
    .registers 16
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 865
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 869
    iget-object v8, p0, mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    move-object v1, p0

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIII)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->post(Ljava/lang/Runnable;)Z

    .line 890
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 193
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, updateExternalStats(Ljava/lang/String;I)V

    .line 196
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 197
    :try_start_12
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 198
    monitor-exit v1

    .line 199
    return-void

    .line 198
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method updateExternalStats(Ljava/lang/String;I)V
    .registers 15
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    .prologue
    .line 1333
    iget-object v10, p0, mExternalStatsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1334
    :try_start_3
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 1337
    monitor-exit v10

    .line 1382
    :goto_8
    return-void

    .line 1344
    :cond_9
    const/4 v9, 0x0

    .line 1345
    .local v9, "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_12

    .line 1346
    invoke-direct {p0}, pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v9

    .line 1349
    :cond_12
    const/4 v0, 0x0

    .line 1350
    .local v0, "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_1b

    .line 1353
    invoke-direct {p0}, pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1356
    :cond_1b
    iget-object v11, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v11
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_61

    .line 1357
    :try_start_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1358
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1359
    .local v4, "uptime":J
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v1, :cond_35

    .line 1360
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v6, 0xe

    const/4 v8, 0x0

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 1364
    :cond_35
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_43

    .line 1365
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    .line 1366
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 1369
    :cond_43
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4c

    .line 1370
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    .line 1373
    :cond_4c
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_55

    .line 1374
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1377
    :cond_55
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_5e

    .line 1378
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1380
    :cond_5e
    monitor-exit v11
    :try_end_5f
    .catchall {:try_start_1e .. :try_end_5f} :catchall_64

    .line 1381
    :try_start_5f
    monitor-exit v10

    goto :goto_8

    .end local v0    # "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    .end local v9    # "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_61
    move-exception v1

    monitor-exit v10
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_61

    throw v1

    .line 1380
    .restart local v0    # "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v9    # "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v11
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_61
.end method
