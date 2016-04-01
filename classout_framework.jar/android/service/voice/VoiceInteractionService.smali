.class public Landroid/service/voice/VoiceInteractionService;
.super Landroid/app/Service;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionService$MyHandler;
    }
.end annotation


# static fields
.field static final MSG_LAUNCH_VOICE_ASSIST_FROM_KEYGUARD:I = 0x4

.field static final MSG_READY:I = 0x1

.field static final MSG_SHUTDOWN:I = 0x2

.field static final MSG_SOUND_MODELS_CHANGED:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VoiceInteractionService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.voice_interaction"


# instance fields
.field mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

.field private mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

.field mInterface:Landroid/service/voice/IVoiceInteractionService;

.field private mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final mLock:Ljava/lang/Object;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Landroid/service/voice/VoiceInteractionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, mInterface:Landroid/service/voice/IVoiceInteractionService;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method static synthetic access$000(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1
    .param p0, "x0"    # Landroid/service/voice/VoiceInteractionService;

    .prologue
    .line 53
    invoke-direct {p0}, onShutdownInternal()V

    return-void
.end method

.method static synthetic access$100(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1
    .param p0, "x0"    # Landroid/service/voice/VoiceInteractionService;

    .prologue
    .line 53
    invoke-direct {p0}, onSoundModelsChangedInternal()V

    return-void
.end method

.method public static isActiveService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_interaction_service"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "cur":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 152
    :cond_14
    :goto_14
    return v2

    .line 148
    :cond_15
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 149
    .local v1, "curComp":Landroid/content/ComponentName;
    if-eqz v1, :cond_14

    .line 152
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_14
.end method

.method private onShutdownInternal()V
    .registers 1

    .prologue
    .line 230
    invoke-virtual {p0}, onShutdown()V

    .line 236
    invoke-direct {p0}, safelyShutdownHotwordDetector()V

    .line 237
    return-void
.end method

.method private onSoundModelsChangedInternal()V
    .registers 2

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_1
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_a

    .line 251
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onSoundModelsChanged()V

    .line 253
    :cond_a
    monitor-exit p0

    .line 254
    return-void

    .line 253
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private safelyShutdownHotwordDetector()V
    .registers 3

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_19

    .line 293
    :try_start_3
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_14

    .line 294
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognition()Z

    .line 295
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->invalidate()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 298
    :cond_14
    monitor-exit v1

    .line 302
    :goto_15
    return-void

    .line 298
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_19} :catch_19

    .line 299
    :catch_19
    move-exception v0

    goto :goto_15
.end method


# virtual methods
.method public final createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 12
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .prologue
    .line 269
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-nez v0, :cond_c

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_c
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 274
    :try_start_f
    invoke-direct {p0}, safelyShutdownHotwordDetector()V

    .line 275
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v4, p0, mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v5, p0, mInterface:Landroid/service/voice/IVoiceInteractionService;

    iget-object v6, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/AlwaysOnHotwordDetector;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Landroid/service/voice/IVoiceInteractionService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    iput-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 277
    monitor-exit v7
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_26

    .line 278
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    return-object v0

    .line 277
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v7
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "VOICE INTERACTION"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_8
    const-string v0, "  AlwaysOnHotwordDetector"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-nez v0, :cond_18

    .line 310
    const-string v0, "    NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    :goto_16
    monitor-exit v1

    .line 315
    return-void

    .line 312
    :cond_18
    iget-object v0, p0, mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    const-string v2, "    "

    invoke-virtual {v0, v2, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_16

    .line 314
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getDisabledShowContext()I
    .registers 3

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 176
    :goto_6
    return v1

    .line 175
    :catch_7
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected final getKeyphraseEnrollmentInfo()Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    const-string v0, "android.service.voice.VoiceInteractionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 211
    iget-object v0, p0, mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 213
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 205
    new-instance v0, Landroid/service/voice/VoiceInteractionService$MyHandler;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$MyHandler;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    .line 206
    return-void
.end method

.method public onLaunchVoiceAssistFromKeyguard()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public onReady()V
    .registers 3

    .prologue
    .line 224
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 226
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 227
    return-void
.end method

.method public onShutdown()V
    .registers 1

    .prologue
    .line 245
    return-void
.end method

.method public setDisabledShowContext(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 167
    :goto_5
    return-void

    .line 165
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public showSession(Landroid/os/Bundle;I)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .prologue
    .line 193
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-nez v0, :cond_c

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_c
    :try_start_c
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 200
    :goto_13
    return-void

    .line 198
    :catch_14
    move-exception v0

    goto :goto_13
.end method
