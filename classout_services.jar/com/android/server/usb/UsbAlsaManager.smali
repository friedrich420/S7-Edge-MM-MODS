.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z = false

.field private static final DOCK_DEVICE_NAME:[Ljava/lang/String;

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

.field private final mAlsaDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlsaObserver:Landroid/os/FileObserver;

.field private final mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbAudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

.field private final mHasMidiFeature:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Smart Dock with TA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Smart Dock+TA"

    aput-object v2, v0, v1

    sput-object v0, DOCK_DEVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 70
    new-instance v0, Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaDevicesParser;-><init>()V

    iput-object v0, p0, mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAudioDevices:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mMidiDevices:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAlsaDevices:Ljava/util/HashMap;

    .line 84
    iput-object v1, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    .line 87
    iput-object v1, p0, mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 129
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    const-string v1, "/dev/snd/"

    const/16 v2, 0x300

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;I)V

    iput-object v0, p0, mAlsaObserver:Landroid/os/FileObserver;

    .line 144
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mHasMidiFeature:Z

    .line 148
    iget-object v0, p0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, alsaFileAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, alsaFileRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private alsaFileAdded(Ljava/lang/String;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    const/4 v7, 0x0

    .line 341
    .local v7, "type":I
    const/4 v2, -0x1

    .local v2, "card":I
    const/4 v4, -0x1

    .line 343
    .local v4, "device":I
    const-string/jumbo v8, "pcmC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 344
    const-string/jumbo v8, "p"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 345
    const/4 v7, 0x1

    .line 353
    :cond_16
    :goto_16
    if-eqz v7, :cond_77

    .line 355
    const/16 v8, 0x43

    :try_start_1a
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 356
    .local v1, "c_index":I
    const/16 v8, 0x44

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 357
    .local v3, "d_index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 358
    .local v6, "end":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2e

    const/4 v8, 0x2

    if-ne v7, v8, :cond_30

    .line 360
    :cond_2e
    add-int/lit8 v6, v6, -0x1

    .line 362
    :cond_30
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 363
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_43} :catch_8d

    move-result v4

    .line 368
    iget-object v9, p0, mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v9

    .line 369
    :try_start_47
    iget-object v8, p0, mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_76

    .line 370
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    invoke-direct {v0, p0, v7, v2, v4}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .line 371
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding ALSA device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v8, p0, mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v8, p0, mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 375
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_76
    monitor-exit v9
    :try_end_77
    .catchall {:try_start_47 .. :try_end_77} :catchall_a7

    .line 377
    .end local v1    # "c_index":I
    .end local v3    # "d_index":I
    .end local v6    # "end":I
    :cond_77
    :goto_77
    return-void

    .line 346
    :cond_78
    const-string v8, "c"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 347
    const/4 v7, 0x2

    goto :goto_16

    .line 349
    :cond_82
    const-string/jumbo v8, "midiC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 350
    const/4 v7, 0x3

    goto :goto_16

    .line 364
    :catch_8d
    move-exception v5

    .line 365
    .local v5, "e":Ljava/lang/Exception;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse ALSA file name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 375
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "c_index":I
    .restart local v3    # "d_index":I
    .restart local v6    # "end":I
    :catchall_a7
    move-exception v8

    :try_start_a8
    monitor-exit v9
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v8
.end method

.method private alsaFileRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v2, p0, mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v2

    .line 381
    :try_start_3
    iget-object v1, p0, mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    .line 382
    .local v0, "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v0, :cond_25

    .line 383
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALSA device removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_25
    monitor-exit v2

    .line 386
    return-void

    .line 385
    .end local v0    # "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V
    .registers 13
    .param p1, "audioDevice"    # Lcom/android/server/usb/UsbAudioDevice;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, mAudioService:Landroid/media/IAudioService;

    if-nez v0, :cond_e

    .line 256
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v4, "no AudioService"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_d
    :goto_d
    return-void

    .line 265
    :cond_e
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "usb_audio_automatic_routing_disabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 267
    .local v9, "isDisabled":I
    invoke-virtual {p0}, isSmartDockConnected()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "SM-N910F"

    const-string/jumbo v4, "ro.product.model"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "SM-N910C"

    const-string/jumbo v4, "ro.product.model"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 269
    const/4 v9, 0x1

    .line 271
    :cond_44
    if-nez v9, :cond_d

    .line 275
    if-eqz p2, :cond_49

    const/4 v2, 0x1

    .line 276
    .local v2, "state":I
    :cond_49
    iget v6, p1, Lcom/android/server/usb/UsbAudioDevice;->mCard:I

    .line 277
    .local v6, "alsaCard":I
    iget v7, p1, Lcom/android/server/usb/UsbAudioDevice;->mDevice:I

    .line 278
    .local v7, "alsaDevice":I
    if-ltz v6, :cond_51

    if-gez v7, :cond_74

    .line 279
    :cond_51
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alsaDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 284
    :cond_74
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "address":Ljava/lang/String;
    :try_start_78
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-eqz v0, :cond_8b

    .line 288
    iget-object v0, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-ne p1, v0, :cond_ab

    const/16 v1, 0x2000

    .line 295
    .local v1, "device":I
    :goto_82
    iget-object v0, p0, mAudioService:Landroid/media/IAudioService;

    iget-object v4, p1, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    sget-object v5, TAG:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v1    # "device":I
    :cond_8b
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    if-eqz v0, :cond_d

    .line 301
    iget-object v0, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-ne p1, v0, :cond_ae

    const v1, -0x7ffff800

    .line 304
    .restart local v1    # "device":I
    :goto_96
    iget-object v0, p0, mAudioService:Landroid/media/IAudioService;

    iget-object v4, p1, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    sget-object v5, TAG:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_9f} :catch_a1

    goto/16 :goto_d

    .line 307
    .end local v1    # "device":I
    :catch_a1
    move-exception v8

    .line 308
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, TAG:Ljava/lang/String;

    const-string v4, "RemoteException in setWiredDeviceConnectionState"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 288
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_ab
    const/16 v1, 0x4000

    goto :goto_82

    .line 301
    :cond_ae
    const v1, -0x7ffff000

    goto :goto_96
.end method

.method private waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .registers 22
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "type"    # I

    .prologue
    .line 313
    new-instance v6, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .line 316
    .local v6, "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    const/16 v5, 0x9c4

    .line 318
    .local v5, "kWaitTime":I
    move-object/from16 v0, p0

    iget-object v12, v0, mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v12

    .line 319
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x9c4

    add-long v8, v14, v16

    .line 321
    .local v8, "timeout":J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v7, v0, mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 322
    monitor-exit v12

    .line 336
    .end local v6    # "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :goto_2b
    return-object v6

    .line 324
    .restart local v6    # "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_6d

    move-result-wide v14

    sub-long v10, v8, v14

    .line 325
    .local v10, "waitTime":J
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_3f

    .line 327
    :try_start_38
    move-object/from16 v0, p0

    iget-object v7, v0, mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3f} :catch_63
    .catchall {:try_start_38 .. :try_end_3f} :catchall_6d

    .line 332
    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    cmp-long v7, v8, v14

    if-gtz v7, :cond_1c

    .line 333
    monitor-exit v12
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_6d

    .line 335
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "waitForAlsaDevice failed for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v6, 0x0

    goto :goto_2b

    .line 328
    :catch_63
    move-exception v4

    .line 329
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_64
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v13, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 333
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "timeout":J
    .end local v10    # "waitTime":J
    :catchall_6d
    move-exception v7

    monitor-exit v12
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_6d

    throw v7
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 605
    const-string v2, "USB Audio Devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 607
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 609
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_46
    const-string v2, "USB MIDI Devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 611
    .restart local v0    # "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_55

    .line 613
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_8c
    return-void
.end method

.method public getConnectedDevices()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/UsbAudioDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbAudioDevice;>;"
    iget-object v3, p0, mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 596
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/UsbAudioDevice;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 598
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/UsbAudioDevice;>;"
    :cond_29
    return-object v0
.end method

.method public isSmartDockConnected()Z
    .registers 21

    .prologue
    .line 169
    const-wide/16 v18, 0x64

    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7a

    .line 173
    :goto_5
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v4, v0, [C

    .line 174
    .local v4, "buffer":[C
    const-string v3, "/sys/class/sec/switch/device"

    .line 175
    .local v3, "SmartDockFile":Ljava/lang/String;
    const-string v2, "/sys/class/sec/switch/adc"

    .line 176
    .local v2, "SmartDName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 177
    .local v9, "file":Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 178
    .local v12, "in":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 179
    .local v15, "isSmartDockString":Z
    const/4 v14, 0x0

    .line 180
    .local v14, "isSmartDockADC":Z
    const/4 v6, 0x0

    .line 181
    .local v6, "deviceValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 186
    .local v5, "deviceVal":Ljava/lang/String;
    :try_start_15
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_112
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_12d
    .catchall {:try_start_15 .. :try_end_1a} :catchall_149

    .line 187
    .end local v9    # "file":Ljava/io/FileReader;
    .local v10, "file":Ljava/io/FileReader;
    const/16 v17, 0x0

    const/16 v18, 0x8

    :try_start_1e
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v4, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v16

    .line 188
    .local v16, "len":I
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 189
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_97

    .line 190
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    add-int/lit8 v18, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .end local v6    # "deviceValue":Ljava/lang/String;
    .local v7, "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .line 194
    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    :goto_3f
    const-string v17, "10"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_fd

    .line 195
    const/4 v14, 0x1

    .line 200
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_58} :catch_168
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_58} :catch_161
    .catchall {:try_start_1e .. :try_end_58} :catchall_15a

    .line 201
    .end local v12    # "in":Ljava/io/BufferedReader;
    .local v13, "in":Ljava/io/BufferedReader;
    :try_start_58
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 204
    if-eqz v5, :cond_6b

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_68} :catch_16b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_164
    .catchall {:try_start_58 .. :try_end_68} :catchall_15d

    move-result v17

    if-nez v17, :cond_a9

    .line 205
    :cond_6b
    const/16 v17, 0x0

    .line 232
    if-eqz v10, :cond_72

    .line 233
    :try_start_6f
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 235
    :cond_72
    if-eqz v13, :cond_77

    .line 236
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_77} :catch_a4

    :cond_77
    :goto_77
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 244
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :goto_79
    return v17

    .line 170
    .end local v2    # "SmartDName":Ljava/lang/String;
    .end local v3    # "SmartDockFile":Ljava/lang/String;
    .end local v4    # "buffer":[C
    .end local v5    # "deviceVal":Ljava/lang/String;
    .end local v6    # "deviceValue":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v14    # "isSmartDockADC":Z
    .end local v15    # "isSmartDockString":Z
    :catch_7a
    move-exception v8

    .line 171
    .local v8, "e":Ljava/lang/Exception;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in Thread.sleep() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 192
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "SmartDName":Ljava/lang/String;
    .restart local v3    # "SmartDockFile":Ljava/lang/String;
    .restart local v4    # "buffer":[C
    .restart local v5    # "deviceVal":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "isSmartDockADC":Z
    .restart local v15    # "isSmartDockString":Z
    .restart local v16    # "len":I
    :cond_97
    :try_start_97
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_a2} :catch_168
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a2} :catch_161
    .catchall {:try_start_97 .. :try_end_a2} :catchall_15a

    .end local v6    # "deviceValue":Ljava/lang/String;
    .restart local v7    # "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    goto :goto_3f

    .line 238
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_a4
    move-exception v8

    .line 240
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    .line 207
    .end local v8    # "e":Ljava/io/IOException;
    :cond_a9
    :try_start_a9
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 208
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ae
    sget-object v17, DOCK_DEVICE_NAME:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_cb

    if-nez v15, :cond_cb

    .line 209
    sget-object v17, DOCK_DEVICE_NAME:[Ljava/lang/String;

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c8

    .line 210
    const/4 v15, 0x1

    .line 208
    :cond_c8
    add-int/lit8 v11, v11, 0x1

    goto :goto_ae

    .line 213
    :cond_cb
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isSmartDockString = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_e6} :catch_16b
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_e6} :catch_164
    .catchall {:try_start_a9 .. :try_end_e6} :catchall_15d

    .line 217
    if-eqz v15, :cond_fc

    .line 218
    const/16 v17, 0x1

    .line 232
    if-eqz v10, :cond_ef

    .line 233
    :try_start_ec
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 235
    :cond_ef
    if-eqz v13, :cond_f4

    .line 236
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f4} :catch_f7

    :cond_f4
    :goto_f4
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 241
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_79

    .line 238
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_f7
    move-exception v8

    .line 240
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    .end local v8    # "e":Ljava/io/IOException;
    :cond_fc
    move-object v12, v13

    .line 232
    .end local v11    # "i":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :cond_fd
    if-eqz v10, :cond_102

    .line 233
    :try_start_ff
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 235
    :cond_102
    if-eqz v12, :cond_107

    .line 236
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_107} :catch_10c

    :cond_107
    move-object v9, v10

    .line 244
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :cond_108
    :goto_108
    const/16 v17, 0x0

    goto/16 :goto_79

    .line 238
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v16    # "len":I
    :catch_10c
    move-exception v8

    .line 240
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 242
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_108

    .line 221
    .end local v8    # "e":Ljava/io/IOException;
    .end local v16    # "len":I
    :catch_112
    move-exception v8

    .line 222
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_113
    :try_start_113
    sget-object v17, TAG:Ljava/lang/String;

    const-string v18, "checkSmartDock This kernel does not have wired headset support "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_113 .. :try_end_11a} :catchall_149

    .line 232
    if-eqz v9, :cond_11f

    .line 233
    :try_start_11c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 235
    :cond_11f
    if-eqz v12, :cond_124

    .line 236
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_124} :catch_128

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_124
    :goto_124
    move/from16 v17, v14

    .line 241
    goto/16 :goto_79

    .line 238
    .restart local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_128
    move-exception v8

    .line 240
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_124

    .line 228
    .end local v8    # "e":Ljava/io/IOException;
    :catch_12d
    move-exception v8

    .line 229
    .local v8, "e":Ljava/lang/Exception;
    :goto_12e
    :try_start_12e
    sget-object v17, TAG:Ljava/lang/String;

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_12e .. :try_end_139} :catchall_149

    .line 232
    if-eqz v9, :cond_13e

    .line 233
    :try_start_13b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 235
    :cond_13e
    if-eqz v12, :cond_108

    .line 236
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_143} :catch_144

    goto :goto_108

    .line 238
    :catch_144
    move-exception v8

    .line 240
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_108

    .line 231
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_149
    move-exception v17

    .line 232
    :goto_14a
    if-eqz v9, :cond_14f

    .line 233
    :try_start_14c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 235
    :cond_14f
    if-eqz v12, :cond_154

    .line 236
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_154} :catch_155

    .line 241
    :cond_154
    :goto_154
    throw v17

    .line 238
    :catch_155
    move-exception v8

    .line 240
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_154

    .line 231
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    :catchall_15a
    move-exception v17

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_14a

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catchall_15d
    move-exception v17

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_14a

    .line 228
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_161
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_12e

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_164
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_12e

    .line 221
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_168
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_113

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_16b
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_113
.end method

.method public logDevices(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 634
    return-void
.end method

.method public logDevicesList(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 624
    return-void
.end method

.method selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;
    .registers 12
    .param p1, "card"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 395
    iget-object v1, p0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 433
    :cond_b
    :goto_b
    return-object v0

    .line 400
    :cond_c
    iget-object v1, p0, mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaDevicesParser;->scan()V

    .line 401
    iget-object v1, p0, mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    move-result v2

    .line 403
    .local v2, "device":I
    iget-object v1, p0, mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasPlaybackDevices(I)Z

    move-result v3

    .line 404
    .local v3, "hasPlayback":Z
    iget-object v1, p0, mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasCaptureDevices(I)Z

    move-result v4

    .line 405
    .local v4, "hasCapture":Z
    iget-object v1, p0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v1

    if-eqz v1, :cond_58

    move v1, v7

    :goto_2c
    const/high16 v9, -0x80000000

    or-int v5, v1, v9

    .line 412
    .local v5, "deviceClass":I
    if-eqz v3, :cond_38

    invoke-direct {p0, p1, v2, v8}, waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 417
    :cond_38
    if-eqz v4, :cond_40

    invoke-direct {p0, p1, v2, v7}, waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 425
    :cond_40
    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    .line 427
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    iget-object v1, p0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v6

    .line 428
    .local v6, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget-object v1, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    .line 429
    iget-object v1, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceDescription:Ljava/lang/String;

    .line 431
    invoke-direct {p0, v0, v8}, notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    goto :goto_b

    .end local v0    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .end local v5    # "deviceClass":I
    .end local v6    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_58
    move v1, v8

    .line 405
    goto :goto_2c
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    .line 441
    iget-object v0, p0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultCard()I

    move-result v0

    invoke-virtual {p0, v0}, selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    move-result-object v0

    return-object v0
.end method

.method setAccessoryAudioState(ZII)V
    .registers 10
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 557
    if-eqz p1, :cond_14

    .line 558
    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    const/4 v5, 0x2

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    iput-object v0, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    .line 560
    iget-object v0, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    invoke-direct {p0, v0, v3}, notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    .line 565
    :cond_13
    :goto_13
    return-void

    .line 561
    :cond_14
    iget-object v0, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-eqz v0, :cond_13

    .line 562
    iget-object v0, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    invoke-direct {p0, v0, v4}, notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    goto :goto_13
.end method

.method setPeripheralMidiState(ZII)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    .line 568
    iget-boolean v2, p0, mHasMidiFeature:Z

    if-nez v2, :cond_5

    .line 588
    :cond_4
    :goto_4
    return-void

    .line 572
    :cond_5
    if-eqz p1, :cond_50

    iget-object v2, p0, mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v2, :cond_50

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v0, "properties":Landroid/os/Bundle;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 575
    .local v1, "r":Landroid/content/res/Resources;
    const-string/jumbo v2, "name"

    const v3, 0x104059f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string/jumbo v2, "manufacturer"

    const v3, 0x10405a0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string/jumbo v2, "product"

    const v3, 0x10405a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v2, "alsa_card"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    const-string v2, "alsa_device"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v0, p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v2

    iput-object v2, p0, mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_4

    .line 584
    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_50
    if-nez p1, :cond_4

    iget-object v2, p0, mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz v2, :cond_4

    .line 585
    iget-object v2, p0, mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 586
    const/4 v2, 0x0

    iput-object v2, p0, mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_4
.end method

.method public systemReady()V
    .registers 5

    .prologue
    .line 152
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    iput-object v2, p0, mAudioService:Landroid/media/IAudioService;

    .line 155
    iget-object v2, p0, mAlsaObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 158
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/snd/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 159
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2e

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, v0

    if-ge v1, v2, :cond_2e

    .line 161
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, alsaFileAdded(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 164
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method usbDeviceAdded(Landroid/hardware/usb/UsbDevice;)V
    .registers 26
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 451
    const/4 v10, 0x0

    .line 454
    .local v10, "isAudioDevice":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v9

    .line 455
    .local v9, "interfaceCount":I
    const/4 v15, 0x0

    .local v15, "ntrfaceIndex":I
    :goto_6
    if-nez v10, :cond_20

    if-ge v15, v9, :cond_20

    .line 457
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v14

    .line 458
    .local v14, "ntrface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v14}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 459
    const/4 v10, 0x1

    .line 456
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 462
    .end local v14    # "ntrface":Landroid/hardware/usb/UsbInterface;
    :cond_20
    if-nez v10, :cond_23

    .line 530
    :cond_22
    :goto_22
    return-void

    .line 466
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanRecords()Ljava/util/ArrayList;

    move-result-object v16

    .line 467
    .local v16, "prevScanRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    .line 469
    const/4 v4, -0x1

    .line 471
    .local v4, "addedCard":I
    move-object/from16 v0, p0

    iget-object v0, v0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/alsa/AlsaCardsParser;->getNewCardRecords(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    .line 472
    .local v13, "newScanRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_158

    .line 476
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 483
    :goto_59
    move-object/from16 v0, p0

    iget-object v0, v0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    move-result-object v6

    .line 485
    .local v6, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    if-eqz v6, :cond_7c

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioDevices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasMIDIDevices(I)Z

    move-result v8

    .line 496
    .local v8, "hasMidi":Z
    if-eqz v8, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasMidiFeature:Z

    move/from16 v21, v0

    if-eqz v21, :cond_22

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    move-result v7

    .line 498
    .local v7, "device":I
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v7, v1}, waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v5

    .line 499
    .local v5, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v5, :cond_22

    .line 500
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v18, "properties":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v11

    .line 502
    .local v11, "manufacturer":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v17

    .line 503
    .local v17, "product":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v20

    .line 505
    .local v20, "version":Ljava/lang/String;
    if-eqz v11, :cond_c3

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_164

    .line 506
    :cond_c3
    move-object/from16 v12, v17

    .line 512
    .local v12, "name":Ljava/lang/String;
    :goto_c5
    const-string/jumbo v21, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string/jumbo v21, "manufacturer"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string/jumbo v21, "product"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string/jumbo v21, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v21, "serial_number"

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v21, "alsa_card"

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    const-string v21, "alsa_device"

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    const-string/jumbo v21, "usb_device"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    move/from16 v22, v0

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v19

    .line 524
    .local v19, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v19, :cond_22

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, mMidiDevices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    .line 478
    .end local v5    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .end local v6    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .end local v7    # "device":I
    .end local v8    # "hasMidi":Z
    .end local v11    # "manufacturer":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v17    # "product":Ljava/lang/String;
    .end local v18    # "properties":Landroid/os/Bundle;
    .end local v19    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local v20    # "version":Ljava/lang/String;
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultUsbCard()I

    move-result v4

    goto/16 :goto_59

    .line 507
    .restart local v5    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .restart local v6    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .restart local v7    # "device":I
    .restart local v8    # "hasMidi":Z
    .restart local v11    # "manufacturer":Ljava/lang/String;
    .restart local v17    # "product":Ljava/lang/String;
    .restart local v18    # "properties":Landroid/os/Bundle;
    .restart local v20    # "version":Ljava/lang/String;
    :cond_164
    if-eqz v17, :cond_16c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_16f

    .line 508
    :cond_16c
    move-object v12, v11

    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_c5

    .line 510
    .end local v12    # "name":Ljava/lang/String;
    :cond_16f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_c5
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 538
    iget-object v2, p0, mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAudioDevice;

    .line 539
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    if-eqz v0, :cond_19

    .line 540
    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-nez v2, :cond_12

    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-eqz v2, :cond_19

    .line 541
    :cond_12
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    .line 544
    invoke-virtual {p0}, selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;

    .line 547
    :cond_19
    iget-object v2, p0, mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbMidiDevice;

    .line 548
    .local v1, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v1, :cond_26

    .line 549
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 551
    :cond_26
    return-void
.end method
