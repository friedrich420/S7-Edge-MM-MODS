.class public Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;,
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

.field private mCurrentSoundModelHandle:I

.field private mIsPowerSaveMode:Z

.field private mKeyphraseId:I

.field private final mLock:Ljava/lang/Object;

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionAborted:Z

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mServiceDisabled:Z

.field private mStarted:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mLock:Ljava/lang/Object;

    .line 78
    iput v4, p0, mKeyphraseId:I

    .line 79
    iput v4, p0, mCurrentSoundModelHandle:I

    .line 80
    iput-object v5, p0, mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 82
    iput-object v5, p0, mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 83
    iput-boolean v3, p0, mRequested:Z

    .line 84
    iput-boolean v3, p0, mCallActive:Z

    .line 85
    iput-boolean v3, p0, mIsPowerSaveMode:Z

    .line 88
    iput-boolean v3, p0, mServiceDisabled:Z

    .line 89
    iput-boolean v3, p0, mStarted:Z

    .line 90
    iput-boolean v3, p0, mRecognitionAborted:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v1

    .line 96
    .local v1, "status":I
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 97
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 98
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    .line 99
    new-instance v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v2, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 100
    if-nez v1, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7e

    .line 101
    :cond_52
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listModules status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", # of modules="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object v5, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 103
    iput-object v5, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 108
    :goto_7d
    return-void

    .line 106
    :cond_7e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v2, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_7d
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    .prologue
    .line 50
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    .prologue
    .line 50
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method private internalClearSoundModelLocked()V
    .registers 2

    .prologue
    .line 545
    const/high16 v0, -0x80000000

    iput v0, p0, mCurrentSoundModelHandle:I

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 547
    return-void
.end method

.method private internalClearStateLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 527
    iput-boolean v2, p0, mStarted:Z

    .line 528
    iput-boolean v2, p0, mRequested:Z

    .line 530
    const/high16 v0, -0x80000000

    iput v0, p0, mKeyphraseId:I

    .line 531
    iput-object v3, p0, mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 532
    iput-object v3, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 535
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 538
    iget-object v0, p0, mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v0, :cond_22

    .line 539
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 540
    iput-object v3, p0, mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    .line 542
    :cond_22
    return-void
.end method

.method private onCallStateChangedLocked(Z)V
    .registers 3
    .param p1, "callActive"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, mCallActive:Z

    if-ne v0, p1, :cond_5

    .line 366
    :goto_4
    return-void

    .line 364
    :cond_5
    iput-boolean p1, p0, mCallActive:Z

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateRecognitionLocked(Z)I

    goto :goto_4
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .registers 3
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    .line 369
    iget-boolean v0, p0, mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_5

    .line 374
    :goto_4
    return-void

    .line 372
    :cond_5
    iput-boolean p1, p0, mIsPowerSaveMode:Z

    .line 373
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateRecognitionLocked(Z)I

    goto :goto_4
.end method

.method private onRecognitionAbortLocked()V
    .registers 3

    .prologue
    .line 389
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition aborted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, mRecognitionAborted:Z

    .line 393
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .registers 4

    .prologue
    .line 396
    const-string v1, "SoundTriggerHelper"

    const-string v2, "Recognition failure"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_7
    iget-object v1, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_12

    .line 399
    iget-object v1, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v2, -0x80000000

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_16
    .catchall {:try_start_7 .. :try_end_12} :catchall_22

    .line 404
    :cond_12
    invoke-direct {p0}, internalClearStateLocked()V

    .line 406
    :goto_15
    return-void

    .line 401
    :catch_16
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_22

    .line 404
    invoke-direct {p0}, internalClearStateLocked()V

    goto :goto_15

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    invoke-direct {p0}, internalClearStateLocked()V

    throw v1
.end method

.method private onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .prologue
    const/4 v4, 0x0

    .line 409
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Recognition success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 412
    .local v1, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v1, :cond_f

    array-length v2, v1

    if-nez v2, :cond_17

    .line 413
    :cond_f
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Invalid keyphrase recognition event!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_16
    :goto_16
    return-void

    .line 417
    :cond_17
    iget v2, p0, mKeyphraseId:I

    aget-object v3, v1, v4

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    if-eq v2, v3, :cond_28

    .line 418
    const-string v2, "SoundTriggerHelper"

    const-string/jumbo v3, "received onRecognition event for a different keyphrase"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 423
    :cond_28
    :try_start_28
    iget-object v2, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v2, :cond_31

    .line 424
    iget-object v2, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_42

    .line 430
    :cond_31
    :goto_31
    iput-boolean v4, p0, mStarted:Z

    .line 431
    iget-object v2, p0, mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    iput-boolean v2, p0, mRequested:Z

    .line 433
    iget-boolean v2, p0, mRequested:Z

    if-eqz v2, :cond_16

    .line 434
    const/4 v2, 0x1

    invoke-direct {p0, v2}, updateRecognitionLocked(Z)I

    goto :goto_16

    .line 426
    :catch_42
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SoundTriggerHelper"

    const-string v3, "RemoteException in onDetected"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method private onServiceDiedLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 440
    :try_start_1
    iget-object v1, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_c

    .line 441
    iget-object v1, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/16 v2, -0x20

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_1e
    .catchall {:try_start_1 .. :try_end_c} :catchall_38

    .line 446
    :cond_c
    invoke-direct {p0}, internalClearSoundModelLocked()V

    .line 447
    invoke-direct {p0}, internalClearStateLocked()V

    .line 448
    iget-object v1, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1d

    .line 449
    iget-object v1, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 450
    iput-object v3, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 453
    :cond_1d
    :goto_1d
    return-void

    .line 443
    :catch_1e
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_38

    .line 446
    invoke-direct {p0}, internalClearSoundModelLocked()V

    .line 447
    invoke-direct {p0}, internalClearStateLocked()V

    .line 448
    iget-object v1, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1d

    .line 449
    iget-object v1, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 450
    iput-object v3, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    goto :goto_1d

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v1

    invoke-direct {p0}, internalClearSoundModelLocked()V

    .line 447
    invoke-direct {p0}, internalClearStateLocked()V

    .line 448
    iget-object v2, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_4a

    .line 449
    iget-object v2, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 450
    iput-object v3, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_4a
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 381
    iget-boolean v0, p0, mServiceDisabled:Z

    if-ne p1, v0, :cond_5

    .line 386
    :goto_4
    return-void

    .line 384
    :cond_5
    iput-boolean p1, p0, mServiceDisabled:Z

    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateRecognitionLocked(Z)I

    goto :goto_4
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 378
    return-void
.end method

.method private updateRecognitionLocked(Z)I
    .registers 9
    .param p1, "notify"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 456
    iget-object v5, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v5, :cond_14

    iget-object v5, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v5, :cond_14

    iget v5, p0, mCurrentSoundModelHandle:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_14

    iget-object v5, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v5, :cond_15

    .line 522
    :cond_14
    :goto_14
    return v4

    .line 462
    :cond_15
    iget-boolean v5, p0, mRequested:Z

    if-eqz v5, :cond_5a

    iget-boolean v5, p0, mCallActive:Z

    if-nez v5, :cond_5a

    iget-boolean v5, p0, mServiceDisabled:Z

    if-nez v5, :cond_5a

    iget-boolean v5, p0, mIsPowerSaveMode:Z

    if-nez v5, :cond_5a

    move v1, v3

    .line 463
    .local v1, "start":Z
    :goto_26
    iget-boolean v5, p0, mStarted:Z

    if-eq v1, v5, :cond_14

    .line 469
    if-eqz v1, :cond_78

    .line 471
    iget-object v4, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v5, p0, mCurrentSoundModelHandle:I

    iget-object v6, p0, mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-virtual {v4, v5, v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v2

    .line 472
    .local v2, "status":I
    if-eqz v2, :cond_65

    .line 473
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecognition failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz p1, :cond_58

    .line 477
    :try_start_53
    iget-object v3, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_58} :catch_5c

    :cond_58
    :goto_58
    move v4, v2

    .line 493
    goto :goto_14

    .end local v1    # "start":Z
    .end local v2    # "status":I
    :cond_5a
    move v1, v4

    .line 462
    goto :goto_26

    .line 478
    .restart local v1    # "start":Z
    .restart local v2    # "status":I
    :catch_5c
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 483
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_65
    iput-boolean v3, p0, mStarted:Z

    .line 485
    if-eqz p1, :cond_58

    .line 487
    :try_start_69
    iget-object v3, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6e} :catch_6f

    goto :goto_58

    .line 488
    :catch_6f
    move-exception v0

    .line 489
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onRecognitionResumed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 496
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "status":I
    :cond_78
    const/4 v2, 0x0

    .line 497
    .restart local v2    # "status":I
    iget-boolean v3, p0, mRecognitionAborted:Z

    if-nez v3, :cond_aa

    .line 498
    iget-object v3, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v5, p0, mCurrentSoundModelHandle:I

    invoke-virtual {v3, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v2

    .line 502
    :goto_85
    if-eqz v2, :cond_b6

    .line 503
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz p1, :cond_a7

    .line 506
    :try_start_a2
    iget-object v3, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a7} :catch_ad

    :cond_a7
    :goto_a7
    move v4, v2

    .line 522
    goto/16 :goto_14

    .line 500
    :cond_aa
    iput-boolean v4, p0, mRecognitionAborted:Z

    goto :goto_85

    .line 507
    :catch_ad
    move-exception v0

    .line 508
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b6
    iput-boolean v4, p0, mStarted:Z

    .line 514
    if-eqz p1, :cond_a7

    .line 516
    :try_start_ba
    iget-object v3, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_bf} :catch_c0

    goto :goto_a7

    .line 517
    :catch_c0
    move-exception v0

    .line 518
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onRecognitionPaused"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 574
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_3
    const-string v0, "  module properties="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v0, :cond_78

    const-string/jumbo v0, "null"

    :goto_f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 577
    const-string v0, "  keyphrase ID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mKeyphraseId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 578
    const-string v0, "  sound model handle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurrentSoundModelHandle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 579
    const-string v0, "  sound model UUID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v0, :cond_7b

    const-string/jumbo v0, "null"

    :goto_32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 581
    const-string v0, "  current listener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_80

    const-string/jumbo v0, "null"

    :goto_41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 584
    const-string v0, "  requested="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mRequested:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 585
    const-string v0, "  started="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 586
    const-string v0, "  call active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCallActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 587
    const-string v0, "  power save mode active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsPowerSaveMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 588
    const-string v0, "  service disabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mServiceDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 589
    monitor-exit v1

    .line 590
    return-void

    .line 576
    :cond_78
    iget-object v0, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_f

    .line 580
    :cond_7b
    iget-object v0, p0, mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    goto :goto_32

    .line 582
    :cond_80
    iget-object v0, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_41

    .line 589
    :catchall_87
    move-exception v0

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw v0
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .prologue
    .line 304
    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_e

    .line 305
    :cond_6
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid recognition event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_d
    return-void

    .line 310
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_e
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_11
    iget-object v0, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_22

    .line 312
    const-string v0, "SoundTriggerHelper"

    const-string/jumbo v2, "received onRecognition event without any listener for it"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit v1

    goto :goto_d

    .line 327
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw v0

    .line 315
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_22
    :try_start_22
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    packed-switch v0, :pswitch_data_38

    .line 327
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_27
    monitor-exit v1

    goto :goto_d

    .line 318
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_29
    invoke-direct {p0}, onRecognitionAbortLocked()V

    goto :goto_27

    .line 321
    :pswitch_2d
    invoke-direct {p0}, onRecognitionFailureLocked()V

    goto :goto_27

    .line 324
    :pswitch_31
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_1f

    goto :goto_27

    .line 315
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_31
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method public onServiceDied()V
    .registers 3

    .prologue
    .line 352
    const-string v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_b
    invoke-direct {p0}, onServiceDiedLocked()V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onServiceStateChange(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 345
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    if-ne v0, p1, :cond_b

    :goto_6
    :try_start_6
    invoke-direct {p0, v0}, onServiceStateChangedLocked(Z)V

    .line 347
    monitor-exit v1

    .line 348
    return-void

    .line 346
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 347
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 332
    if-nez p1, :cond_a

    .line 333
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid sound model event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_9
    return-void

    .line 337
    :cond_a
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_d
    invoke-direct {p0, p1}, onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    .line 339
    monitor-exit v1

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v0
.end method

.method startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 15
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v4, -0x80000000

    .line 123
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-nez p4, :cond_c

    :cond_a
    move v3, v4

    .line 223
    :goto_b
    return v3

    .line 127
    :cond_c
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 140
    :try_start_f
    iget-boolean v8, p0, mStarted:Z

    if-nez v8, :cond_47

    .line 142
    iget-object v8, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eqz v8, :cond_55

    :goto_1b
    iput-boolean v5, p0, mCallActive:Z

    .line 144
    iget-object v5, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x20

    invoke-virtual {v5, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 148
    iget-object v5, p0, mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v5, :cond_3f

    .line 149
    new-instance v5, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v5, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v5, p0, mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    .line 150
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    :cond_3f
    iget-object v5, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v5

    iput-boolean v5, p0, mIsPowerSaveMode:Z

    .line 156
    :cond_47
    iget-object v5, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v5, :cond_57

    .line 157
    const-string v5, "SoundTriggerHelper"

    const-string v6, "Attempting startRecognition without the capability"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v7

    move v3, v4

    goto :goto_b

    :cond_55
    move v5, v6

    .line 142
    goto :goto_1b

    .line 160
    :cond_57
    iget-object v5, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v5, :cond_75

    .line 161
    iget-object v5, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v6, 0x0

    invoke-static {v5, p0, v6}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v5

    iput-object v5, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 162
    iget-object v5, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v5, :cond_75

    .line 163
    const-string v5, "SoundTriggerHelper"

    const-string/jumbo v6, "startRecognition cannot attach to sound trigger module"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v7

    move v3, v4

    goto :goto_b

    .line 171
    :cond_75
    iget v5, p0, mCurrentSoundModelHandle:I

    if-eq v5, v4, :cond_b1

    iget-object v5, p0, mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {p2, v5}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 173
    const-string v5, "SoundTriggerHelper"

    const-string v6, "Unloading previous sound model"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v5, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v6, p0, mCurrentSoundModelHandle:I

    invoke-virtual {v5, v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v3

    .line 175
    .local v3, "status":I
    if-eqz v3, :cond_ab

    .line 176
    const-string v5, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unloadSoundModel call failed with "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_ab
    invoke-direct {p0}, internalClearSoundModelLocked()V

    .line 179
    const/4 v5, 0x0

    iput-boolean v5, p0, mStarted:Z

    .line 184
    .end local v3    # "status":I
    :cond_b1
    iget-object v5, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v5, :cond_d2

    iget-object v5, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v5}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_d2

    .line 185
    const-string v5, "SoundTriggerHelper"

    const-string v6, "Canceling previous recognition"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_f .. :try_end_c8} :catchall_108

    .line 187
    :try_start_c8
    iget-object v5, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v6, -0x80000000

    invoke-interface {v5, v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cf} :catch_10b
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_108

    .line 191
    :goto_cf
    const/4 v5, 0x0

    :try_start_d0
    iput-object v5, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 195
    :cond_d2
    iget v2, p0, mCurrentSoundModelHandle:I

    .line 196
    .local v2, "soundModelHandle":I
    iget v5, p0, mCurrentSoundModelHandle:I

    if-eq v5, v4, :cond_dc

    iget-object v5, p0, mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v5, :cond_128

    .line 198
    :cond_dc
    const/4 v5, 0x1

    new-array v1, v5, [I

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    aput v6, v1, v5

    .line 199
    .local v1, "handle":[I
    iget-object v5, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v5, p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v3

    .line 200
    .restart local v3    # "status":I
    if-eqz v3, :cond_114

    .line 201
    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadSoundModel call failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v7

    goto/16 :goto_b

    .line 224
    .end local v1    # "handle":[I
    .end local v2    # "soundModelHandle":I
    .end local v3    # "status":I
    :catchall_108
    move-exception v4

    monitor-exit v7
    :try_end_10a
    .catchall {:try_start_d0 .. :try_end_10a} :catchall_108

    throw v4

    .line 188
    :catch_10b
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10c
    const-string v5, "SoundTriggerHelper"

    const-string v6, "RemoteException in onDetectionStopped"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cf

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "handle":[I
    .restart local v2    # "soundModelHandle":I
    .restart local v3    # "status":I
    :cond_114
    const/4 v5, 0x0

    aget v5, v1, v5

    if-ne v5, v4, :cond_125

    .line 205
    const-string v5, "SoundTriggerHelper"

    const-string/jumbo v6, "loadSoundModel call returned invalid sound model handle"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v7

    move v3, v4

    goto/16 :goto_b

    .line 208
    :cond_125
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 214
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :cond_128
    const/4 v4, 0x1

    iput-boolean v4, p0, mRequested:Z

    .line 215
    iput p1, p0, mKeyphraseId:I

    .line 216
    iput v2, p0, mCurrentSoundModelHandle:I

    .line 217
    iput-object p2, p0, mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 218
    iput-object p4, p0, mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 221
    iput-object p3, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 223
    const/4 v4, 0x0

    invoke-direct {p0, v4}, updateRecognitionLocked(Z)I

    move-result v3

    monitor-exit v7
    :try_end_13b
    .catchall {:try_start_10c .. :try_end_13b} :catchall_108

    goto/16 :goto_b
.end method

.method stopAllRecognitions()V
    .registers 5

    .prologue
    .line 286
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 287
    :try_start_3
    iget-object v1, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_b

    iget-object v1, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_d

    .line 288
    :cond_b
    monitor-exit v2

    .line 299
    :goto_c
    return-void

    .line 291
    :cond_d
    iget v1, p0, mCurrentSoundModelHandle:I

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_18

    .line 292
    monitor-exit v2

    goto :goto_c

    .line 298
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 295
    :cond_18
    const/4 v1, 0x0

    :try_start_19
    iput-boolean v1, p0, mRequested:Z

    .line 296
    const/4 v1, 0x0

    invoke-direct {p0, v1}, updateRecognitionLocked(Z)I

    move-result v0

    .line 297
    .local v0, "status":I
    invoke-direct {p0}, internalClearStateLocked()V

    .line 298
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_15

    goto :goto_c
.end method

.method stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    const/high16 v0, -0x80000000

    .line 238
    if-nez p2, :cond_5

    .line 278
    :goto_4
    return v0

    .line 242
    :cond_5
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 250
    :try_start_8
    iget-object v1, p0, moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_10

    iget-object v1, p0, mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_1c

    .line 251
    :cond_10
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without the capability"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    monitor-exit v2

    goto :goto_4

    .line 279
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1

    .line 255
    :cond_1c
    :try_start_1c
    iget-object v1, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v1, :cond_29

    .line 257
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    monitor-exit v2

    goto :goto_4

    .line 260
    :cond_29
    iget-object v1, p0, mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_3e

    .line 263
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition for another recognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    monitor-exit v2

    goto :goto_4

    .line 268
    :cond_3e
    const/4 v1, 0x0

    iput-boolean v1, p0, mRequested:Z

    .line 269
    const/4 v1, 0x0

    invoke-direct {p0, v1}, updateRecognitionLocked(Z)I

    move-result v0

    .line 270
    .local v0, "status":I
    if-eqz v0, :cond_4a

    .line 271
    monitor-exit v2

    goto :goto_4

    .line 277
    :cond_4a
    invoke-direct {p0}, internalClearStateLocked()V

    .line 278
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_19

    goto :goto_4
.end method
