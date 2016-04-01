.class final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAssistData:Landroid/os/Bundle;

.field final mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

.field final mBindIntent:Landroid/content/Intent;

.field mBound:Z

.field final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field final mCallingUid:I

.field mCanceled:Z

.field final mContext:Landroid/content/Context;

.field final mFullConnection:Landroid/content/ServiceConnection;

.field mFullyBound:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveAssistData:Z

.field mHaveScreenshot:Z

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final mLock:Ljava/lang/Object;

.field mPendingShowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionOwner:Landroid/os/IBinder;

.field mScreenshot:Landroid/graphics/Bitmap;

.field final mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

.field mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/IVoiceInteractionSession;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field mShowArgs:Landroid/os/Bundle;

.field private mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

.field mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field mShowFlags:I

.field mShown:Z

.field final mToken:Landroid/os/IBinder;

.field final mUser:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .registers 15
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "callback"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    .param p6, "callingUid"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, mToken:Landroid/os/IBinder;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 90
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 113
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, mFullConnection:Landroid/content/ServiceConnection;

    .line 122
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 135
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    .line 528
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    .line 150
    iput-object p1, p0, mLock:Ljava/lang/Object;

    .line 151
    iput-object p2, p0, mSessionComponentName:Landroid/content/ComponentName;

    .line 152
    iput p3, p0, mUser:I

    .line 153
    iput-object p4, p0, mContext:Landroid/content/Context;

    .line 154
    iput-object p5, p0, mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 155
    iput p6, p0, mCallingUid:I

    .line 156
    iput-object p7, p0, mHandler:Landroid/os/Handler;

    .line 157
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, mAm:Landroid/app/IActivityManager;

    .line 158
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 160
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_60
    iget-object v2, p0, mAm:Landroid/app/IActivityManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voicesession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_7d} :catch_b1

    move-result-object v1

    .line 168
    :goto_7e
    iput-object v1, p0, mPermissionOwner:Landroid/os/IBinder;

    .line 169
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.voice.VoiceInteractionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, mBindIntent:Landroid/content/Intent;

    .line 170
    iget-object v2, p0, mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBindIntent:Landroid/content/Intent;

    const/16 v4, 0x31

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, mUser:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, p0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, mBound:Z

    .line 174
    iget-boolean v2, p0, mBound:Z

    if-eqz v2, :cond_c4

    .line 176
    :try_start_a7
    iget-object v2, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, mToken:Landroid/os/IBinder;

    const/16 v4, 0x7ef

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_b0} :catch_bb

    .line 185
    :goto_b0
    return-void

    .line 165
    :catch_b1
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "voicesession"

    const-string v3, "AM dead"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_bb
    move-exception v0

    .line 179
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "VoiceInteractionServiceManager"

    const-string v3, "Failed adding window token"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b0

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_c4
    const-string v2, "VoiceInteractionServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed binding to voice interaction session service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .prologue
    .line 59
    invoke-direct {p0}, notifyPendingShowCallbacksFailedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .prologue
    .line 59
    invoke-direct {p0}, notifyPendingShowCallbacksShownLocked()V

    return-void
.end method

.method private notifyPendingShowCallbacksFailedLocked()V
    .registers 3

    .prologue
    .line 482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 484
    :try_start_9
    iget-object v1, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 482
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_17
    iget-object v1, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 489
    return-void

    .line 485
    :catch_1d
    move-exception v1

    goto :goto_14
.end method

.method private notifyPendingShowCallbacksShownLocked()V
    .registers 3

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 474
    :try_start_9
    iget-object v1, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 472
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    :cond_17
    iget-object v1, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 479
    return-void

    .line 475
    :catch_1d
    move-exception v1

    goto :goto_14
.end method


# virtual methods
.method public cancelLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 422
    invoke-virtual {p0}, hideLocked()Z

    .line 423
    const/4 v1, 0x1

    iput-boolean v1, p0, mCanceled:Z

    .line 424
    iget-boolean v1, p0, mBound:Z

    if-eqz v1, :cond_34

    .line 425
    iget-object v1, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_15

    .line 427
    :try_start_10
    iget-object v1, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_42

    .line 432
    :cond_15
    :goto_15
    iget-object v1, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_20

    .line 434
    :try_start_19
    iget-object v1, p0, mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_54

    .line 438
    :cond_20
    :goto_20
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 440
    :try_start_25
    iget-object v1, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_4b

    .line 444
    :goto_2c
    iput-boolean v4, p0, mBound:Z

    .line 445
    iput-object v3, p0, mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 446
    iput-object v3, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 447
    iput-object v3, p0, mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 449
    :cond_34
    iget-boolean v1, p0, mFullyBound:Z

    if-eqz v1, :cond_41

    .line 450
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 451
    iput-boolean v4, p0, mFullyBound:Z

    .line 453
    :cond_41
    return-void

    .line 428
    :catch_42
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "Voice interation session already dead"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4b
    move-exception v0

    .line 442
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "Failed removing window token"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_54
    move-exception v1

    goto :goto_20
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 457
    iput-object p1, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 458
    iput-object p2, p0, mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 459
    iget-boolean v0, p0, mShown:Z

    if-eqz v0, :cond_1a

    .line 461
    :try_start_8
    iget-object v0, p0, mShowArgs:Landroid/os/Bundle;

    iget v1, p0, mShowFlags:I

    iget-object v2, p0, mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {p1, v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, mShowArgs:Landroid/os/Bundle;

    .line 463
    const/4 v0, 0x0

    iput v0, p0, mShowFlags:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_1c

    .line 466
    :goto_17
    invoke-virtual {p0}, deliverSessionDataLocked()V

    .line 468
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 464
    :catch_1c
    move-exception v0

    goto :goto_17
.end method

.method deliverSessionDataLocked()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 334
    iget-object v0, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_7

    .line 382
    :cond_6
    :goto_6
    return-void

    .line 337
    :cond_7
    iget-boolean v0, p0, mHaveAssistData:Z

    if-eqz v0, :cond_7c

    .line 341
    iget-object v0, p0, mAssistData:Landroid/os/Bundle;

    if-eqz v0, :cond_8d

    .line 342
    iget-object v0, p0, mAssistData:Landroid/os/Bundle;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 343
    .local v6, "assistData":Landroid/os/Bundle;
    iget-object v0, p0, mAssistData:Landroid/os/Bundle;

    const-string/jumbo v2, "structure"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/assist/AssistStructure;

    .line 344
    .local v9, "structure":Landroid/app/assist/AssistStructure;
    iget-object v0, p0, mAssistData:Landroid/os/Bundle;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistContent;

    .line 345
    .local v7, "content":Landroid/app/assist/AssistContent;
    iget-object v0, p0, mAssistData:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.ASSIST_UID"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 346
    .local v3, "uid":I
    if-ltz v3, :cond_73

    if-eqz v7, :cond_73

    .line 347
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 348
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_60

    .line 349
    invoke-virtual {v8}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 350
    .local v1, "data":Landroid/content/ClipData;
    if-eqz v1, :cond_60

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 351
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v2

    iget v4, p0, mCallingUid:I

    iget-object v0, p0, mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 355
    .end local v1    # "data":Landroid/content/ClipData;
    :cond_60
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 356
    .restart local v1    # "data":Landroid/content/ClipData;
    if-eqz v1, :cond_73

    .line 357
    const/4 v2, 0x1

    iget v4, p0, mCallingUid:I

    iget-object v0, p0, mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 368
    .end local v1    # "data":Landroid/content/ClipData;
    .end local v3    # "uid":I
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_73
    :goto_73
    :try_start_73
    iget-object v0, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0, v6, v9, v7}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_78} :catch_93

    .line 371
    :goto_78
    iput-object v11, p0, mAssistData:Landroid/os/Bundle;

    .line 372
    iput-boolean v10, p0, mHaveAssistData:Z

    .line 374
    .end local v6    # "assistData":Landroid/os/Bundle;
    .end local v7    # "content":Landroid/app/assist/AssistContent;
    .end local v9    # "structure":Landroid/app/assist/AssistStructure;
    :cond_7c
    iget-boolean v0, p0, mHaveScreenshot:Z

    if-eqz v0, :cond_6

    .line 376
    :try_start_80
    iget-object v0, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, mScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_87} :catch_91

    .line 379
    :goto_87
    iput-object v11, p0, mScreenshot:Landroid/graphics/Bitmap;

    .line 380
    iput-boolean v10, p0, mHaveScreenshot:Z

    goto/16 :goto_6

    .line 363
    :cond_8d
    const/4 v6, 0x0

    .line 364
    .restart local v6    # "assistData":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 365
    .restart local v9    # "structure":Landroid/app/assist/AssistStructure;
    const/4 v7, 0x0

    .restart local v7    # "content":Landroid/app/assist/AssistContent;
    goto :goto_73

    .line 377
    .end local v6    # "assistData":Landroid/os/Bundle;
    .end local v7    # "content":Landroid/app/assist/AssistContent;
    .end local v9    # "structure":Landroid/app/assist/AssistStructure;
    :catch_91
    move-exception v0

    goto :goto_87

    .line 369
    .restart local v6    # "assistData":Landroid/os/Bundle;
    .restart local v7    # "content":Landroid/app/assist/AssistContent;
    .restart local v9    # "structure":Landroid/app/assist/AssistStructure;
    :catch_93
    move-exception v0

    goto :goto_78
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 513
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowArgs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mShowArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mShowFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 517
    iget-boolean v0, p0, mBound:Z

    if-eqz v0, :cond_78

    .line 518
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mService:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSession="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInteractor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 522
    :cond_78
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHaveAssistData:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 523
    iget-boolean v0, p0, mHaveAssistData:Z

    if-eqz v0, :cond_98

    .line 524
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mAssistData:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 526
    :cond_98
    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "flags":I
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_structure_enabled"

    iget v3, p0, mUser:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_14

    .line 191
    or-int/lit8 v0, v0, 0x1

    .line 193
    :cond_14
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_screenshot_enabled"

    iget v3, p0, mUser:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_26

    .line 195
    or-int/lit8 v0, v0, 0x2

    .line 197
    :cond_26
    return v0
.end method

.method grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V
    .registers 13
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 317
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 319
    :cond_12
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 320
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 321
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 323
    :cond_2a
    return-void
.end method

.method grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .registers 14
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    .line 328
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_16

    .line 329
    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V

    .line 328
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 331
    :cond_16
    return-void
.end method

.method grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 312
    :goto_c
    return-void

    .line 295
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 298
    .local v10, "ident":J
    :try_start_11
    iget-object v0, p0, mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    move v1, p3

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 301
    iget v0, p0, mUser:I

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 302
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 303
    iget-object v0, p0, mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, mPermissionOwner:Landroid/os/IBinder;

    const/4 v5, 0x1

    iget v7, p0, mUser:I

    move v2, p3

    move-object/from16 v3, p5

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3d} :catch_41
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_3d} :catch_46
    .catchall {:try_start_11 .. :try_end_3d} :catchall_52

    .line 309
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 305
    .end local v6    # "sourceUserId":I
    :catch_41
    move-exception v0

    .line 309
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 306
    :catch_46
    move-exception v8

    .line 307
    .local v8, "e":Ljava/lang/SecurityException;
    :try_start_47
    const-string v0, "VoiceInteractionServiceManager"

    const-string v1, "Can\'t propagate permission"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_52

    .line 309
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .end local v8    # "e":Ljava/lang/SecurityException;
    :catchall_52
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public hideLocked()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 385
    iget-boolean v1, p0, mBound:Z

    if-eqz v1, :cond_41

    .line 386
    iget-boolean v1, p0, mShown:Z

    if-eqz v1, :cond_33

    .line 387
    iput-boolean v0, p0, mShown:Z

    .line 388
    iput-object v2, p0, mShowArgs:Landroid/os/Bundle;

    .line 389
    iput v0, p0, mShowFlags:I

    .line 390
    iput-boolean v0, p0, mHaveAssistData:Z

    .line 391
    iput-object v2, p0, mAssistData:Landroid/os/Bundle;

    .line 392
    iget-object v1, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_1d

    .line 394
    :try_start_18
    iget-object v1, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_46

    .line 399
    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v1, p0, mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, mPermissionOwner:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget v5, p0, mUser:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_44

    .line 405
    :goto_28
    iget-object v1, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_33

    .line 407
    :try_start_2c
    iget-object v1, p0, mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_42

    .line 412
    :cond_33
    :goto_33
    iget-boolean v1, p0, mFullyBound:Z

    if-eqz v1, :cond_40

    .line 413
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 414
    iput-boolean v0, p0, mFullyBound:Z

    .line 416
    :cond_40
    const/4 v0, 0x1

    .line 418
    :cond_41
    return v0

    .line 408
    :catch_42
    move-exception v1

    goto :goto_33

    .line 403
    :catch_44
    move-exception v1

    goto :goto_28

    .line 395
    :catch_46
    move-exception v1

    goto :goto_1d
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 493
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 494
    :try_start_3
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    move-result-object v1

    iput-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 495
    iget-boolean v1, p0, mCanceled:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    if-nez v1, :cond_18

    .line 497
    :try_start_d
    iget-object v1, p0, mService:Landroid/service/voice/IVoiceInteractionSessionService;

    iget-object v3, p0, mToken:Landroid/os/IBinder;

    iget-object v4, p0, mShowArgs:Landroid/os/Bundle;

    iget v5, p0, mShowFlags:I

    invoke-interface {v1, v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_1a
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    .line 502
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit v2

    .line 503
    return-void

    .line 498
    :catch_1a
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v3, "Failed adding window token"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 502
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 507
    iget-object v0, p0, mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 509
    return-void
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 16
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "disabledContext"    # I
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 202
    iget-boolean v4, p0, mBound:Z

    if-eqz v4, :cond_e9

    .line 203
    iget-boolean v4, p0, mFullyBound:Z

    if-nez v4, :cond_1e

    .line 204
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mBindIntent:Landroid/content/Intent;

    iget-object v6, p0, mFullConnection:Landroid/content/ServiceConnection;

    const v7, 0xc000001

    new-instance v8, Landroid/os/UserHandle;

    iget v9, p0, mUser:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    iput-boolean v4, p0, mFullyBound:Z

    .line 209
    :cond_1e
    const/4 v4, 0x1

    iput-boolean v4, p0, mShown:Z

    .line 210
    const/4 v0, 0x1

    .line 212
    .local v0, "isAssistDataAllowed":Z
    :try_start_22
    iget-object v4, p0, mAm:Landroid/app/IActivityManager;

    invoke-interface {v4}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_f9

    move-result v0

    .line 215
    :goto_28
    invoke-virtual {p0}, getUserDisabledShowContextLocked()I

    move-result v4

    or-int/2addr p3, v4

    .line 216
    if-eqz v0, :cond_bd

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_bd

    const/4 v3, 0x1

    .line 218
    .local v3, "structureEnabled":Z
    :goto_34
    if-eqz v0, :cond_c0

    if-eqz v3, :cond_c0

    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_c0

    const/4 v2, 0x1

    .line 220
    .local v2, "screenshotEnabled":Z
    :goto_3d
    iput-object p1, p0, mShowArgs:Landroid/os/Bundle;

    .line 221
    iput p2, p0, mShowFlags:I

    .line 222
    const/4 v4, 0x0

    iput-boolean v4, p0, mHaveAssistData:Z

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "needDisclosure":Z
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_d2

    .line 225
    iget-object v4, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x31

    iget v6, p0, mCallingUid:I

    iget-object v7, p0, mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_cb

    if-eqz v3, :cond_cb

    .line 229
    :try_start_5d
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "assist_with_context"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 230
    iget-object v4, p0, mAm:Landroid/app/IActivityManager;

    const/4 v5, 0x1

    iget-object v6, p0, mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v4, v5, v6, p5}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_6d} :catch_f6

    move-result v4

    if-eqz v4, :cond_c3

    .line 232
    const/4 v1, 0x1

    .line 248
    :goto_71
    const/4 v4, 0x0

    iput-boolean v4, p0, mHaveScreenshot:Z

    .line 249
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_dd

    .line 250
    iget-object v4, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x32

    iget v6, p0, mCallingUid:I

    iget-object v7, p0, mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_d6

    if-eqz v2, :cond_d6

    .line 254
    :try_start_8c
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "assist_with_screen"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 255
    const/4 v1, 0x1

    .line 256
    iget-object v4, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_9c} :catch_f4

    .line 266
    :goto_9c
    if-eqz v1, :cond_a5

    .line 267
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_a5
    iget-object v4, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_e1

    .line 271
    :try_start_a9
    iget-object v4, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v5, p0, mShowArgs:Landroid/os/Bundle;

    iget v6, p0, mShowFlags:I

    invoke-interface {v4, v5, v6, p4}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 272
    const/4 v4, 0x0

    iput-object v4, p0, mShowArgs:Landroid/os/Bundle;

    .line 273
    const/4 v4, 0x0

    iput v4, p0, mShowFlags:I
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_b8} :catch_f2

    .line 276
    :goto_b8
    invoke-virtual {p0}, deliverSessionDataLocked()V

    .line 280
    :cond_bb
    :goto_bb
    const/4 v4, 0x1

    .line 288
    .end local v0    # "isAssistDataAllowed":Z
    .end local v1    # "needDisclosure":Z
    .end local v2    # "screenshotEnabled":Z
    .end local v3    # "structureEnabled":Z
    :goto_bc
    return v4

    .line 216
    .restart local v0    # "isAssistDataAllowed":Z
    :cond_bd
    const/4 v3, 0x0

    goto/16 :goto_34

    .line 218
    .restart local v3    # "structureEnabled":Z
    :cond_c0
    const/4 v2, 0x0

    goto/16 :goto_3d

    .line 235
    .restart local v1    # "needDisclosure":Z
    .restart local v2    # "screenshotEnabled":Z
    :cond_c3
    const/4 v4, 0x1

    :try_start_c4
    iput-boolean v4, p0, mHaveAssistData:Z

    .line 236
    const/4 v4, 0x0

    iput-object v4, p0, mAssistData:Landroid/os/Bundle;
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c9} :catch_f6

    .line 237
    const/4 v2, 0x0

    goto :goto_71

    .line 242
    :cond_cb
    const/4 v4, 0x1

    iput-boolean v4, p0, mHaveAssistData:Z

    .line 243
    const/4 v4, 0x0

    iput-object v4, p0, mAssistData:Landroid/os/Bundle;

    goto :goto_71

    .line 246
    :cond_d2
    const/4 v4, 0x0

    iput-object v4, p0, mAssistData:Landroid/os/Bundle;

    goto :goto_71

    .line 260
    :cond_d6
    const/4 v4, 0x1

    iput-boolean v4, p0, mHaveScreenshot:Z

    .line 261
    const/4 v4, 0x0

    iput-object v4, p0, mScreenshot:Landroid/graphics/Bitmap;

    goto :goto_9c

    .line 264
    :cond_dd
    const/4 v4, 0x0

    iput-object v4, p0, mScreenshot:Landroid/graphics/Bitmap;

    goto :goto_9c

    .line 277
    :cond_e1
    if-eqz p4, :cond_bb

    .line 278
    iget-object v4, p0, mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 282
    .end local v0    # "isAssistDataAllowed":Z
    .end local v1    # "needDisclosure":Z
    .end local v2    # "screenshotEnabled":Z
    .end local v3    # "structureEnabled":Z
    :cond_e9
    if-eqz p4, :cond_ee

    .line 284
    :try_start_eb
    invoke-interface {p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_ee} :catch_f0

    .line 288
    :cond_ee
    :goto_ee
    const/4 v4, 0x0

    goto :goto_bc

    .line 285
    :catch_f0
    move-exception v4

    goto :goto_ee

    .line 274
    .restart local v0    # "isAssistDataAllowed":Z
    .restart local v1    # "needDisclosure":Z
    .restart local v2    # "screenshotEnabled":Z
    .restart local v3    # "structureEnabled":Z
    :catch_f2
    move-exception v4

    goto :goto_b8

    .line 257
    :catch_f4
    move-exception v4

    goto :goto_9c

    .line 239
    :catch_f6
    move-exception v4

    goto/16 :goto_71

    .line 213
    .end local v1    # "needDisclosure":Z
    .end local v2    # "screenshotEnabled":Z
    .end local v3    # "structureEnabled":Z
    :catch_f9
    move-exception v4

    goto/16 :goto_28
.end method
