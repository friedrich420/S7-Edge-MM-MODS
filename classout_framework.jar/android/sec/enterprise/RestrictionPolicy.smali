.class public Landroid/sec/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final SVOICE_PACKAGE1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final SVOICE_PACKAGE2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"

.field private static TAG:Ljava/lang/String; = null

.field public static final WFD_DISABLE:Ljava/lang/String; = "edm.intent.action.internal.RESTRICTION_DISABLE_WFD"

.field public static final settingsExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const-string v0, "RestrictionPolicy"

    sput-object v0, TAG:Ljava/lang/String;

    .line 59
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ActivityPicker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.ChooseLockAdditionalPin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.ChooseLockFaceWarning"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.ChooseLockGeneric"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.ChooseLockMotion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.ChooseLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.ConfirmLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.ConfirmLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.settings.bluetooth.DevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.wfd.WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.settings.bluetooth.BluetoothPairingDialog"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.android.settings.bluetooth.BluetoothEnableActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    aput-object v2, v0, v1

    sput-object v0, settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAndroidBeamAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 417
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 418
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 419
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isAndroidBeamAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 424
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 421
    :catch_b
    move-exception v1

    .line 424
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isAudioRecordAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 291
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 292
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 293
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isAudioRecordAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 298
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 295
    :catch_b
    move-exception v1

    .line 298
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .registers 3

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 341
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 342
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isBackgroundProcessLimitAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 347
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 344
    :catch_b
    move-exception v1

    .line 347
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isBackupAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 243
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 244
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 249
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 246
    :catch_b
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isBackupAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isCameraEnabled(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 128
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 129
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCameraEnabled(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 134
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 131
    :catch_b
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isCameraEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isClipboardAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 185
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 186
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 191
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 188
    :catch_b
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isClipboardAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isClipboardShareAllowed()Z
    .registers 3

    .prologue
    .line 371
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 372
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 373
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isClipboardShareAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 378
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 375
    :catch_b
    move-exception v1

    .line 378
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isGoogleCrashReportAllowed()Z
    .registers 5

    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 223
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 224
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleCrashReportAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 229
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 226
    :catch_b
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isGoogleCrashReportAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .registers 3

    .prologue
    .line 356
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 357
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 358
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isKillingActivitiesOnLeaveAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 363
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 360
    :catch_b
    move-exception v1

    .line 363
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 205
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 206
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 207
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 212
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 209
    :catch_b
    move-exception v1

    .line 212
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isNFCEnabled()Z
    .registers 5

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 145
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 146
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 151
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 148
    :catch_b
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 164
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 165
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabledWithMsg(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 171
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 168
    :catch_b
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isNonMarketAppAllowed()Z
    .registers 5

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 107
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 108
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNonMarketAppAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 113
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 110
    :catch_b
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isNonMarketAppAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isPowerOffAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 276
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 277
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPowerOffAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 282
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 279
    :catch_b
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isPowerOffAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isSBeamAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 402
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 403
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 404
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isSBeamAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 409
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 406
    :catch_b
    move-exception v1

    .line 409
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isSVoiceAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 387
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 388
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 389
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isSVoiceAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 394
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 391
    :catch_b
    move-exception v1

    .line 394
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 259
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 260
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 261
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenCaptureEnabled(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 266
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 263
    :catch_b
    move-exception v1

    .line 266
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isSettingsChangesAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 90
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 91
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSettingsChangesAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 96
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 93
    :catch_b
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isSettingsChangesAllowed returning true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isVideoRecordAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 307
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 308
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isVideoRecordAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 313
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 310
    :catch_b
    move-exception v1

    .line 313
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isWifiDirectAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 325
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 326
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isWifiDirectAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 331
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v1

    .line 328
    :catch_b
    move-exception v1

    .line 331
    :cond_c
    const/4 v1, 0x1

    goto :goto_a
.end method
