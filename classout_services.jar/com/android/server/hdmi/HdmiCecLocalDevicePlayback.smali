.class final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;,
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevicePlayback"

.field private static final WAKE_ON_HOTPLUG:Z


# instance fields
.field private mAutoTvOff:Z

.field private mIsActiveSource:Z

.field private mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    const-string/jumbo v0, "ro.hdmi.wake_on_hotplug"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, WAKE_ON_HOTPLUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    const/4 v2, 0x0

    .line 61
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 47
    iput-boolean v2, p0, mIsActiveSource:Z

    .line 63
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, mAutoTvOff:Z

    .line 67
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    iget-boolean v2, p0, mAutoTvOff:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .prologue
    .line 41
    iget-boolean v0, p0, mIsActiveSource:Z

    return v0
.end method

.method private getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 203
    iget-object v0, p0, mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    if-nez v0, :cond_18

    .line 204
    const-string/jumbo v0, "persist.sys.hdmi.keep_awake"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 205
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 220
    :cond_18
    :goto_18
    iget-object v0, p0, mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    return-object v0

    .line 209
    :cond_1b
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    .line 217
    const-string v0, "No wakelock is used to keep the display on."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 140
    :try_start_3
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    .line 144
    :goto_6
    return-void

    .line 141
    :catch_7
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiCecLocalDevicePlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private mayResetActiveSource(I)V
    .registers 3
    .param p1, "physicalAddress"    # I

    .prologue
    .line 238
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setActiveSource(Z)V

    .line 241
    :cond_c
    return-void
.end method

.method private maySendActiveSource(I)V
    .registers 5
    .param p1, "dest"    # I

    .prologue
    .line 298
    iget-boolean v0, p0, mIsActiveSource:Z

    if-eqz v0, :cond_21

    .line 299
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 302
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 305
    :cond_21
    return-void
.end method

.method private maySetActiveSource(I)V
    .registers 3
    .param p1, "physicalAddress"    # I

    .prologue
    .line 283
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, setActiveSource(Z)V

    .line 284
    return-void

    .line 283
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private wakeUpIfActiveSource()V
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, mIsActiveSource:Z

    if-nez v0, :cond_5

    .line 295
    :cond_4
    :goto_4
    return-void

    .line 292
    :cond_5
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    :cond_19
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    goto :goto_4
.end method


# virtual methods
.method protected canGoToStandby()Z
    .registers 2

    .prologue
    .line 225
    invoke-direct {p0}, getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 6
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 366
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 367
    if-nez p1, :cond_1d

    iget-boolean v0, p0, mIsActiveSource:Z

    if-eqz v0, :cond_1d

    .line 368
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 371
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setActiveSource(Z)V

    .line 372
    invoke-virtual {p0}, checkIfPendingActionsCleared()V

    .line 373
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsActiveSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoTvOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mAutoTvOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method protected getPreferredAddress()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 85
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 232
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 233
    .local v0, "physicalAddress":I
    invoke-direct {p0, v0}, mayResetActiveSource(I)V

    .line 234
    const/4 v1, 0x1

    return v1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 311
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-direct {p0, v0}, maySendActiveSource(I)V

    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 268
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 269
    .local v0, "newPath":I
    invoke-direct {p0, v0}, maySetActiveSource(I)V

    .line 270
    const/4 v1, 0x1

    return v1
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 277
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 278
    .local v0, "physicalAddress":I
    invoke-direct {p0, v0}, maySetActiveSource(I)V

    .line 279
    const/4 v1, 0x1

    return v1
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 14
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 317
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 320
    :try_start_5
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const-string v11, "US-ASCII"

    invoke-direct {v3, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 321
    .local v3, "iso3Language":Ljava/lang/String;
    iget-object v8, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v0, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 322
    .local v0, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 347
    .end local v0    # "currentLocale":Ljava/util/Locale;
    .end local v3    # "iso3Language":Ljava/lang/String;
    :goto_2c
    return v6

    .line 331
    .restart local v0    # "currentLocale":Ljava/util/Locale;
    .restart local v3    # "iso3Language":Ljava/lang/String;
    :cond_2d
    iget-object v8, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .line 333
    .local v5, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 334
    .local v4, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 340
    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_2c

    .line 346
    .end local v0    # "currentLocale":Ljava/util/Locale;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iso3Language":Ljava/lang/String;
    .end local v4    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v5    # "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :catch_5e
    move-exception v1

    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    move v6, v7

    .line 347
    goto :goto_2c

    .line 344
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "currentLocale":Ljava/util/Locale;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "iso3Language":Ljava/lang/String;
    .restart local v5    # "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :cond_61
    const-string v6, "HdmiCecLocalDevicePlayback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t handle <Set Menu Language> of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_79} :catch_5e

    move v6, v7

    .line 345
    goto :goto_2c
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 254
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 255
    .local v0, "physicalAddress":I
    invoke-direct {p0, v0}, maySetActiveSource(I)V

    .line 256
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {p0, v1}, maySendActiveSource(I)V

    .line 257
    invoke-direct {p0}, wakeUpIfActiveSource()V

    .line 258
    const/4 v1, 0x1

    return v1
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 246
    invoke-direct {p0}, wakeUpIfActiveSource()V

    .line 247
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method protected onAddressAllocated(II)V
    .registers 7
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 74
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    iget v3, p0, mDeviceType:I

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 76
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 78
    invoke-virtual {p0}, startQueuedActions()V

    .line 79
    return-void
.end method

.method onHotplug(IZ)V
    .registers 4
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 150
    iget-object v0, p0, mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    .line 152
    sget-boolean v0, WAKE_ON_HOTPLUG:Z

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 153
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 155
    :cond_1b
    if-nez p2, :cond_24

    .line 156
    invoke-direct {p0}, getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 158
    :cond_24
    return-void
.end method

.method protected onStandby(ZI)V
    .registers 6
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 164
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_e

    .line 180
    :cond_d
    :goto_d
    return-void

    .line 167
    :cond_e
    packed-switch p2, :pswitch_data_32

    goto :goto_d

    .line 169
    :pswitch_12
    iget-boolean v0, p0, mAutoTvOff:Z

    if-eqz v0, :cond_d

    .line 170
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_d

    .line 176
    :pswitch_23
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_d

    .line 167
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_12
        :pswitch_23
    .end packed-switch
.end method

.method oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 100
    const-class v1, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, v1}, hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 101
    const-string v1, "HdmiCecLocalDevicePlayback"

    const-string/jumbo v2, "oneTouchPlay already in progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 116
    :goto_17
    return-void

    .line 108
    :cond_18
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;

    move-result-object v0

    .line 110
    .local v0, "action":Lcom/android/server/hdmi/OneTouchPlayAction;
    if-nez v0, :cond_2b

    .line 111
    const-string v1, "HdmiCecLocalDevicePlayback"

    const-string v2, "Cannot initiate oneTouchPlay"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_17

    .line 115
    :cond_2b
    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_17
.end method

.method queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 121
    const-class v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, v1}, hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 122
    const-string v1, "HdmiCecLocalDevicePlayback"

    const-string/jumbo v2, "queryDisplayStatus already in progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 134
    :goto_17
    return-void

    .line 126
    :cond_18
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;

    move-result-object v0

    .line 128
    .local v0, "action":Lcom/android/server/hdmi/DevicePowerStatusAction;
    if-nez v0, :cond_2b

    .line 129
    const-string v1, "HdmiCecLocalDevicePlayback"

    const-string v2, "Cannot initiate queryDisplayStatus"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_17

    .line 133
    :cond_2b
    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_17
.end method

.method protected sendStandby(I)V
    .registers 5
    .param p1, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "targetAddress":I
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, mAddress:I

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 359
    return-void
.end method

.method setActiveSource(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 192
    iput-boolean p1, p0, mIsActiveSource:Z

    .line 193
    if-eqz p1, :cond_f

    .line 194
    invoke-direct {p0}, getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    .line 198
    :goto_e
    return-void

    .line 196
    :cond_f
    invoke-direct {p0}, getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    goto :goto_e
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 186
    iput-boolean p1, p0, mAutoTvOff:Z

    .line 187
    return-void
.end method

.method protected setPreferredAddress(I)V
    .registers 4
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 93
    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
