.class public Lcom/android/server/KiesConnectivity/KiesUsbManager;
.super Ljava/lang/Object;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "KiesUsbManager"

.field private static kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# instance fields
.field private final CDFS_FUNCTION:Ljava/lang/String;

.field private final CDFS_INSERT_PATH:Ljava/lang/String;

.field private final CDFS_PATH:Ljava/lang/String;

.field private final SUAVERSION_INSERT_PATH:Ljava/lang/String;

.field private cdfsEjectTimer:Ljava/util/Timer;

.field private context:Landroid/content/Context;

.field private cscTimer:Ljava/util/Timer;

.field private isAdbOnByToolLauncher:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    iput-object v0, p0, CDFS_INSERT_PATH:Ljava/lang/String;

    .line 44
    const-string v0, "/system/etc/autorun.iso"

    iput-object v0, p0, CDFS_PATH:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "mass_storage,acm,mtp"

    iput-object v0, p0, CDFS_FUNCTION:Ljava/lang/String;

    .line 46
    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/sua_version_info"

    iput-object v0, p0, SUAVERSION_INSERT_PATH:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, isAdbOnByToolLauncher:Z

    .line 59
    iput-object v1, p0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 60
    iput-object v1, p0, usbManager:Landroid/hardware/usb/UsbManager;

    .line 65
    const-string v0, "KiesUsbManager"

    const-string v1, "KiesUsbManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, context:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KiesUsbManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 72
    iget-object v0, p0, context:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 73
    iget-object v0, p0, context:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, usbManager:Landroid/hardware/usb/UsbManager;

    .line 74
    invoke-virtual {p0}, setCSCtimer()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 39
    invoke-direct {p0}, saveVersionFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    .registers 1

    .prologue
    .line 39
    sget-object v0, kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 39
    invoke-direct {p0}, setUsbCurrentSettingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 39
    invoke-direct {p0}, setCDFSInsert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 39
    invoke-direct {p0}, setUsbCurrentChargingMode()V

    return-void
.end method

.method private isAdbEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "enabled":I
    iget-object v3, p0, context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    if-ne v0, v1, :cond_12

    .line 85
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private isFactoryBinary()Z
    .registers 4

    .prologue
    .line 242
    const-string/jumbo v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveISOToFile(Z)Z
    .registers 9
    .param p1, "bInsert"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "fout":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_45

    .line 147
    const-string v5, "KiesUsbManager"

    const-string/jumbo v6, "saveISOToFile ISO setCDFSInsert"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_29
    .catchall {:try_start_d .. :try_end_14} :catchall_39

    .line 150
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_14
    const-string v5, "/system/etc/autorun.iso"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_8b
    .catchall {:try_start_14 .. :try_end_1d} :catchall_88

    .line 157
    if-eqz v2, :cond_22

    .line 158
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_24

    :cond_22
    :goto_22
    move-object v1, v2

    .line 182
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :goto_23
    return v3

    .line 159
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_24
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_29
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_39

    .line 157
    if-eqz v1, :cond_32

    .line 158
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_34

    :cond_32
    :goto_32
    move v3, v4

    .line 161
    goto :goto_23

    .line 159
    :catch_34
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_39
    move-exception v3

    .line 157
    :goto_3a
    if-eqz v1, :cond_3f

    .line 158
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 161
    :cond_3f
    :goto_3f
    throw v3

    .line 159
    :catch_40
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :cond_45
    const-string v5, "KiesUsbManager"

    const-string/jumbo v6, "saveISOToFile ISO setCDFSEject"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_4d
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_54} :catch_69
    .catchall {:try_start_4d .. :try_end_54} :catchall_76

    .line 170
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :try_start_54
    const-string v5, "0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5d} :catch_85
    .catchall {:try_start_54 .. :try_end_5d} :catchall_82

    .line 176
    if-eqz v2, :cond_62

    .line 177
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_64

    :cond_62
    :goto_62
    move-object v1, v2

    .line 182
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_23

    .line 178
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_64
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_69
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6a
    if-eqz v1, :cond_6f

    .line 177
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_71

    :cond_6f
    :goto_6f
    move v3, v4

    .line 180
    goto :goto_23

    .line 178
    :catch_71
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_76
    move-exception v3

    .line 176
    :goto_77
    if-eqz v1, :cond_7c

    .line 177
    :try_start_79
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 180
    :cond_7c
    :goto_7c
    throw v3

    .line 178
    :catch_7d
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_82
    move-exception v3

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_77

    .line 171
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_85
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_6a

    .line 156
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_88
    move-exception v3

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_3a

    .line 151
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_8b
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2a
.end method

.method private saveVersionFile()Z
    .registers 11

    .prologue
    .line 94
    invoke-virtual {p0}, stopCSCtimer()V

    .line 95
    const-string v3, ""

    .line 96
    .local v3, "Versionresult":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.PDA"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "PDAvalue":Ljava/lang/String;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_29

    .line 98
    :cond_16
    const-string/jumbo v7, "ril.approved_codever"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_29

    .line 100
    :cond_27
    const-string v1, "Unknown"

    .line 104
    :cond_29
    const-string/jumbo v7, "ril.sw_ver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "PHONEvalue":Ljava/lang/String;
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_45

    .line 106
    :cond_3a
    move-object v2, v1

    .line 107
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_45

    .line 108
    :cond_43
    const-string v2, "Unknown"

    .line 112
    :cond_45
    const-string/jumbo v7, "ril.official_cscver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "CSCvalue":Ljava/lang/String;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_78

    .line 114
    :cond_56
    const-string/jumbo v7, "ril.official_cscver"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_78

    .line 116
    :cond_65
    const-string/jumbo v7, "ril.approved_cscver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_78

    .line 118
    :cond_76
    const-string v0, "Unknown"

    .line 123
    :cond_78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string v7, "KiesUsbManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save Versionresult : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v5, 0x0

    .line 128
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_bd
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/android_usb/android0/f_mass_storage/sua_version_info"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c4} :catch_d8
    .catchall {:try_start_bd .. :try_end_c4} :catchall_e5

    .line 129
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_c4
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_cb} :catch_f4
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_f1

    .line 134
    if-eqz v6, :cond_d0

    .line 135
    :try_start_cd
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d3

    .line 140
    :cond_d0
    :goto_d0
    const/4 v7, 0x1

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_d2
    :goto_d2
    return v7

    .line 136
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catch_d3
    move-exception v4

    .line 137
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d0

    .line 130
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catch_d8
    move-exception v4

    .line 131
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_d9
    const/4 v7, 0x0

    .line 134
    if-eqz v5, :cond_d2

    .line 135
    :try_start_dc
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_d2

    .line 136
    :catch_e0
    move-exception v4

    .line 137
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    .line 133
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_e5
    move-exception v7

    .line 134
    :goto_e6
    if-eqz v5, :cond_eb

    .line 135
    :try_start_e8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec

    .line 138
    :cond_eb
    :goto_eb
    throw v7

    .line 136
    :catch_ec
    move-exception v4

    .line 137
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_eb

    .line 133
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catchall_f1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    goto :goto_e6

    .line 130
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catch_f4
    move-exception v4

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    goto :goto_d9
.end method

.method private setCDFSEject()V
    .registers 3

    .prologue
    .line 236
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSEject"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 238
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSEject : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_17
    return-void
.end method

.method private setCDFSInsert()V
    .registers 3

    .prologue
    .line 229
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSInsert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, v0}, saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 231
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSInsert : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_17
    return-void
.end method

.method private setUsbCurrentChargingMode()V
    .registers 4

    .prologue
    .line 188
    invoke-virtual {p0}, stopCDFSEjectTimer()V

    .line 189
    const-string/jumbo v1, "sys.usb.config"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "mass_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "mass_storage,acm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "mass_storage,acm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 192
    :cond_31
    invoke-direct {p0}, isAdbEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 193
    iget-object v1, p0, usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "askon,adb"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 199
    :cond_3f
    :goto_3f
    return-void

    .line 196
    :cond_40
    iget-object v1, p0, usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "askon"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method private setUsbCurrentSettingMode()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0}, stopCDFSEjectTimer()V

    .line 203
    iget-object v1, p0, context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mtp_open_session"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_1c

    .line 204
    const-string v1, "KiesUsbManager"

    const-string v2, "Mtp is already completed opensession, so return."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_1b
    return-void

    .line 207
    :cond_1c
    const-string/jumbo v1, "sys.usb.config"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "config":Ljava/lang/String;
    invoke-direct {p0}, isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_81

    .line 210
    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "mtp,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 211
    :cond_3e
    invoke-direct {p0}, isAdbEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_71

    .line 212
    iget-object v1, p0, usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "askon,adb"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, usbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "mtp,adb"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 220
    :cond_53
    :goto_53
    const-string v1, "KiesUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbCurrentSettingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_6c
    sget-object v1, kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sput-boolean v4, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    goto :goto_1b

    .line 216
    :cond_71
    iget-object v1, p0, usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "askon"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, usbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "mtp"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_53

    .line 222
    :cond_81
    const-string v1, "KiesUsbManager"

    const-string v2, "This binary is Factory binary"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized setCSCtimer()V
    .registers 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 258
    .local v0, "myTask":Ljava/util/TimerTask;
    monitor-exit p0

    return-void

    .line 245
    .end local v0    # "myTask":Ljava/util/TimerTask;
    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startCDFSEjectTimer()V
    .registers 5

    .prologue
    .line 267
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 277
    .local v0, "myTask":Ljava/util/TimerTask;
    iget-object v1, p0, cdfsEjectTimer:Ljava/util/Timer;

    if-nez v1, :cond_20

    .line 278
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, cdfsEjectTimer:Ljava/util/Timer;

    .line 279
    iget-object v1, p0, cdfsEjectTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 280
    const-string v1, "KiesUsbManager"

    const-string/jumbo v2, "startCDFSEjectTimer -> 30 seconds start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 282
    :cond_20
    monitor-exit p0

    return-void

    .line 267
    .end local v0    # "myTask":Ljava/util/TimerTask;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopCDFSEjectTimer()V
    .registers 3

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, cdfsEjectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_15

    .line 286
    iget-object v0, p0, cdfsEjectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, cdfsEjectTimer:Ljava/util/Timer;

    .line 288
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "stopCDFSEjectTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 290
    :cond_15
    monitor-exit p0

    return-void

    .line 285
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopCSCtimer()V
    .registers 3

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, cscTimer:Ljava/util/Timer;

    if-eqz v0, :cond_15

    .line 261
    iget-object v0, p0, cscTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, cscTimer:Ljava/util/Timer;

    .line 263
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "stop cscTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 265
    :cond_15
    monitor-exit p0

    return-void

    .line 260
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
