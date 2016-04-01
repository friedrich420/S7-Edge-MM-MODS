.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;


# static fields
.field static final CLOSE_REASON_VOICE_INTERACTION:Ljava/lang/String; = "voiceinteraction"

.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field final mAm:Landroid/app/IActivityManager;

.field mBound:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mComponent:Landroid/content/ComponentName;

.field final mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mDisabledShowContext:I

.field final mHandler:Landroid/os/Handler;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

.field final mLock:Ljava/lang/Object;

.field mService:Landroid/service/voice/IVoiceInteractionService;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field final mUser:I

.field final mValid:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "userHandle"    # I
    .param p5, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v7, p0, mBound:Z

    .line 71
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v3, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v3, p0, mConnection:Landroid/content/ServiceConnection;

    .line 110
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 112
    iput-object p3, p0, mLock:Ljava/lang/Object;

    .line 113
    iput p4, p0, mUser:I

    .line 114
    iput-object p5, p0, mComponent:Landroid/content/ComponentName;

    .line 115
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, mAm:Landroid/app/IActivityManager;

    .line 118
    :try_start_25
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, mUser:I

    invoke-direct {v2, v3, p5, v4}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_30} :catch_5f

    .line 127
    .local v2, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    iput-object v2, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 128
    iget-object v3, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 129
    const-string v3, "VoiceInteractionServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad voice interaction service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object v6, p0, mSessionComponentName:Landroid/content/ComponentName;

    .line 131
    iput-object v6, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 132
    iput-boolean v7, p0, mValid:Z

    .line 143
    .end local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :goto_5e
    return-void

    .line 119
    :catch_5f
    move-exception v0

    .line 120
    .local v0, "e":Landroid/util/AndroidException;
    :goto_60
    const-string v3, "VoiceInteractionServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice interaction service not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iput-object v6, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 122
    iput-object v6, p0, mSessionComponentName:Landroid/content/ComponentName;

    .line 123
    iput-object v6, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 124
    iput-boolean v7, p0, mValid:Z

    goto :goto_5e

    .line 135
    .end local v0    # "e":Landroid/util/AndroidException;
    .restart local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_81
    const/4 v3, 0x1

    iput-boolean v3, p0, mValid:Z

    .line 136
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, mSessionComponentName:Landroid/content/ComponentName;

    .line 138
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 140
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v6, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_5e

    .line 119
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_b4
    move-exception v0

    goto :goto_60
.end method


# virtual methods
.method public closeSystemDialogsLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_a

    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_12

    .line 209
    :cond_a
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "closeSystemDialogs does not match active session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_11
    return-void

    .line 212
    :cond_12
    iget-object v1, p0, mAm:Landroid/app/IActivityManager;

    const-string/jumbo v2, "voiceinteraction"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_11

    .line 213
    :catch_1b
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 164
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_a

    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_14

    .line 165
    :cond_a
    const-string v0, "VoiceInteractionServiceManager"

    const-string/jumbo v1, "deliverNewSession does not match active session"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    .line 169
    :goto_13
    return v0

    .line 168
    :cond_14
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    .line 169
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 255
    iget-boolean v0, p0, mValid:Z

    if-nez v0, :cond_1e

    .line 256
    const-string v0, "  NOT VALID: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-nez v0, :cond_14

    .line 258
    const-string/jumbo v0, "no info"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    :cond_13
    :goto_13
    return-void

    .line 260
    :cond_14
    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 264
    :cond_1e
    const-string v0, "  mUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 265
    const-string v0, "  mComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const-string v0, "  Session service="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string v0, "  Service info:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 269
    const-string v0, "  Application info:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 271
    const-string v0, "  Recognition service="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    const-string v0, "  Settings activity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    const-string v0, "  Supports assist="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    const-string v0, "  Supports launch from keyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 276
    iget v0, p0, mDisabledShowContext:I

    if-eqz v0, :cond_ba

    .line 277
    const-string v0, "  mDisabledShowContext="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget v0, p0, mDisabledShowContext:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    :cond_ba
    const-string v0, "  mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_13

    .line 282
    const-string v0, "  Active session:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const-string v1, "    "

    invoke-virtual {v0, v1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto/16 :goto_13
.end method

.method public finishLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 219
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_a

    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_13

    .line 220
    :cond_a
    const-string v0, "VoiceInteractionServiceManager"

    const-string/jumbo v1, "finish does not match active session"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_12
    return-void

    .line 223
    :cond_13
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    goto :goto_12
.end method

.method public getDisabledShowContextLocked(I)I
    .registers 6
    .param p1, "callingUid"    # I

    .prologue
    .line 237
    iget-object v1, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 238
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_2f

    .line 239
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match active uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_2f
    iget v1, p0, mDisabledShowContext:I

    return v1
.end method

.method public getUserDisabledShowContextLocked(I)I
    .registers 6
    .param p1, "callingUid"    # I

    .prologue
    .line 246
    iget-object v1, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 247
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_2f

    .line 248
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match active uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_2f
    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_3a

    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result v1

    :goto_39
    return v1

    :cond_3a
    const/4 v1, 0x0

    goto :goto_39
.end method

.method public hideSessionLocked()Z
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_b

    .line 157
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    move-result v0

    .line 159
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 5

    .prologue
    .line 298
    iget-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v1, :cond_1f

    .line 299
    const-string v1, "VoiceInteractionServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not bound to voice interaction service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_1e
    return-void

    .line 303
    :cond_1f
    :try_start_1f
    iget-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->launchVoiceAssistFromKeyguard()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    .line 304
    :catch_25
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "RemoteException while calling launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method notifySoundModelsChangedLocked()V
    .registers 5

    .prologue
    .line 334
    iget-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v1, :cond_1f

    .line 335
    const-string v1, "VoiceInteractionServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not bound to voice interaction service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_1e
    return-void

    .line 339
    :cond_1f
    :try_start_1f
    iget-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->soundModelsChanged()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    .line 340
    :catch_25
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "RemoteException while calling soundModelsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .prologue
    .line 347
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_3
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, finishLocked(Landroid/os/IBinder;)V

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setDisabledShowContextLocked(II)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "flags"    # I

    .prologue
    .line 228
    iget-object v1, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 229
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_2f

    .line 230
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match active uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_2f
    iput p2, p0, mDisabledShowContext:I

    .line 234
    return-void
.end method

.method public setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keepAwake"    # Z

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_a

    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_13

    .line 197
    :cond_a
    const-string v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "setKeepAwake does not match active session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_12
    return-void

    .line 200
    :cond_13
    iget-object v1, p0, mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2, p2}, Landroid/app/IActivityManager;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 201
    :catch_1d
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 13
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 147
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-nez v0, :cond_20

    .line 148
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, p0, mLock:Ljava/lang/Object;

    iget-object v2, p0, mSessionComponentName:Landroid/content/ComponentName;

    iget v3, p0, mUser:I

    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, mHandler:Landroid/os/Handler;

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V

    iput-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 151
    :cond_20
    iget-object v0, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget v3, p0, mDisabledShowContext:I

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method shutdownLocked()V
    .registers 4

    .prologue
    .line 312
    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_c

    .line 313
    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked()V

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 317
    :cond_c
    :try_start_c
    iget-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v1, :cond_15

    .line 318
    iget-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->shutdown()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_2f

    .line 324
    :cond_15
    :goto_15
    iget-boolean v1, p0, mBound:Z

    if-eqz v1, :cond_23

    .line 325
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 326
    const/4 v1, 0x0

    iput-boolean v1, p0, mBound:Z

    .line 328
    :cond_23
    iget-boolean v1, p0, mValid:Z

    if-eqz v1, :cond_2e

    .line 329
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    :cond_2e
    return-void

    .line 320
    :catch_2f
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "RemoteException in shutdown"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method startLocked()V
    .registers 7

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, mUser:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, mBound:Z

    .line 292
    iget-boolean v1, p0, mBound:Z

    if-nez v1, :cond_3e

    .line 293
    const-string v1, "VoiceInteractionServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed binding to voice interaction service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3e
    return-void
.end method

.method public startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 20
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_c

    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_16

    .line 176
    :cond_c
    const-string v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "startVoiceActivity does not match active session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, -0x6

    .line 186
    :goto_15
    return v1

    .line 179
    :cond_16
    iget-object v1, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-nez v1, :cond_26

    .line 180
    const-string v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "startVoiceActivity not allowed on hidden session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, -0x6

    goto :goto_15

    .line 183
    :cond_26
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_58

    .line 184
    .end local p4    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :try_start_2d
    const-string v1, "android.intent.category.VOICE"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v1, 0x18000000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v7, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, p0, mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v8, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, mUser:I

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_54} :catch_61

    move-result v1

    move-object/from16 p4, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_15

    .line 189
    :catch_58
    move-exception v13

    .line 190
    .local v13, "e":Landroid/os/RemoteException;
    :goto_59
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 189
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_61
    move-exception v13

    move-object/from16 p4, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_59
.end method
