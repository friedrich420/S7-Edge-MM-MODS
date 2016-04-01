.class final Lcom/android/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_APPREQUESTORIENTATION:Ljava/lang/String; = "multiwindow_apprequestorientation"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_CAN_MOVE_TASK_TO_SCREEN:Ljava/lang/String; = "can_move_task_to_screen"

.field private static final ATTR_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_IS_PRIVAT_EMODE:Ljava/lang/String; = "is_private_mode"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MULTIWINDOWSTYLE:Ljava/lang/String; = "multiwindow_style"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_RESIZEABLE:Ljava/lang/String; = "resizeable"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final IGNORE_RETURN_TO_RECENTS:Z = true

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field bHidden:Z

.field canMoveTaskToScreen:Z

.field displayId:I

.field effectiveUid:I

.field firstActiveTime:J

.field fixed:Z

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field isSecretMode:Z

.field lastActiveElapsedTime:J

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mChildCoupledTask:Lcom/android/server/am/TaskRecord;

.field private final mFilename:Ljava/lang/String;

.field private mFinishWithCoupledTask:Z

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field mLastTimeMoved:J

.field mLockTaskAuth:I

.field mLockTaskMode:I

.field mLockTaskUid:I

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field private mParentCoupledTask:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mResizeable:Z

.field mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskToReturnTo:I

.field mTmpDisplayIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTmpDisplayObscuredZones:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field maxRecents:I

.field multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZLcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 39
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_taskType"    # I
    .param p13, "_userId"    # I
    .param p14, "_effectiveUid"    # I
    .param p15, "_lastDescription"    # Ljava/lang/String;
    .param p17, "_firstActiveTime"    # J
    .param p19, "_lastActiveTime"    # J
    .param p21, "lastTimeMoved"    # J
    .param p23, "neverRelinquishIdentity"    # Z
    .param p24, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p25, "taskAffiliation"    # I
    .param p26, "prevTaskId"    # I
    .param p27, "nextTaskId"    # I
    .param p28, "taskAffiliationColor"    # I
    .param p29, "callingUid"    # I
    .param p30, "callingPackage"    # Ljava/lang/String;
    .param p31, "resizeable"    # Z
    .param p32, "privileged"    # Z
    .param p33, "mwStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/samsung/android/multiwindow/MultiWindowStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v2, 0x1

    iput v2, p0, mLockTaskAuth:I

    .line 167
    const/4 v2, -0x1

    iput v2, p0, mLockTaskUid:I

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, canMoveTaskToScreen:Z

    .line 175
    const/4 v2, 0x0

    iput-boolean v2, p0, fixed:Z

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, p0, mFinishWithCoupledTask:Z

    .line 267
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, isPersistable:Z

    .line 288
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v2, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 291
    const/4 v2, 0x0

    iput-boolean v2, p0, bHidden:Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastTimeMoved:J

    .line 302
    const/4 v2, 0x0

    iput v2, p0, mTaskToReturnTo:I

    .line 305
    const/4 v2, 0x1

    iput-boolean v2, p0, mNeverRelinquishIdentity:Z

    .line 309
    const/4 v2, 0x0

    iput-boolean v2, p0, mReuseTask:Z

    .line 319
    const/4 v2, -0x1

    iput v2, p0, mPrevAffiliateTaskId:I

    .line 321
    const/4 v2, -0x1

    iput v2, p0, mNextAffiliateTaskId:I

    .line 1715
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    .line 1762
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mTmpDisplayIdArray:Ljava/util/ArrayList;

    .line 387
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_task_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mFilename:Ljava/lang/String;

    .line 390
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v4, p0, mFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, mLastThumbnailFile:Ljava/io/File;

    .line 391
    iput p2, p0, taskId:I

    .line 392
    iput-object p3, p0, intent:Landroid/content/Intent;

    .line 393
    iput-object p4, p0, affinityIntent:Landroid/content/Intent;

    .line 394
    iput-object p5, p0, affinity:Ljava/lang/String;

    .line 395
    iput-object p6, p0, rootAffinity:Ljava/lang/String;

    .line 396
    const/4 v2, 0x0

    iput-object v2, p0, voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 397
    const/4 v2, 0x0

    iput-object v2, p0, voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 398
    iput-object p7, p0, realActivity:Landroid/content/ComponentName;

    .line 399
    iput-object p8, p0, origActivity:Landroid/content/ComponentName;

    .line 400
    iput-boolean p9, p0, rootWasReset:Z

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, p0, isAvailable:Z

    .line 402
    iput-boolean p10, p0, autoRemoveRecents:Z

    .line 403
    move/from16 v0, p11

    iput-boolean v0, p0, askedCompatMode:Z

    .line 404
    move/from16 v0, p12

    iput v0, p0, taskType:I

    .line 405
    const/4 v2, 0x1

    iput v2, p0, mTaskToReturnTo:I

    .line 406
    move/from16 v0, p13

    iput v0, p0, userId:I

    .line 407
    move/from16 v0, p14

    iput v0, p0, effectiveUid:I

    .line 408
    move-wide/from16 v0, p17

    iput-wide v0, p0, firstActiveTime:J

    .line 409
    move-wide/from16 v0, p19

    iput-wide v0, p0, lastActiveTime:J

    .line 410
    move-object/from16 v0, p15

    iput-object v0, p0, lastDescription:Ljava/lang/CharSequence;

    .line 411
    move-object/from16 v0, p16

    iput-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 412
    move-wide/from16 v0, p21

    iput-wide v0, p0, mLastTimeMoved:J

    .line 413
    move/from16 v0, p23

    iput-boolean v0, p0, mNeverRelinquishIdentity:Z

    .line 414
    move-object/from16 v0, p24

    iput-object v0, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 415
    move/from16 v0, p25

    iput v0, p0, mAffiliatedTaskId:I

    .line 416
    move/from16 v0, p28

    iput v0, p0, mAffiliatedTaskColor:I

    .line 417
    move/from16 v0, p26

    iput v0, p0, mPrevAffiliateTaskId:I

    .line 418
    move/from16 v0, p27

    iput v0, p0, mNextAffiliateTaskId:I

    .line 419
    move/from16 v0, p29

    iput v0, p0, mCallingUid:I

    .line 420
    move-object/from16 v0, p30

    iput-object v0, p0, mCallingPackage:Ljava/lang/String;

    .line 421
    move/from16 v0, p31

    iput-boolean v0, p0, mResizeable:Z

    .line 422
    move/from16 v0, p32

    iput-boolean v0, p0, mPrivileged:Z

    .line 425
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v2, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 426
    iget-object v2, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {p33 .. p33}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 427
    iget-object v2, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {p33 .. p33}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    .line 430
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v4, p0, mLockTaskAuth:I

    .line 167
    iput v2, p0, mLockTaskUid:I

    .line 173
    iput-boolean v4, p0, canMoveTaskToScreen:Z

    .line 175
    iput-boolean v3, p0, fixed:Z

    .line 177
    iput-object v5, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 178
    iput-object v5, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 179
    iput-boolean v3, p0, mFinishWithCoupledTask:Z

    .line 267
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    iput-boolean v3, p0, isPersistable:Z

    .line 288
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 291
    iput-boolean v3, p0, bHidden:Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLastTimeMoved:J

    .line 302
    iput v3, p0, mTaskToReturnTo:I

    .line 305
    iput-boolean v4, p0, mNeverRelinquishIdentity:Z

    .line 309
    iput-boolean v3, p0, mReuseTask:Z

    .line 319
    iput v2, p0, mPrevAffiliateTaskId:I

    .line 321
    iput v2, p0, mNextAffiliateTaskId:I

    .line 1715
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    .line 1762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTmpDisplayIdArray:Ljava/util/ArrayList;

    .line 352
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mFilename:Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v2, p0, mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mLastThumbnailFile:Ljava/io/File;

    .line 356
    iput p2, p0, taskId:I

    .line 357
    iput p2, p0, mAffiliatedTaskId:I

    .line 358
    iput-object v5, p0, voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 359
    iput-object v5, p0, voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 360
    iput-boolean v4, p0, isAvailable:Z

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 362
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, mCallingUid:I

    .line 363
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, mCallingPackage:Ljava/lang/String;

    .line 364
    invoke-direct {p0, p4, p3}, setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 366
    iput v3, p0, taskType:I

    .line 367
    iput-boolean v4, p0, isPersistable:Z

    .line 369
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, maxRecents:I

    .line 372
    iput v3, p0, taskType:I

    .line 373
    iput v4, p0, mTaskToReturnTo:I

    .line 374
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, userId:I

    .line 375
    iput-object p5, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 376
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v3, p0, mLockTaskAuth:I

    .line 167
    iput v4, p0, mLockTaskUid:I

    .line 173
    iput-boolean v3, p0, canMoveTaskToScreen:Z

    .line 175
    iput-boolean v2, p0, fixed:Z

    .line 177
    iput-object v0, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 178
    iput-object v0, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 179
    iput-boolean v2, p0, mFinishWithCoupledTask:Z

    .line 267
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    iput-boolean v2, p0, isPersistable:Z

    .line 288
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 291
    iput-boolean v2, p0, bHidden:Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLastTimeMoved:J

    .line 302
    iput v2, p0, mTaskToReturnTo:I

    .line 305
    iput-boolean v3, p0, mNeverRelinquishIdentity:Z

    .line 309
    iput-boolean v2, p0, mReuseTask:Z

    .line 319
    iput v4, p0, mPrevAffiliateTaskId:I

    .line 321
    iput v4, p0, mNextAffiliateTaskId:I

    .line 1715
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    .line 1762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTmpDisplayIdArray:Ljava/util/ArrayList;

    .line 335
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mFilename:Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v2, p0, mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mLastThumbnailFile:Ljava/io/File;

    .line 339
    iput p2, p0, taskId:I

    .line 340
    iput p2, p0, mAffiliatedTaskId:I

    .line 341
    iput-object p5, p0, voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 342
    iput-object p6, p0, voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 343
    iput-boolean v3, p0, isAvailable:Z

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 345
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, mCallingUid:I

    .line 346
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, mCallingPackage:Ljava/lang/String;

    .line 347
    invoke-direct {p0, p4, p3}, setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 348
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .registers 57
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1299
    const/4 v8, 0x0

    .line 1300
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1301
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    .line 1303
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/4 v13, 0x0

    .line 1304
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1305
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1306
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v48, 0x0

    .line 1307
    .local v48, "hasRootAffinity":Z
    const/4 v14, 0x0

    .line 1308
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    .line 1309
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    .line 1310
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    .line 1311
    .local v17, "taskType":I
    const/16 v18, 0x0

    .line 1312
    .local v18, "userId":I
    const/16 v19, -0x1

    .line 1313
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    .line 1314
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    .line 1315
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    .line 1316
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    .line 1317
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    .line 1318
    .local v28, "neverRelinquishIdentity":Z
    const/4 v7, -0x1

    .line 1319
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v50

    .line 1320
    .local v50, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1321
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v30, -0x1

    .line 1322
    .local v30, "taskAffiliation":I
    const/16 v33, 0x0

    .line 1323
    .local v33, "taskAffiliationColor":I
    const/16 v31, -0x1

    .line 1324
    .local v31, "prevTaskId":I
    const/16 v32, -0x1

    .line 1325
    .local v32, "nextTaskId":I
    const/16 v34, -0x1

    .line 1326
    .local v34, "callingUid":I
    const-string v35, ""

    .line 1327
    .local v35, "callingPackage":Ljava/lang/String;
    const/16 v36, 0x0

    .line 1328
    .local v36, "resizeable":Z
    const/16 v37, 0x0

    .line 1330
    .local v37, "privileged":Z
    new-instance v38, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 1333
    .local v38, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v52, 0x0

    .line 1336
    .local v52, "privateMode":Z
    const/16 v46, 0x0

    .line 1337
    .local v46, "displayId":I
    const/16 v44, 0x1

    .line 1340
    .local v44, "canMoveTaskToScreen":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    add-int/lit8 v42, v6, -0x1

    .local v42, "attrNdx":I
    :goto_4c
    if-ltz v42, :cond_2b3

    .line 1341
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v41

    .line 1342
    .local v41, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v43

    .line 1345
    .local v43, "attrValue":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1346
    const/4 v6, -0x1

    if-ne v7, v6, :cond_74

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1340
    :cond_74
    :goto_74
    add-int/lit8 v42, v42, -0x1

    goto :goto_4c

    .line 1347
    :cond_77
    const-string/jumbo v6, "real_activity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 1348
    invoke-static/range {v43 .. v43}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_74

    .line 1349
    :cond_87
    const-string/jumbo v6, "orig_activity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 1350
    invoke-static/range {v43 .. v43}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    goto :goto_74

    .line 1351
    :cond_97
    const-string v6, "affinity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 1352
    move-object/from16 v10, v43

    goto :goto_74

    .line 1353
    :cond_a4
    const-string/jumbo v6, "root_affinity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 1354
    move-object/from16 v11, v43

    .line 1355
    const/16 v48, 0x1

    goto :goto_74

    .line 1356
    :cond_b4
    const-string/jumbo v6, "root_has_reset"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 1357
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto :goto_74

    .line 1358
    :cond_c8
    const-string v6, "auto_remove_recents"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 1359
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_74

    .line 1360
    :cond_db
    const-string v6, "asked_compat_mode"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1361
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    goto :goto_74

    .line 1362
    :cond_ee
    const-string/jumbo v6, "user_id"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_103

    .line 1363
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto/16 :goto_74

    .line 1364
    :cond_103
    const-string/jumbo v6, "effective_uid"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_118

    .line 1365
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto/16 :goto_74

    .line 1366
    :cond_118
    const-string/jumbo v6, "task_type"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12d

    .line 1367
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto/16 :goto_74

    .line 1368
    :cond_12d
    const-string/jumbo v6, "first_active_time"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_142

    .line 1369
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_74

    .line 1370
    :cond_142
    const-string/jumbo v6, "last_active_time"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 1371
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    goto/16 :goto_74

    .line 1372
    :cond_157
    const-string/jumbo v6, "last_description"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_166

    .line 1373
    move-object/from16 v20, v43

    goto/16 :goto_74

    .line 1374
    :cond_166
    const-string/jumbo v6, "last_time_moved"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 1375
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_74

    .line 1376
    :cond_17b
    const-string/jumbo v6, "never_relinquish_identity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_190

    .line 1377
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    goto/16 :goto_74

    .line 1378
    :cond_190
    const-string/jumbo v6, "task_description_"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a6

    .line 1379
    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 1380
    :cond_1a6
    const-string/jumbo v6, "task_affiliation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bb

    .line 1381
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto/16 :goto_74

    .line 1382
    :cond_1bb
    const-string/jumbo v6, "prev_affiliation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d0

    .line 1383
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_74

    .line 1384
    :cond_1d0
    const-string/jumbo v6, "next_affiliation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e5

    .line 1385
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v32

    goto/16 :goto_74

    .line 1386
    :cond_1e5
    const-string/jumbo v6, "task_affiliation_color"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fa

    .line 1387
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v33

    goto/16 :goto_74

    .line 1388
    :cond_1fa
    const-string v6, "calling_uid"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20e

    .line 1389
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v34

    goto/16 :goto_74

    .line 1390
    :cond_20e
    const-string v6, "calling_package"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21c

    .line 1391
    move-object/from16 v35, v43

    goto/16 :goto_74

    .line 1392
    :cond_21c
    const-string/jumbo v6, "resizeable"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_231

    .line 1393
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    goto/16 :goto_74

    .line 1394
    :cond_231
    const-string/jumbo v6, "privileged"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_246

    .line 1395
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    goto/16 :goto_74

    .line 1397
    :cond_246
    const-string/jumbo v6, "multiwindow_style"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_264

    .line 1398
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v53, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v53

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_74

    .line 1399
    :cond_264
    const-string/jumbo v6, "multiwindow_apprequestorientation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27e

    .line 1400
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    goto/16 :goto_74

    .line 1403
    :cond_27e
    const-string/jumbo v6, "is_private_mode"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_293

    .line 1404
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    goto/16 :goto_74

    .line 1413
    :cond_293
    const-string v6, "ActivityManager"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "TaskRecord: Unknown attribute="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 1418
    .end local v41    # "attrName":Ljava/lang/String;
    .end local v43    # "attrValue":Ljava/lang/String;
    :cond_2b3
    :goto_2b3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v47

    .local v47, "event":I
    const/4 v6, 0x1

    move/from16 v0, v47

    if-eq v0, v6, :cond_32a

    const/4 v6, 0x3

    move/from16 v0, v47

    if-ne v0, v6, :cond_2c9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v50

    if-ge v6, v0, :cond_32a

    .line 1420
    :cond_2c9
    const/4 v6, 0x2

    move/from16 v0, v47

    if-ne v0, v6, :cond_2b3

    .line 1421
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v49

    .line 1424
    .local v49, "name":Ljava/lang/String;
    const-string v6, "affinity_intent"

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e1

    .line 1425
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_2b3

    .line 1426
    :cond_2e1
    const-string/jumbo v6, "intent"

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f1

    .line 1427
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_2b3

    .line 1428
    :cond_2f1
    const-string v6, "activity"

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_307

    .line 1429
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1432
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_2b3

    .line 1433
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b3

    .line 1436
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_307
    const-string v6, "ActivityManager"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "restoreTask: Unexpected name="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2b3

    .line 1441
    .end local v49    # "name":Ljava/lang/String;
    :cond_32a
    if-nez v48, :cond_3b3

    .line 1442
    move-object v11, v10

    .line 1446
    :cond_32d
    :goto_32d
    if-gtz v19, :cond_38f

    .line 1447
    if-eqz v8, :cond_3be

    move-object/from16 v45, v8

    .line 1448
    .local v45, "checkIntent":Landroid/content/Intent;
    :goto_333
    const/16 v19, 0x0

    .line 1449
    if-eqz v45, :cond_357

    .line 1450
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v51

    .line 1452
    .local v51, "pm":Landroid/content/pm/IPackageManager;
    :try_start_33b
    invoke-virtual/range {v45 .. v45}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v53, 0x2200

    move-object/from16 v0, v51

    move/from16 v1, v53

    move/from16 v2, v18

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v40

    .line 1456
    .local v40, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v40, :cond_357

    .line 1457
    move-object/from16 v0, v40

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0
    :try_end_357
    .catch Landroid/os/RemoteException; {:try_start_33b .. :try_end_357} :catch_3c3

    .line 1462
    .end local v40    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v51    # "pm":Landroid/content/pm/IPackageManager;
    :cond_357
    :goto_357
    const-string v6, "ActivityManager"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Updating task #"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " for "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ": effectiveUid="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    .end local v45    # "checkIntent":Landroid/content/Intent;
    :cond_38f
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v5 .. v38}, <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZLcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1473
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    move/from16 v0, v52

    iput-boolean v0, v5, isSecretMode:Z

    .line 1480
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v39, v6, -0x1

    .local v39, "activityNdx":I
    :goto_3a2
    if-ltz v39, :cond_3c2

    .line 1481
    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1480
    add-int/lit8 v39, v39, -0x1

    goto :goto_3a2

    .line 1443
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v39    # "activityNdx":I
    :cond_3b3
    const-string v6, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32d

    .line 1444
    const/4 v11, 0x0

    goto/16 :goto_32d

    :cond_3be
    move-object/from16 v45, v9

    .line 1447
    goto/16 :goto_333

    .line 1485
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v39    # "activityNdx":I
    :cond_3c2
    return-object v5

    .line 1459
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v39    # "activityNdx":I
    .restart local v45    # "checkIntent":Landroid/content/Intent;
    .restart local v51    # "pm":Landroid/content/pm/IPackageManager;
    :catch_3c3
    move-exception v6

    goto :goto_357
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 12
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/high16 v8, 0x8000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 453
    iget-object v4, p0, intent:Landroid/content/Intent;

    if-nez v4, :cond_97

    .line 454
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_94

    move v4, v5

    :goto_10
    iput-boolean v4, p0, mNeverRelinquishIdentity:Z

    .line 460
    :cond_12
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, affinity:Ljava/lang/String;

    .line 461
    iget-object v4, p0, intent:Landroid/content/Intent;

    if-nez v4, :cond_1e

    .line 465
    iget-object v4, p0, affinity:Ljava/lang/String;

    iput-object v4, p0, rootAffinity:Ljava/lang/String;

    .line 467
    :cond_1e
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, effectiveUid:I

    .line 468
    iput-object v7, p0, stringName:Ljava/lang/String;

    .line 470
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v4, :cond_9e

    .line 471
    if-eqz p1, :cond_54

    .line 475
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_38

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 476
    :cond_38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 478
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 482
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_44
    iget-object v4, p0, intent:Landroid/content/Intent;

    if-eqz v4, :cond_54

    iget-object v4, p0, intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v8

    if-eqz v4, :cond_54

    .line 483
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 489
    :cond_54
    iput-object p1, p0, intent:Landroid/content/Intent;

    .line 490
    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_5c
    iput-object v4, p0, realActivity:Landroid/content/ComponentName;

    .line 491
    iput-object v7, p0, origActivity:Landroid/content/ComponentName;

    .line 512
    :goto_60
    iget-object v4, p0, intent:Landroid/content/Intent;

    if-nez v4, :cond_d2

    move v1, v6

    .line 513
    .local v1, "intentFlags":I
    :goto_65
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_6c

    .line 516
    iput-boolean v5, p0, rootWasReset:Z

    .line 519
    :cond_6c
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, userId:I

    .line 520
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_d9

    .line 522
    iput-boolean v5, p0, autoRemoveRecents:Z

    .line 536
    :goto_7e
    iget-boolean v4, p2, Landroid/content/pm/ActivityInfo;->resizeable:Z

    iput-boolean v4, p0, mResizeable:Z

    .line 537
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v4, p0, mLockTaskMode:I

    .line 538
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_ee

    :goto_8e
    iput-boolean v5, p0, mPrivileged:Z

    .line 539
    invoke-virtual {p0}, setLockTaskAuth()V

    .line 540
    .end local v1    # "intentFlags":I
    :goto_93
    return-void

    :cond_94
    move v4, v6

    .line 454
    goto/16 :goto_10

    .line 456
    :cond_97
    iget-boolean v4, p0, mNeverRelinquishIdentity:Z

    if-eqz v4, :cond_12

    goto :goto_93

    :cond_9c
    move-object v4, v7

    .line 490
    goto :goto_5c

    .line 493
    :cond_9e
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_c2

    .line 496
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 497
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 498
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 499
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 502
    iput-object v3, p0, intent:Landroid/content/Intent;

    .line 503
    iput-object v2, p0, realActivity:Landroid/content/ComponentName;

    .line 504
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, origActivity:Landroid/content/ComponentName;

    goto :goto_60

    .line 506
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_c2
    iput-object v7, p0, intent:Landroid/content/Intent;

    .line 507
    iput-object v2, p0, realActivity:Landroid/content/ComponentName;

    .line 508
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, origActivity:Landroid/content/ComponentName;

    goto :goto_60

    .line 512
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_d2
    iget-object v4, p0, intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    goto :goto_65

    .line 523
    .restart local v1    # "intentFlags":I
    :cond_d9
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v7, 0x80000

    if-ne v4, v7, :cond_eb

    .line 528
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_e8

    .line 529
    iput-boolean v6, p0, autoRemoveRecents:Z

    goto :goto_7e

    .line 531
    :cond_e8
    iput-boolean v5, p0, autoRemoveRecents:Z

    goto :goto_7e

    .line 534
    :cond_eb
    iput-boolean v6, p0, autoRemoveRecents:Z

    goto :goto_7e

    :cond_ee
    move v5, v6

    .line 538
    goto :goto_8e
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 770
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    .line 800
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_d

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_d

    .line 801
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mNeedUpdateFocusWhileRemovingStack:Z

    .line 806
    :cond_d
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1f

    .line 808
    iget v0, p0, numFullscreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, numFullscreen:I

    .line 811
    :cond_1f
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 812
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iput v0, p0, taskType:I

    .line 813
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    iput-boolean v0, p0, isPersistable:Z

    .line 814
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, mCallingUid:I

    .line 815
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, mCallingPackage:Ljava/lang/String;

    .line 817
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, maxRecents:I

    .line 830
    :goto_4b
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 831
    invoke-virtual {p0}, updateEffectiveIntent()V

    .line 832
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 833
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 842
    :cond_5f
    return-void

    .line 828
    :cond_60
    iget v0, p0, taskType:I

    iput v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_4b
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/high16 v5, 0x1000000

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 775
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 777
    :cond_14
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_50

    .line 778
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 779
    .local v1, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_5a

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_5a

    .line 780
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 781
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 782
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 784
    :cond_3e
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_50

    .line 785
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 786
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 794
    .end local v0    # "i":I
    .end local v1    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_50
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2, p1}, addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 795
    return-void

    .line 777
    .restart local v0    # "i":I
    .restart local v1    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c
.end method

.method autoRemoveFromRecents()Z
    .registers 2

    .prologue
    .line 870
    iget-boolean v0, p0, autoRemoveRecents:Z

    if-nez v0, :cond_10

    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, hasBeenVisible:Z

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method closeRecentsChain()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 606
    iget-object v0, p0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_c

    .line 607
    iget-object v0, p0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 609
    :cond_c
    iget-object v0, p0, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_17

    .line 610
    iget-object v0, p0, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 612
    :cond_17
    invoke-virtual {p0, v2}, setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 613
    invoke-virtual {p0, v2}, setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 614
    return-void
.end method

.method disposeThumbnail()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, mLastThumbnail:Landroid/graphics/Bitmap;

    .line 689
    iput-object v0, p0, lastDescription:Ljava/lang/CharSequence;

    .line 690
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x80

    const/16 v7, 0x7d

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1490
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1491
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1492
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, affinity:Ljava/lang/String;

    if-nez v0, :cond_3b

    iget-object v0, p0, rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 1494
    :cond_3b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, affinity:Ljava/lang/String;

    if-eqz v0, :cond_56

    iget-object v0, p0, affinity:Ljava/lang/String;

    iget-object v4, p0, rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    .line 1496
    :cond_56
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    :cond_60
    :goto_60
    iget-object v0, p0, voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_68

    iget-object v0, p0, voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_8f

    .line 1515
    :cond_68
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    :cond_8f
    iget-object v0, p0, intent:Landroid/content/Intent;

    if-eqz v0, :cond_b2

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1522
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    iget-object v0, p0, intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1524
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_b2
    iget-object v0, p0, affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_d4

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1529
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    iget-object v0, p0, affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1531
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1532
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_d4
    iget-object v0, p0, origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_ea

    .line 1535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    :cond_ea
    iget-object v0, p0, realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_100

    .line 1539
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    :cond_100
    iget-boolean v0, p0, autoRemoveRecents:Z

    if-nez v0, :cond_114

    iget-boolean v0, p0, isPersistable:Z

    if-nez v0, :cond_114

    iget v0, p0, taskType:I

    if-nez v0, :cond_114

    iget v0, p0, mTaskToReturnTo:I

    if-nez v0, :cond_114

    iget v0, p0, numFullscreen:I

    if-eqz v0, :cond_149

    .line 1544
    :cond_114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1545
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1546
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1547
    const-string v0, " taskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, taskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1548
    const-string v0, " mTaskToReturnTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mTaskToReturnTo:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1550
    :cond_149
    iget-boolean v0, p0, rootWasReset:Z

    if-nez v0, :cond_159

    iget-boolean v0, p0, mNeverRelinquishIdentity:Z

    if-nez v0, :cond_159

    iget-boolean v0, p0, mReuseTask:Z

    if-nez v0, :cond_159

    iget v0, p0, mLockTaskAuth:I

    if-eq v0, v3, :cond_187

    .line 1552
    :cond_159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1553
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1554
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1555
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    :cond_187
    iget v0, p0, mAffiliatedTaskId:I

    iget v2, p0, taskId:I

    if-ne v0, v2, :cond_19d

    iget v0, p0, mPrevAffiliateTaskId:I

    if-ne v0, v6, :cond_19d

    iget-object v0, p0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_19d

    iget v0, p0, mNextAffiliateTaskId:I

    if-ne v0, v6, :cond_19d

    iget-object v0, p0, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1e1

    .line 1560
    :cond_19d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1561
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1562
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1563
    iget-object v0, p0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_2d7

    .line 1564
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    :goto_1c3
    const-string v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1569
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_2e6

    .line 1571
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    :goto_1dc
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    :cond_1e1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1578
    iget-boolean v0, p0, askedCompatMode:Z

    if-eqz v0, :cond_1fa

    iget-boolean v0, p0, inRecents:Z

    if-eqz v0, :cond_1fa

    iget-boolean v0, p0, isAvailable:Z

    if-nez v0, :cond_21b

    .line 1579
    :cond_1fa
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1580
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1581
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1583
    :cond_21b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mLastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1584
    const-string v0, " lastThumbnailFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1585
    iget-object v0, p0, lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_245

    .line 1586
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1588
    :cond_245
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_259

    .line 1589
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1591
    :cond_259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, hasBeenVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1592
    const-string v0, " mResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mResizeable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1593
    const-string v0, " firstActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, firstActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1594
    const-string v0, " lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1595
    const-string v0, " lastActiveElapsedTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, lastActiveElapsedTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1596
    const-string v0, " (inactive for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p0}, getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "s)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    iget-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v0, :cond_2c3

    .line 1600
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "multiWindowStyle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1601
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, bHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1605
    :cond_2c3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1606
    const-string/jumbo v0, "isSecretMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1607
    iget-boolean v0, p0, isSecretMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1609
    return-void

    .line 1498
    :cond_2d2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_60

    .line 1566
    :cond_2d7
    iget-object v0, p0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1c3

    .line 1573
    :cond_2e6
    iget-object v0, p0, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1dc
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1112
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1113
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_a
    if-ltz v0, :cond_24

    .line 1114
    iget-object v3, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1115
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1b

    .line 1113
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1118
    :cond_1b
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1122
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :goto_23
    return-object v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method findEffectiveRootIndex()I
    .registers 6

    .prologue
    .line 1187
    const/4 v1, 0x0

    .line 1188
    .local v1, "effectiveNdx":I
    iget-object v4, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1189
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_a
    if-gt v0, v3, :cond_24

    .line 1190
    iget-object v4, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1191
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1b

    .line 1189
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1194
    :cond_1b
    move v1, v0

    .line 1195
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_18

    .line 1199
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    return v1
.end method

.method freeLastThumbnail()V
    .registers 2

    .prologue
    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, mLastThumbnail:Landroid/graphics/Bitmap;

    .line 685
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, intent:Landroid/content/Intent;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, affinityIntent:Landroid/content/Intent;

    goto :goto_6
.end method

.method public getChildCoupledTask()Lcom/android/server/am/TaskRecord;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method public getCoupledTask()Lcom/android/server/am/TaskRecord;
    .registers 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "coupledTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_8

    .line 236
    iget-object v0, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 240
    :cond_7
    :goto_7
    return-object v0

    .line 237
    :cond_8
    iget-object v1, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_7

    .line 238
    iget-object v0, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    goto :goto_7
.end method

.method public getCoupledTaskId()I
    .registers 3

    .prologue
    .line 244
    const/4 v1, -0x1

    .line 245
    .local v1, "taskId":I
    invoke-virtual {p0}, getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 246
    .local v0, "coupledTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_9

    .line 247
    iget v1, v0, taskId:I

    .line 249
    :cond_9
    return v1
.end method

.method getDisplayObscuredZones(Z)Landroid/util/SparseArray;
    .registers 11
    .param p1, "lifeCycle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0xf

    .line 1723
    iget-object v5, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1725
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 1726
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_f
    if-ltz v1, :cond_91

    .line 1727
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1728
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_26

    .line 1726
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1731
    :cond_26
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    .line 1732
    .local v4, "type":I
    iget-object v5, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1733
    .local v2, "currentZone":I
    if-nez v4, :cond_66

    .line 1734
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v5, :cond_56

    if-nez p1, :cond_56

    .line 1735
    iget-object v5, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1737
    :cond_56
    if-eqz p1, :cond_23

    .line 1738
    iget-object v5, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_23

    .line 1740
    :cond_66
    const/4 v5, 0x1

    if-ne v4, v5, :cond_7e

    .line 1741
    iget-object v5, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    or-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_23

    .line 1742
    :cond_7e
    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    .line 1743
    iget-object v5, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    or-int/lit8 v7, v2, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_23

    .line 1746
    .end local v2    # "currentZone":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "type":I
    :cond_91
    iget-object v5, p0, mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    return-object v5
.end method

.method getInactiveDuration()J
    .registers 5

    .prologue
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .registers 4
    .param p1, "thumbs"    # Landroid/app/ActivityManager$TaskThumbnail;

    .prologue
    .line 668
    iget-object v0, p0, mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 669
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 670
    iget-object v0, p0, mLastThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_17

    .line 671
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iget-object v1, p0, mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 674
    :cond_17
    iget-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2d

    iget-object v0, p0, mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 676
    :try_start_23
    iget-object v0, p0, mLastThumbnailFile:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_2e

    .line 681
    :cond_2d
    :goto_2d
    return-void

    .line 678
    :catch_2e
    move-exception v0

    goto :goto_2d
.end method

.method public getLayer()I
    .registers 3

    .prologue
    .line 1807
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1808
    .local v0, "appRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_e

    .line 1809
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getLayer()I

    move-result v1

    .line 1813
    :goto_d
    return v1

    .line 1810
    :cond_e
    iget-object v1, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1811
    const/4 v1, 0x1

    goto :goto_d

    .line 1813
    :cond_18
    const/4 v1, 0x0

    goto :goto_d
.end method

.method getObscuredScreenIds(Lcom/android/server/am/ActivityRecord;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1764
    iget-object v5, p0, mTmpDisplayIdArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1765
    const/4 v3, 0x0

    .line 1766
    .local v3, "obscuredScreenZone":I
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 1767
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_e
    if-ltz v1, :cond_52

    .line 1768
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1769
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_28

    if-eq p1, v4, :cond_28

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_2b

    .line 1767
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1773
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v2

    .line 1774
    .local v2, "currentScreenZone":I
    and-int v5, v2, v3

    if-eq v5, v2, :cond_44

    .line 1775
    iget-object v5, p0, mTmpDisplayIdArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    :cond_44
    iget-object v5, p0, stack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v5

    or-int/2addr v3, v5

    goto :goto_28

    .line 1780
    .end local v2    # "currentScreenZone":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_52
    iget-object v5, p0, mTmpDisplayIdArray:Ljava/util/ArrayList;

    return-object v5
.end method

.method public getParentCoupledTask()Lcom/android/server/am/TaskRecord;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .prologue
    .line 699
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 700
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 701
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 706
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    const/4 v1, 0x0

    :cond_19
    return-object v1
.end method

.method getScreenZone()I
    .registers 6

    .prologue
    .line 1750
    const/4 v2, 0x0

    .line 1751
    .local v2, "obscuredScreenZone":I
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 1752
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_9
    if-ltz v1, :cond_2a

    .line 1753
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1754
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_20

    .line 1752
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1757
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v4

    or-int/2addr v2, v4

    goto :goto_1d

    .line 1759
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    return v2
.end method

.method public getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .registers 5

    .prologue
    .line 971
    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_1f

    .line 972
    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 973
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1f

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p0, :cond_1f

    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isForceHideCascade()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 975
    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 976
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 979
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1f
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .line 980
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    .line 981
    return-object v1
.end method

.method getTaskToReturnTo()I
    .registers 6

    .prologue
    .line 572
    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 573
    .local v0, "index":I
    if-lez v0, :cond_72

    .line 574
    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 575
    .local v1, "next":Lcom/android/server/am/TaskRecord;
    iget v3, p0, mTaskToReturnTo:I

    if-eqz v3, :cond_21

    .line 576
    iget v3, p0, mTaskToReturnTo:I

    .line 591
    .end local v1    # "next":Lcom/android/server/am/TaskRecord;
    :goto_20
    return v3

    .line 578
    .restart local v1    # "next":Lcom/android/server/am/TaskRecord;
    :cond_21
    iget-object v3, v1, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6e

    iget-object v3, v1, mActivities:Ljava/util/ArrayList;

    iget-object v4, v1, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object v2, v3

    .line 581
    .local v2, "nextAr":Lcom/android/server/am/ActivityRecord;
    :goto_3a
    invoke-virtual {v1}, isApplicationTask()Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, v1, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {v1}, isApplicationTask()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, v1, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    if-eqz v2, :cond_64

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_64

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-nez v3, :cond_6c

    :cond_64
    iget-object v3, v1, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_70

    .line 584
    :cond_6c
    const/4 v3, 0x1

    goto :goto_20

    .line 578
    .end local v2    # "nextAr":Lcom/android/server/am/ActivityRecord;
    :cond_6e
    const/4 v2, 0x0

    goto :goto_3a

    .line 586
    .restart local v2    # "nextAr":Lcom/android/server/am/ActivityRecord;
    :cond_70
    const/4 v3, 0x0

    goto :goto_20

    .line 591
    .end local v1    # "next":Lcom/android/server/am/TaskRecord;
    .end local v2    # "nextAr":Lcom/android/server/am/ActivityRecord;
    :cond_72
    iget v3, p0, mTaskToReturnTo:I

    goto :goto_20
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .prologue
    .line 710
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_19

    .line 711
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 712
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1a

    .line 710
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 717
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    const/4 v1, 0x0

    :cond_1a
    return-object v1
.end method

.method getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3

    .prologue
    .line 1799
    invoke-virtual {p0}, getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1800
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9

    .line 1801
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1803
    :goto_8
    return-object v1

    :cond_9
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_8
.end method

.method getType()I
    .registers 2

    .prologue
    .line 1657
    iget v0, p0, taskType:I

    return v0
.end method

.method getVisibleObscuredZone(Z)I
    .registers 9
    .param p1, "lifeCycle"    # Z

    .prologue
    const/16 v5, 0xf

    .line 1690
    const/4 v2, 0x0

    .line 1691
    .local v2, "obscuredZone":I
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 1692
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_b
    if-ltz v1, :cond_31

    .line 1693
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1694
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_22

    .line 1692
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1697
    :cond_22
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    .line 1698
    .local v4, "type":I
    if-nez v4, :cond_36

    .line 1699
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_32

    if-nez p1, :cond_32

    move v2, v5

    .line 1711
    .end local v2    # "obscuredZone":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "type":I
    :cond_31
    :goto_31
    return v2

    .line 1702
    .restart local v2    # "obscuredZone":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "type":I
    :cond_32
    if-eqz p1, :cond_1f

    move v2, v5

    .line 1703
    goto :goto_31

    .line 1705
    :cond_36
    const/4 v6, 0x1

    if-ne v4, v6, :cond_40

    .line 1706
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    goto :goto_31

    .line 1707
    :cond_40
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1f

    .line 1708
    const/4 v2, 0x0

    goto :goto_31
.end method

.method hasFullScreenActivity()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1784
    invoke-virtual {p0, v4}, getDisplayObscuredZones(Z)Landroid/util/SparseArray;

    move-result-object v1

    .line 1786
    .local v1, "taskDisplayObscuredZones":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1787
    .local v0, "NZ":I
    const/4 v3, 0x0

    .local v3, "zoneNdx":I
    :goto_a
    if-ge v3, v0, :cond_17

    .line 1788
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1790
    .local v2, "zoneDisplayId":I
    invoke-virtual {p0, v2}, isFullscreenVisible(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1791
    const/4 v4, 0x1

    .line 1794
    .end local v2    # "zoneDisplayId":I
    :cond_17
    return v4

    .line 1787
    .restart local v2    # "zoneDisplayId":I
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method isApplicationTask()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1086
    iget v3, p0, taskType:I

    if-nez v3, :cond_e

    move v0, v1

    .line 1089
    .local v0, "result":Z
    :goto_7
    iget v3, p0, taskType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    :goto_c
    or-int/2addr v0, v1

    .line 1092
    return v0

    .end local v0    # "result":Z
    :cond_e
    move v0, v2

    .line 1086
    goto :goto_7

    .restart local v0    # "result":Z
    :cond_10
    move v1, v2

    .line 1089
    goto :goto_c
.end method

.method public isCoupled()Z
    .registers 3

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "coupledTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_b

    .line 256
    iget-object v0, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 260
    :cond_7
    :goto_7
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :goto_a
    return v1

    .line 257
    :cond_b
    iget-object v1, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_7

    .line 258
    iget-object v0, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    goto :goto_7

    .line 260
    :cond_12
    const/4 v1, 0x0

    goto :goto_a
.end method

.method isExpandHomeTask()Z
    .registers 2

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method public isFinishWithCoupledTask()Z
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, mFinishWithCoupledTask:Z

    return v0
.end method

.method isFullscreenVisible()Z
    .registers 2

    .prologue
    .line 1662
    iget v0, p0, displayId:I

    invoke-virtual {p0, v0}, isFullscreenVisible(I)Z

    move-result v0

    return v0
.end method

.method isFullscreenVisible(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 1667
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 1668
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_8
    if-ltz v1, :cond_29

    .line 1669
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1670
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_1c

    iget-object v3, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1c
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_23

    .line 1668
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1674
    :cond_23
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_20

    .line 1682
    const/4 v3, 0x1

    .line 1686
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method isHomeTask()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1053
    invoke-virtual {p0}, getType()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isLockTaskWhitelistedLocked()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1031
    iget-object v4, p0, realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    iget-object v4, p0, realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, "pkg":Ljava/lang/String;
    :goto_b
    if-nez v2, :cond_10

    .line 1044
    :cond_d
    :goto_d
    return v3

    .line 1031
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    .line 1035
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_10
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    iget v5, p0, userId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1036
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 1039
    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_d

    .line 1040
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1041
    const/4 v3, 0x1

    goto :goto_d

    .line 1039
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_21
.end method

.method isOverHomeStack()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1103
    iget v1, p0, mTaskToReturnTo:I

    if-eq v1, v0, :cond_a

    iget v1, p0, mTaskToReturnTo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRecentTask()Z
    .registers 3

    .prologue
    .line 1081
    iget v0, p0, taskType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isSamsungHomeTask()Z
    .registers 2

    .prologue
    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method isSamsungPinnedHomeTask()Z
    .registers 2

    .prologue
    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 990
    iget v0, p0, mLockTaskAuth:I

    packed-switch v0, :pswitch_data_2c

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    .line 991
    :pswitch_1c
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    goto :goto_1b

    .line 992
    :pswitch_1f
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    goto :goto_1b

    .line 993
    :pswitch_22
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    goto :goto_1b

    .line 994
    :pswitch_25
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    goto :goto_1b

    .line 995
    :pswitch_28
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    goto :goto_1b

    .line 990
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 761
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {p0}, updateEffectiveIntent()V

    .line 765
    invoke-virtual {p0}, setFrontOfTask()V

    .line 766
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .registers 3
    .param p1, "activityNdx"    # I

    .prologue
    .line 878
    const-string v0, "clear-task-index"

    invoke-virtual {p0, p1, v0}, performClearTaskAtIndexLocked(ILjava/lang/String;)V

    .line 879
    return-void
.end method

.method final performClearTaskAtIndexLocked(ILjava/lang/String;)V
    .registers 10
    .param p1, "activityNdx"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 883
    .local v6, "numActivities":I
    :goto_7
    if-ge p1, v6, :cond_39

    .line 884
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 885
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_18

    .line 883
    :cond_15
    :goto_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 888
    :cond_18
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_29

    .line 890
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 891
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 892
    add-int/lit8 p1, p1, -0x1

    .line 893
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    .line 894
    :cond_29
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 896
    add-int/lit8 p1, p1, -0x1

    .line 897
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    .line 900
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_39
    return-void
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 15
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 923
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 924
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "activityNdx":I
    :goto_8
    if-ltz v8, :cond_74

    .line 925
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 926
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_19

    .line 924
    :cond_16
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 929
    :cond_19
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 931
    move-object v11, v1

    .line 933
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    :goto_26
    if-ge v8, v9, :cond_56

    .line 934
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 935
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_37

    .line 933
    :cond_34
    :goto_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 938
    :cond_37
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 939
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_40

    .line 940
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 942
    :cond_40
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_34

    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "clear-task-stack"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 944
    add-int/lit8 v8, v8, -0x1

    .line 945
    add-int/lit8 v9, v9, -0x1

    goto :goto_34

    .line 952
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_56
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_73

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_73

    .line 954
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_73

    .line 955
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_72

    .line 956
    iget-object v2, p0, stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "clear-task-top"

    const/4 v7, 0x0

    move-object v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 959
    :cond_72
    const/4 v11, 0x0

    .line 967
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_73
    :goto_73
    return-object v11

    :cond_74
    const/4 v11, 0x0

    goto :goto_73
.end method

.method final performClearTaskLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, mReuseTask:Z

    .line 907
    invoke-virtual {p0, v1}, performClearTaskAtIndexLocked(I)V

    .line 908
    iput-boolean v1, p0, mReuseTask:Z

    .line 909
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 848
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 849
    invoke-virtual {p0}, updateTaskDescription()V

    .line 852
    :cond_d
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_1f

    .line 854
    iget v2, p0, numFullscreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, numFullscreen:I

    .line 856
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 857
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 859
    :cond_2a
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 860
    iget-boolean v2, p0, mReuseTask:Z

    if-nez v2, :cond_37

    .line 863
    :goto_36
    return v0

    :cond_37
    move v0, v1

    .line 860
    goto :goto_36

    .line 862
    :cond_39
    invoke-virtual {p0}, updateEffectiveIntent()V

    move v0, v1

    .line 863
    goto :goto_36
.end method

.method public removeTaskActivitiesLocked()V
    .registers 3

    .prologue
    .line 986
    const/4 v0, 0x0

    const-string/jumbo v1, "removeTask"

    invoke-virtual {p0, v0, v1}, performClearTaskAtIndexLocked(ILjava/lang/String;)V

    .line 987
    return-void
.end method

.method removedFromRecents()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0}, disposeThumbnail()V

    .line 618
    invoke-virtual {p0}, closeRecentsChain()V

    .line 619
    iget-boolean v0, p0, inRecents:Z

    if-eqz v0, :cond_12

    .line 620
    iput-boolean v1, p0, inRecents:Z

    .line 621
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 623
    :cond_12
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x80000

    const/4 v8, 0x0

    .line 1211
    const-string/jumbo v4, "task_id"

    iget v5, p0, taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1212
    iget-object v4, p0, realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1f

    .line 1213
    const-string/jumbo v4, "real_activity"

    iget-object v5, p0, realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    :cond_1f
    iget-object v4, p0, origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2f

    .line 1216
    const-string/jumbo v4, "orig_activity"

    iget-object v5, p0, origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    :cond_2f
    iget-object v4, p0, affinity:Ljava/lang/String;

    if-eqz v4, :cond_1ba

    .line 1223
    const-string v4, "affinity"

    iget-object v5, p0, affinity:Ljava/lang/String;

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1224
    iget-object v4, p0, affinity:Ljava/lang/String;

    iget-object v5, p0, rootAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 1225
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_1b6

    iget-object v4, p0, rootAffinity:Ljava/lang/String;

    :goto_4d
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1230
    :cond_50
    :goto_50
    const-string/jumbo v4, "root_has_reset"

    iget-boolean v5, p0, rootWasReset:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1231
    const-string v4, "auto_remove_recents"

    iget-boolean v5, p0, autoRemoveRecents:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1232
    const-string v4, "asked_compat_mode"

    iget-boolean v5, p0, askedCompatMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1233
    const-string/jumbo v4, "user_id"

    iget v5, p0, userId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1234
    const-string/jumbo v4, "effective_uid"

    iget v5, p0, effectiveUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1235
    const-string/jumbo v4, "task_type"

    iget v5, p0, taskType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1236
    const-string/jumbo v4, "first_active_time"

    iget-wide v6, p0, firstActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1237
    const-string/jumbo v4, "last_active_time"

    iget-wide v6, p0, lastActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1238
    const-string/jumbo v4, "last_time_moved"

    iget-wide v6, p0, mLastTimeMoved:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1239
    const-string/jumbo v4, "never_relinquish_identity"

    iget-boolean v5, p0, mNeverRelinquishIdentity:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1240
    iget-object v4, p0, lastDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d6

    .line 1241
    const-string/jumbo v4, "last_description"

    iget-object v5, p0, lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1243
    :cond_d6
    iget-object v4, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_df

    .line 1244
    iget-object v4, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1246
    :cond_df
    const-string/jumbo v4, "task_affiliation_color"

    iget v5, p0, mAffiliatedTaskColor:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    const-string/jumbo v4, "task_affiliation"

    iget v5, p0, mAffiliatedTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1248
    const-string/jumbo v4, "prev_affiliation"

    iget v5, p0, mPrevAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1249
    const-string/jumbo v4, "next_affiliation"

    iget v5, p0, mNextAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    const-string v4, "calling_uid"

    iget v5, p0, mCallingUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1251
    const-string v5, "calling_package"

    iget-object v4, p0, mCallingPackage:Ljava/lang/String;

    if-nez v4, :cond_1cf

    const-string v4, ""

    :goto_122
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1252
    const-string/jumbo v4, "resizeable"

    iget-boolean v5, p0, mResizeable:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1253
    const-string/jumbo v4, "privileged"

    iget-boolean v5, p0, mPrivileged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    const-string/jumbo v4, "multiwindow_style"

    iget-object v5, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const-string/jumbo v4, "multiwindow_apprequestorientation"

    iget-object v5, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const-string/jumbo v4, "is_private_mode"

    iget-boolean v5, p0, isSecretMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    iget-object v4, p0, affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_17c

    .line 1271
    const-string v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1272
    iget-object v4, p0, affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1273
    const-string v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1276
    :cond_17c
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    iget-object v4, p0, intent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1278
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1280
    iget-object v0, p0, mActivities:Ljava/util/ArrayList;

    .line 1281
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1282
    .local v2, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_194
    if-ge v1, v2, :cond_1b5

    .line 1283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1284
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v4, :cond_1b5

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_1b5

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    or-int/lit16 v4, v4, 0x2000

    if-ne v4, v9, :cond_1d3

    if-lez v1, :cond_1d3

    .line 1295
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b5
    return-void

    .line 1225
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_1b6
    const-string v4, "@"

    goto/16 :goto_4d

    .line 1227
    :cond_1ba
    iget-object v4, p0, rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_50

    .line 1228
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_1cc

    iget-object v4, p0, rootAffinity:Ljava/lang/String;

    :goto_1c7
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_50

    :cond_1cc
    const-string v4, "@"

    goto :goto_1c7

    .line 1251
    :cond_1cf
    iget-object v4, p0, mCallingPackage:Ljava/lang/String;

    goto/16 :goto_122

    .line 1291
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1d3
    const-string v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1292
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1293
    const-string v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_194
.end method

.method public setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "childCoupledTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 219
    iput-object p1, p0, mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 220
    invoke-virtual {p0}, getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 221
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_9

    .line 230
    :goto_8
    return-void

    .line 224
    :cond_9
    if-eqz p1, :cond_1b

    .line 225
    invoke-virtual {p0}, getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 226
    .local v0, "child":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setChildCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_8

    .line 228
    .end local v0    # "child":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setChildCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_8
.end method

.method public setFinishWithCoupledTask(Z)V
    .registers 5
    .param p1, "finishWithCoupledTask"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, mFinishWithCoupledTask:Z

    .line 187
    invoke-virtual {p0}, getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 188
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_9

    .line 192
    :goto_8
    return-void

    .line 191
    :cond_9
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->setFinishWithCoupledTask(Landroid/view/IApplicationToken;Z)V

    goto :goto_8
.end method

.method final setFrontOfTask()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, "foundFront":Z
    iget-object v4, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 736
    .local v2, "numActivities":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_a
    if-ge v0, v2, :cond_23

    .line 737
    iget-object v4, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 738
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1a

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1f

    .line 739
    :cond_1a
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 736
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 741
    :cond_1f
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 743
    const/4 v1, 0x1

    goto :goto_1c

    .line 746
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    if-nez v1, :cond_31

    if-lez v2, :cond_31

    .line 749
    iget-object v4, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 751
    :cond_31
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 446
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, mCallingUid:I

    .line 447
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, mCallingPackage:Ljava/lang/String;

    .line 448
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 449
    return-void
.end method

.method setLastThumbnail(Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 653
    iget-object v0, p0, mLastThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_1d

    .line 654
    iput-object p1, p0, mLastThumbnail:Landroid/graphics/Bitmap;

    .line 655
    if-nez p1, :cond_13

    .line 656
    iget-object v0, p0, mLastThumbnailFile:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 657
    iget-object v0, p0, mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 662
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 664
    :goto_12
    return v0

    .line 660
    :cond_13
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iget-object v1, p0, mFilename:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_11

    .line 664
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method

.method setLockTaskAuth()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1001
    iget-boolean v2, p0, mPrivileged:Z

    if-nez v2, :cond_11

    iget v2, p0, mLockTaskMode:I

    if-eq v2, v1, :cond_f

    iget v2, p0, mLockTaskMode:I

    if-ne v2, v0, :cond_11

    .line 1005
    :cond_f
    iput v3, p0, mLockTaskMode:I

    .line 1007
    :cond_11
    iget v2, p0, mLockTaskMode:I

    packed-switch v2, :pswitch_data_32

    .line 1028
    :goto_16
    return-void

    .line 1009
    :pswitch_17
    invoke-virtual {p0}, isLockTaskWhitelistedLocked()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x3

    :cond_1e
    iput v0, p0, mLockTaskAuth:I

    goto :goto_16

    .line 1014
    :pswitch_21
    iput v3, p0, mLockTaskAuth:I

    goto :goto_16

    .line 1018
    :pswitch_24
    const/4 v0, 0x4

    iput v0, p0, mLockTaskAuth:I

    goto :goto_16

    .line 1022
    :pswitch_28
    invoke-virtual {p0}, isLockTaskWhitelistedLocked()Z

    move-result v2

    if-eqz v2, :cond_2f

    move v0, v1

    :cond_2f
    iput v0, p0, mLockTaskAuth:I

    goto :goto_16

    .line 1007
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_17
        :pswitch_21
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 600
    iput-object p1, p0, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 601
    if-nez p1, :cond_8

    const/4 v0, -0x1

    :goto_5
    iput v0, p0, mNextAffiliateTaskId:I

    .line 602
    return-void

    .line 601
    :cond_8
    iget v0, p1, taskId:I

    goto :goto_5
.end method

.method public setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "parentCoupledTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 199
    iput-object p1, p0, mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 200
    invoke-virtual {p0}, getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 201
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_9

    .line 212
    :cond_8
    :goto_8
    return-void

    .line 204
    :cond_9
    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1f

    .line 205
    invoke-virtual {p0}, getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 206
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_8

    .line 207
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setParentCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_8

    .line 210
    .end local v0    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setParentCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_8
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 595
    iput-object p1, p0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 596
    if-nez p1, :cond_8

    const/4 v0, -0x1

    :goto_5
    iput v0, p0, mPrevAffiliateTaskId:I

    .line 597
    return-void

    .line 596
    :cond_8
    iget v0, p1, taskId:I

    goto :goto_5
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 626
    invoke-virtual {p0}, closeRecentsChain()V

    .line 627
    iget v1, p1, mAffiliatedTaskId:I

    iput v1, p0, mAffiliatedTaskId:I

    .line 628
    iget v1, p1, mAffiliatedTaskColor:I

    iput v1, p0, mAffiliatedTaskColor:I

    .line 630
    :goto_c
    iget-object v1, p1, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_53

    .line 631
    iget-object v0, p1, mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 632
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, mAffiliatedTaskId:I

    iget v2, p0, mAffiliatedTaskId:I

    if-eq v1, v2, :cond_5d

    .line 633
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, v0, mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_50

    .line 636
    invoke-virtual {v0, v4}, setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 638
    :cond_50
    invoke-virtual {p1, v4}, setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 643
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_53
    invoke-virtual {p1, p0}, setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 644
    invoke-virtual {p0, p1}, setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 645
    invoke-virtual {p0, v4}, setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 646
    return-void

    .line 641
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_5d
    move-object p1, v0

    .line 642
    goto :goto_c
.end method

.method setTaskToReturnTo(I)V
    .registers 4
    .param p1, "taskToReturnTo"    # I

    .prologue
    const/4 v1, 0x2

    .line 551
    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isExpandHomeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-ne p1, v1, :cond_1c

    .line 554
    const/4 v0, 0x6

    iput v0, p0, mTaskToReturnTo:I

    .line 562
    .end local p1    # "taskToReturnTo":I
    :goto_c
    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1b

    iget-object v0, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 563
    const/4 v0, 0x0

    iput v0, p0, mTaskToReturnTo:I

    .line 567
    :cond_1b
    return-void

    .line 557
    .restart local p1    # "taskToReturnTo":I
    :cond_1c
    if-ne p1, v1, :cond_1f

    const/4 p1, 0x1

    .end local p1    # "taskToReturnTo":I
    :cond_1f
    iput p1, p0, mTaskToReturnTo:I

    goto :goto_c
.end method

.method setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 1653
    iput p1, p0, taskType:I

    .line 1654
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1614
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 1615
    iget-object v1, p0, stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    iget v1, p0, userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1618
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    iget-object v1, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1628
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1648
    :goto_31
    return-object v1

    .line 1631
    :cond_32
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    iget v1, p0, taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1635
    iget-object v1, p0, affinity:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 1636
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    iget-object v1, p0, affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    :goto_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    .line 1648
    invoke-virtual {p0}, toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 1638
    :cond_65
    iget-object v1, p0, intent:Landroid/content/Intent;

    if-eqz v1, :cond_7c

    .line 1639
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    iget-object v1, p0, intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 1641
    :cond_7c
    iget-object v1, p0, affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_93

    .line 1642
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    iget-object v1, p0, affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 1645
    :cond_93
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 721
    iget-object v2, p0, stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_28

    .line 722
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_28

    .line 723
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 724
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_25

    if-eq v1, p1, :cond_25

    iget-object v2, p0, stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 729
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_24
    return-object v1

    .line 722
    .restart local v0    # "activityNdx":I
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 729
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_28
    const/4 v1, 0x0

    goto :goto_24
.end method

.method touchActiveTime()V
    .registers 5

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, lastActiveTime:J

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, lastActiveElapsedTime:J

    .line 435
    iget-wide v0, p0, firstActiveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 436
    iget-wide v0, p0, lastActiveTime:J

    iput-wide v0, p0, firstActiveTime:J

    .line 438
    :cond_18
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 4

    .prologue
    .line 1203
    invoke-virtual {p0}, findEffectiveRootIndex()I

    move-result v0

    .line 1204
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1205
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1206
    return-void
.end method

.method updateTaskDescription()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1130
    iget-object v8, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1131
    .local v4, "numActivities":I
    if-nez v4, :cond_5d

    .line 1133
    .local v6, "relinquish":Z
    :cond_a
    :goto_a
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "activityNdx":I
    :goto_e
    if-ge v0, v4, :cond_24

    .line 1135
    iget-object v8, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1136
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_6f

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-nez v8, :cond_6f

    .line 1139
    add-int/lit8 v0, v0, 0x1

    .line 1147
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    if-lez v0, :cond_9b

    .line 1152
    const/4 v3, 0x0

    .line 1153
    .local v3, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1154
    .local v2, "iconFilename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1156
    .local v1, "colorPrimary":I
    const/4 v7, 0x0

    .line 1157
    .local v7, "textColorPrimary":I
    add-int/lit8 v0, v0, -0x1

    :goto_2c
    if-ltz v0, :cond_81

    .line 1158
    iget-object v8, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1159
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v8, :cond_5a

    .line 1160
    if-nez v3, :cond_42

    .line 1161
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 1163
    :cond_42
    if-nez v2, :cond_4a

    .line 1164
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 1166
    :cond_4a
    if-nez v1, :cond_52

    .line 1167
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    .line 1170
    :cond_52
    if-nez v7, :cond_5a

    .line 1171
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getTextPrimaryColor()I

    move-result v7

    .line 1157
    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    .line 1131
    .end local v0    # "activityNdx":I
    .end local v1    # "colorPrimary":I
    .end local v2    # "iconFilename":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "relinquish":Z
    .end local v7    # "textColorPrimary":I
    :cond_5d
    iget-object v8, p0, mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_a

    move v6, v9

    goto :goto_a

    .line 1142
    .restart local v0    # "activityNdx":I
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "relinquish":Z
    :cond_6f
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_7e

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-nez v8, :cond_24

    .line 1134
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1176
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "colorPrimary":I
    .restart local v2    # "iconFilename":Ljava/lang/String;
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v7    # "textColorPrimary":I
    :cond_81
    new-instance v8, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v8, v3, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v8, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1178
    iget-object v8, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8, v7}, Landroid/app/ActivityManager$TaskDescription;->setTextPrimaryColor(I)V

    .line 1180
    iget v8, p0, taskId:I

    iget v9, p0, mAffiliatedTaskId:I

    if-ne v8, v9, :cond_9b

    .line 1181
    iget-object v8, p0, lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v8

    iput v8, p0, mAffiliatedTaskColor:I

    .line 1184
    .end local v1    # "colorPrimary":I
    .end local v2    # "iconFilename":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v7    # "textColorPrimary":I
    :cond_9b
    return-void
.end method
