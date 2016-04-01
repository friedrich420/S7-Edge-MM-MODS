.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 669
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 674
    iput-boolean v0, p0, mVoiceButtonDown:Z

    .line 675
    iput-boolean v0, p0, mVoiceButtonHandled:Z

    .line 1215
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$3200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1305
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, mKeyEventDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;IIILcom/android/server/media/MediaSessionRecord;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 669
    invoke-direct {p0, p1, p2, p3, p4}, dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method private dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    .registers 20
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 1004
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1005
    if-nez p4, :cond_7e

    const/4 v12, 0x0

    .line 1006
    .local v12, "description":Ljava/lang/String;
    :goto_9
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", suggestedStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v12    # "description":Ljava/lang/String;
    :cond_45
    const/4 v14, 0x0

    .line 1011
    .local v14, "preferSuggestedStream":Z
    invoke-direct/range {p0 .. p1}, isValidLocalStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1013
    const/4 v14, 0x1

    .line 1015
    :cond_56
    if-eqz p4, :cond_5a

    if-eqz v14, :cond_a8

    .line 1016
    :cond_5a
    move/from16 v0, p3

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_83

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_83

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_83

    .line 1019
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1020
    const-string v1, "MediaSessionService"

    const-string v2, "No active session to adjust, skipping media only volume event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_7d
    :goto_7d
    return-void

    .line 1005
    .end local v14    # "preferSuggestedStream":Z
    :cond_7e
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    .line 1025
    .restart local v14    # "preferSuggestedStream":Z
    :cond_83
    :try_start_83
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1026
    .local v5, "packageName":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v1

    const-string v6, "MediaSessionService"

    move/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_9e} :catch_9f

    goto :goto_7d

    .line 1028
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_9f
    move-exception v13

    .line 1029
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionService"

    const-string v2, "Error adjusting default volume."

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 1032
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_a8
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v6, p4

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    goto :goto_7d
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .registers 22
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 1074
    if-eqz p3, :cond_45

    .line 1075
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1076
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending media key to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_24
    if-eqz p2, :cond_2d

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1083
    :cond_2d
    if-eqz p2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$3000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v2

    :goto_37
    move-object/from16 v0, p0

    iget-object v3, v0, mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V

    .line 1146
    :goto_42
    return-void

    .line 1083
    :cond_43
    const/4 v2, -0x1

    goto :goto_37

    .line 1088
    :cond_45
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    .line 1089
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 1090
    .local v16, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_65

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_113

    .line 1092
    :cond_65
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1093
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending media key to last known PendingIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or restored Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_95
    if-eqz p2, :cond_9e

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1100
    :cond_9e
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v5, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1104
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1106
    :try_start_b1
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_f8

    .line 1107
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_f6

    move-object/from16 v0, p0

    iget-object v4, v0, mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$3000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v4

    :goto_cd
    move-object/from16 v0, p0

    iget-object v6, v0, mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_d5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_b1 .. :try_end_d5} :catch_d7

    goto/16 :goto_42

    .line 1115
    :catch_d7
    move-exception v15

    .line 1116
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending key event to media button receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1107
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_f6
    const/4 v4, -0x1

    goto :goto_cd

    .line 1111
    :cond_f8
    :try_start_f8
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_111
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_f8 .. :try_end_111} :catch_d7

    goto/16 :goto_42

    .line 1120
    .end local v5    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_113
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 1121
    const-string v2, "MediaSessionService"

    const-string v3, "Sending media key ordered broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_120
    if-eqz p2, :cond_12d

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1127
    :cond_12d
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1129
    .local v7, "keyIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1131
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1132
    if-eqz p2, :cond_14a

    .line 1133
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1141
    :cond_14a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$3200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_42
.end method

.method private handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .registers 10
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1039
    if-eqz p3, :cond_10

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1041
    invoke-direct {p0, p1, p2, p3}, dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1070
    :cond_f
    :goto_f
    return-void

    .line 1044
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1045
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2a

    move v2, v3

    .line 1046
    .local v2, "isLongPress":Z
    :goto_1d
    if-nez v0, :cond_51

    .line 1047
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2c

    .line 1048
    iput-boolean v3, p0, mVoiceButtonDown:Z

    .line 1049
    iput-boolean v4, p0, mVoiceButtonHandled:Z

    goto :goto_f

    .end local v2    # "isLongPress":Z
    :cond_2a
    move v2, v4

    .line 1045
    goto :goto_1d

    .line 1050
    .restart local v2    # "isLongPress":Z
    :cond_2c
    iget-boolean v4, p0, mVoiceButtonDown:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, mVoiceButtonHandled:Z

    if-nez v4, :cond_f

    if-eqz v2, :cond_f

    .line 1051
    iput-boolean v3, p0, mVoiceButtonHandled:Z

    .line 1053
    invoke-direct {p0}, isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 1054
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "MediaSessionService"

    const-string/jumbo v4, "don\'t call VoiceInteraction during setup-wizard"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1056
    :cond_4d
    invoke-direct {p0, p2}, startVoiceInput(Z)V

    goto :goto_f

    .line 1059
    :cond_51
    if-ne v0, v3, :cond_f

    .line 1060
    iget-boolean v3, p0, mVoiceButtonDown:Z

    if-eqz v3, :cond_f

    .line 1061
    iput-boolean v4, p0, mVoiceButtonDown:Z

    .line 1062
    iget-boolean v3, p0, mVoiceButtonHandled:Z

    if-nez v3, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1064
    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1065
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1, p2, p3}, dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1066
    invoke-direct {p0, p1, p2, p3}, dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto :goto_f
.end method

.method private handleVolumeKeyLongPress(IIIZ)V
    .registers 8
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "down"    # Z

    .prologue
    .line 890
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLongPressLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2300(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 891
    if-eqz p4, :cond_27

    .line 892
    :try_start_9
    iget-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    if-eqz v0, :cond_13

    .line 893
    iget-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->updateInfo(IIIZ)V

    .line 895
    :cond_13
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$1;)V

    iput-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    .line 896
    iget-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->updateInfo(IIIZ)V

    .line 897
    iget-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->start()V

    .line 904
    :cond_25
    :goto_25
    monitor-exit v1

    .line 905
    return-void

    .line 899
    :cond_27
    iget-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    if-eqz v0, :cond_25

    .line 900
    iget-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->updateInfo(IIIZ)V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, mVolumeKeyLongPressControlThread:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;

    goto :goto_25

    .line 904
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 679
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1205
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method private isValidLocalStreamType(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 1211
    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isVoiceKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1201
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private startVoiceInput(Z)V
    .registers 12
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1149
    const/4 v5, 0x0

    .line 1155
    .local v5, "voiceIntent":Landroid/content/Intent;
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v8}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1156
    .local v4, "pm":Landroid/os/PowerManager;
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->access$3300(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v8

    if-eqz v8, :cond_82

    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->access$3300(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_82

    move v2, v6

    .line 1157
    .local v2, "isLocked":Z
    :goto_27
    if-nez v2, :cond_94

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_94

    .line 1164
    iget-object v6, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1165
    .local v3, "pkm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.sec.action.SVOICE"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1166
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_84

    .line 1167
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "MediaSessionService"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "pkm":Landroid/content/pm/PackageManager;
    :goto_59
    if-eqz p1, :cond_64

    .line 1183
    iget-object v6, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1186
    :cond_64
    if-eqz v5, :cond_76

    .line 1187
    const/high16 v6, 0x10800000

    :try_start_68
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1189
    iget-object v6, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_76
    .catch Landroid/content/ActivityNotFoundException; {:try_start_68 .. :try_end_76} :catch_b9
    .catchall {:try_start_68 .. :try_end_76} :catchall_de

    .line 1194
    :cond_76
    if-eqz p1, :cond_81

    .line 1195
    iget-object v6, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1198
    :cond_81
    :goto_81
    return-void

    .end local v2    # "isLocked":Z
    :cond_82
    move v2, v7

    .line 1156
    goto :goto_27

    .line 1170
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "isLocked":Z
    .restart local v3    # "pkm":Landroid/content/pm/PackageManager;
    :cond_84
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "MediaSessionService"

    const-string/jumbo v7, "voice-based interactions: about to use SVOICE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 1176
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "pkm":Landroid/content/pm/PackageManager;
    :cond_94
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1177
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.extras.EXTRA_SECURE"

    if-eqz v2, :cond_b7

    iget-object v9, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$3300(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_b7

    :goto_ab
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1179
    const-string v6, "MediaSessionService"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_b7
    move v6, v7

    .line 1177
    goto :goto_ab

    .line 1191
    :catch_b9
    move-exception v1

    .line 1192
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_ba
    const-string v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity for search: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_ba .. :try_end_d2} :catchall_de

    .line 1194
    if-eqz p1, :cond_81

    .line 1195
    iget-object v6, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_81

    .line 1194
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_de
    move-exception v6

    if-eqz p1, :cond_ea

    .line 1195
    iget-object v7, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_ea
    throw v6
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 13
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 985
    const/4 v6, 0x0

    .line 986
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_d

    .line 989
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 990
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 994
    :cond_d
    const-string/jumbo v5, "getSessions"

    move v0, p3

    move v1, p4

    move v2, p2

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 998
    .local v7, "resolvedUserId":I
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 999
    return v7
.end method


# virtual methods
.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 16
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 730
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 731
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 734
    .local v10, "token":J
    :try_start_c
    invoke-direct {p0, p2, p3, v5, v6}, verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 735
    .local v4, "resolvedUserId":I
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_5b

    .line 736
    :try_start_17
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v8

    .line 737
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_2c

    .line 738
    const-string v1, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    monitor-exit v9
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_58

    .line 752
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 754
    :goto_2b
    return-void

    .line 741
    :cond_2c
    :try_start_2c
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_58

    .line 744
    .local v0, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_35
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3d} :catch_4b
    .catchall {:try_start_35 .. :try_end_3d} :catchall_58

    .line 749
    :try_start_3d
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    monitor-exit v9
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_58

    .line 752
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2b

    .line 745
    :catch_4b
    move-exception v7

    .line 746
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4c
    const-string v1, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    monitor-exit v9
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_58

    .line 752
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2b

    .line 750
    .end local v0    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "index":I
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v9
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    .line 752
    .end local v4    # "resolvedUserId":I
    :catchall_5b
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 687
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 688
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 690
    .local v10, "token":J
    :try_start_c
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 691
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "createSession"

    move/from16 v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 693
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_2c

    .line 694
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Controller callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_27

    .line 699
    .end local v5    # "resolvedUserId":I
    :catchall_27
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 696
    .restart local v5    # "resolvedUserId":I
    :cond_2c
    :try_start_2c
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v0

    move v4, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    # invokes: Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_27

    move-result-object v2

    .line 699
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .registers 13
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 910
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 911
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 913
    .local v3, "uid":I
    const/high16 v7, 0x20000000

    and-int/2addr v7, p3

    if-eqz v7, :cond_3d

    const/4 v0, 0x1

    .line 914
    .local v0, "keyDown":Z
    :goto_f
    const v7, -0x20000001

    and-int/2addr p3, v7

    .line 915
    const/16 v7, 0x3e8

    if-ne v3, v7, :cond_3f

    .line 916
    invoke-direct {p0, p1, p2, p3, v0}, handleVolumeKeyLongPress(IIIZ)V

    .line 921
    :goto_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 923
    .local v4, "token":J
    :try_start_1e
    iget-object v6, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_46

    .line 924
    :try_start_25
    iget-object v6, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v6

    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 926
    .local v2, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-direct {p0, p1, p2, p3, v2}, dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V

    .line 927
    monitor-exit v7
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_43

    .line 929
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    return-void

    .end local v0    # "keyDown":Z
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v4    # "token":J
    :cond_3d
    move v0, v6

    .line 913
    goto :goto_f

    .line 918
    .restart local v0    # "keyDown":Z
    :cond_3f
    invoke-direct {p0, p1, p2, p3, v6}, handleVolumeKeyLongPress(IIIZ)V

    goto :goto_1a

    .line 927
    .restart local v4    # "token":J
    :catchall_43
    move-exception v6

    :try_start_44
    monitor-exit v7
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v6
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 929
    :catchall_46
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 14
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 785
    const-string/jumbo v8, "hmtState"

    invoke-static {v8}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "mHmtState":Ljava/lang/String;
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-static {v8}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 788
    :cond_13
    const-string v8, "MediaSessionService"

    const-string v9, "Attempted to dispatch null or non-media key event."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_1a
    return-void

    .line 792
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 793
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 794
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 796
    .local v4, "token":J
    :try_start_27
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 797
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dispatchMediaKeyEvent, pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_5a
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v8

    if-nez v8, :cond_6b

    .line 803
    const-string v8, "MediaSessionService"

    const-string v9, "Not dispatching media key event because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_27 .. :try_end_67} :catchall_de

    .line 829
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    .line 808
    :cond_6b
    :try_start_6b
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_de

    .line 811
    :try_start_72
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 812
    .local v6, "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v6, :cond_90

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v8

    if-nez v8, :cond_cc

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_cc

    :cond_90
    const/4 v7, 0x1

    .line 815
    .local v7, "useNotPlayingSessions":Z
    :goto_91
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v8

    iget-object v10, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)I

    move-result v10

    invoke-virtual {v8, v10, v7}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 817
    .local v2, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-direct {p0, v8}, isVoiceKey(I)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 819
    const-string/jumbo v8, "dock"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c6

    const-string/jumbo v8, "mount"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c6

    const-string/jumbo v8, "unmount"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 820
    :cond_c6
    monitor-exit v9
    :try_end_c7
    .catchall {:try_start_72 .. :try_end_c7} :catchall_db

    .line 829
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 812
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v7    # "useNotPlayingSessions":Z
    :cond_cc
    const/4 v7, 0x0

    goto :goto_91

    .line 822
    .restart local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    .restart local v7    # "useNotPlayingSessions":Z
    :cond_ce
    :try_start_ce
    invoke-direct {p0, p1, p2, v2}, handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 827
    :goto_d1
    monitor-exit v9
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_db

    .line 829
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 825
    :cond_d7
    :try_start_d7
    invoke-direct {p0, p1, p2, v2}, dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto :goto_d1

    .line 827
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6    # "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v7    # "useNotPlayingSessions":Z
    :catchall_db
    move-exception v8

    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_d7 .. :try_end_dd} :catchall_db

    :try_start_dd
    throw v8
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_de

    .line 829
    :catchall_de
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 953
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_37

    .line 955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump MediaSessionService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    :goto_36
    return-void

    .line 961
    :cond_37
    const-string v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 964
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 965
    :try_start_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " sessions listeners."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 967
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Sessions:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_87
    if-ge v1, v0, :cond_a0

    .line 969
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    const-string v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 972
    :cond_a0
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 974
    const-string v3, "User Records:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 976
    const/4 v1, 0x0

    :goto_bb
    if-ge v1, v0, :cond_dd

    .line 977
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v5, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 978
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v2, :cond_da

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 976
    :cond_da
    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    .line 980
    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_dd
    monitor-exit v4

    goto/16 :goto_36

    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_e0
    move-exception v3

    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_46 .. :try_end_e2} :catchall_e0

    throw v3
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 706
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 707
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 710
    .local v6, "token":J
    :try_start_c
    invoke-direct {p0, p1, p2, v2, v8}, verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 711
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_49

    .line 713
    :try_start_1c
    iget-object v9, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 715
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 716
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v5, :cond_41

    .line 717
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v9

    invoke-interface {v9}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 719
    :cond_41
    monitor-exit v10
    :try_end_42
    .catchall {:try_start_1c .. :try_end_42} :catchall_46

    .line 722
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 719
    .end local v1    # "i":I
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v5    # "size":I
    :catchall_46
    move-exception v9

    :try_start_47
    monitor-exit v10
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v9
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 722
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_49
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .registers 2

    .prologue
    .line 948
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 760
    :try_start_7
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    .line 761
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    .line 762
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2a

    .line 764
    .local v1, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1c
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_2d
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    .line 769
    .end local v1    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v3

    .line 770
    return-void

    .line 769
    .end local v0    # "index":I
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v2

    .line 765
    .restart local v0    # "index":I
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :catch_2d
    move-exception v2

    goto :goto_28
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 8
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 935
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 936
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 937
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 939
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v5, "listen for volume changes"

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 940
    iget-object v4, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # setter for: Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;
    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->access$2602(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 942
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 944
    return-void

    .line 942
    :catchall_1d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
