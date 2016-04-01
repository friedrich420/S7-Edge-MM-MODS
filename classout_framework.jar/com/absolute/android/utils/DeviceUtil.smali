.class public Lcom/absolute/android/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "APS"

.field private static final b:Z = false

.field private static final c:Ljava/lang/String; = "000000000000000"

.field private static final d:Ljava/lang/String; = "Android"

.field private static final e:Ljava/lang/Object;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/Class;

.field private static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, e:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    sput-object v0, f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x6

    const/16 v5, 0x20

    .line 65
    sget-object v3, e:Ljava/lang/Object;

    monitor-enter v3

    .line 67
    :try_start_8
    sget-object v0, f:Ljava/lang/String;

    if-nez v0, :cond_7e

    .line 69
    invoke-static {}, getManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_c7

    .line 72
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 75
    :goto_1d
    invoke-static {}, getModel()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_c4

    .line 78
    const/4 v1, 0x0

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 82
    :goto_2f
    const-string v0, "1"

    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 83
    invoke-static {p0}, getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-nez v0, :cond_4c

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_59

    .line 88
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "~"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, f:Ljava/lang/String;

    .line 102
    :cond_7e
    :goto_7e
    sget-object v0, f:Ljava/lang/String;

    if-nez v0, :cond_86

    .line 104
    const-string v0, "000000000000000"

    sput-object v0, f:Ljava/lang/String;

    .line 111
    :cond_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_8 .. :try_end_87} :catchall_c1

    .line 113
    sget-object v0, f:Ljava/lang/String;

    return-object v0

    .line 93
    :cond_8a
    :try_start_8a
    invoke-static {}, getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_9b

    .line 96
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_9b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "~"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, f:Ljava/lang/String;
    :try_end_c0
    .catchall {:try_start_8a .. :try_end_c0} :catchall_c1

    goto :goto_7e

    .line 111
    :catchall_c1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_c4
    move-object v1, v0

    goto/16 :goto_2f

    :cond_c7
    move-object v2, v0

    goto/16 :goto_1d
.end method

.method public static getHardwareName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 217
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareRevision()Ljava/lang/String;
    .registers 1

    .prologue
    .line 227
    const-string/jumbo v0, "ro.revision"

    invoke-static {v0}, getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 157
    :try_start_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 158
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    .line 169
    :goto_12
    return-object v0

    .line 159
    :catch_13
    move-exception v0

    .line 160
    const-string v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMacAddress: exception caught getting wifi MAC address. Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_12
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 181
    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 193
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 246
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlatform()Ljava/lang/String;
    .registers 1

    .prologue
    .line 237
    const-string v0, "Android"

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 205
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0}, getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 258
    const-string v1, ""

    .line 259
    sget-object v2, e:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_5
    sget-object v0, h:Ljava/lang/reflect/Method;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_4f

    if-nez v0, :cond_1f

    .line 262
    :try_start_9
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 263
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, h:Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_35
    .catchall {:try_start_9 .. :try_end_1f} :catchall_4f

    .line 270
    :cond_1f
    :goto_1f
    :try_start_1f
    sget-object v0, h:Ljava/lang/reflect/Method;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_4f

    if-eqz v0, :cond_75

    .line 272
    :try_start_23
    sget-object v0, h:Ljava/lang/reflect/Method;

    sget-object v3, g:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_52
    .catchall {:try_start_23 .. :try_end_33} :catchall_4f

    .line 279
    :goto_33
    :try_start_33
    monitor-exit v2

    .line 280
    return-object v0

    .line 265
    :catch_35
    move-exception v0

    .line 266
    const-string v3, "APS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSystemProperty: exception getting android.os.SystemProperties.get() method. Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4f

    goto :goto_1f

    .line 279
    :catchall_4f
    move-exception v0

    monitor-exit v2

    throw v0

    .line 274
    :catch_52
    move-exception v0

    .line 275
    :try_start_53
    const-string v3, "APS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSystemProperty: exception getting invoking android.os.SystemProperties.get() method for propertyName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_4f

    :cond_75
    move-object v0, v1

    goto :goto_33
.end method

.method public static getTelephonyId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 127
    :try_start_1
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 129
    if-eqz v0, :cond_2a

    .line 130
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    .line 142
    :goto_10
    return-object v0

    .line 132
    :catch_11
    move-exception v0

    .line 133
    const-string v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTelephonyId: exception caught invoking TelephonyManager.getDeviceId(). Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move-object v0, v1

    goto :goto_10
.end method
