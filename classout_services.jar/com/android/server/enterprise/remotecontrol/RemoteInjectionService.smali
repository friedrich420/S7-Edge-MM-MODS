.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field mRemoteControlDisabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteScreenHeight:I

.field private mRemoteScreenWidth:I

.field private mSessionOwnerUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 121
    invoke-direct {p0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 110
    iput-object v2, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 111
    iput-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 122
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 123
    invoke-direct {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 124
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 125
    .local v1, "orientation":I
    if-eqz v1, :cond_22

    if-ne v1, v3, :cond_3f

    :cond_22
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    :goto_26
    iput v2, p0, mRemoteScreenWidth:I

    .line 127
    if-eqz v1, :cond_2c

    if-ne v1, v3, :cond_44

    :cond_2c
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    :goto_30
    iput v2, p0, mRemoteScreenHeight:I

    .line 129
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 130
    const/4 v2, -0x1

    iput v2, p0, mSessionOwnerUid:I

    .line 131
    sput-object p0, mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 132
    return-void

    .line 125
    :cond_3f
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_26

    .line 127
    :cond_44
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    goto :goto_30
.end method

.method private enforceRemoteControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 147
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_REMOTE_CONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 156
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_12
    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 140
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 143
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
    .registers 1

    .prologue
    .line 135
    sget-object v0, mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 404
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 406
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    .line 407
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 408
    .local v7, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .line 409
    .local v8, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    .line 410
    .local v9, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    .line 411
    .local v10, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    .line 412
    .local v11, "scancode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    .line 413
    .local v13, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 415
    .local v0, "flags":I
    if-nez v13, :cond_2c

    .line 416
    const/16 v13, 0x101

    .line 419
    :cond_2c
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-nez v12, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 420
    :cond_36
    const-wide/16 v14, 0x0

    cmp-long v12, v2, v14

    if-nez v12, :cond_3d

    move-wide v2, v4

    .line 422
    :cond_3d
    new-instance v1, Landroid/view/KeyEvent;

    or-int/lit8 v12, v0, 0x8

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 425
    .local v1, "newEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    if-eqz p2, :cond_50

    const/4 v12, 0x2

    :goto_4b
    invoke-virtual {v14, v1, v12}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v12

    return v12

    :cond_50
    const/4 v12, 0x1

    goto :goto_4b
.end method

.method private injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 431
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 432
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_11

    .line 433
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 436
    :cond_11
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1d

    const/4 v1, 0x2

    :goto_18
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1d
    const/4 v1, 0x1

    goto :goto_18
.end method

.method private injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 442
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 443
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_12

    .line 444
    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 447
    :cond_12
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1e

    const/4 v1, 0x2

    :goto_19
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1e
    const/4 v1, 0x1

    goto :goto_19
.end method

.method private isRemoteControlDisabledInternal(II)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "callerUid"    # I

    .prologue
    .line 569
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 570
    .local v0, "callerUserId":I
    if-eqz v0, :cond_8

    if-ne p1, v0, :cond_19

    .line 571
    :cond_8
    iget-object v2, p0, mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 572
    .local v1, "disabled":Ljava/lang/Boolean;
    if-nez v1, :cond_14

    .line 573
    const/4 v2, 0x0

    .line 578
    .end local v1    # "disabled":Ljava/lang/Boolean;
    :goto_13
    return v2

    .line 575
    .restart local v1    # "disabled":Ljava/lang/Boolean;
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_13

    .line 578
    .end local v1    # "disabled":Ljava/lang/Boolean;
    :cond_19
    const/4 v2, 0x1

    goto :goto_13
.end method

.method private isRemoteInjectionDisabled(I)Z
    .registers 9
    .param p1, "callerUid"    # I

    .prologue
    const/4 v4, 0x0

    .line 554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 557
    .local v2, "token":J
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-direct {p0, v1, p1}, isRemoteControlDisabledInternal(II)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_20
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2d

    move-result v1

    .line 562
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    :goto_1f
    return v1

    .line 559
    :catch_20
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v1, "RemoteInjection"

    const-string v5, "Failed to get top activity user id"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2d

    .line 562
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v4

    .line 565
    goto :goto_1f

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    invoke-direct/range {p0 .. p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    .line 458
    .local v20, "display":Landroid/view/Display;
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v22, v0

    .line 459
    .local v22, "hwWidth":F
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v21, v0

    .line 460
    .local v21, "hwHeight":F
    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v24

    .line 461
    .local v24, "orientation":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 463
    .local v9, "pointerCount":I
    if-eqz v24, :cond_25

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_7d

    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, mRemoteScreenWidth:I

    int-to-float v0, v4

    move/from16 v28, v0

    .line 464
    .local v28, "remoteWidth":F
    :goto_2c
    if-eqz v24, :cond_33

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_85

    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, mRemoteScreenHeight:I

    int-to-float v0, v4

    move/from16 v27, v0

    .line 466
    .local v27, "remoteHeight":F
    :goto_3a
    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    .line 467
    .local v11, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    .line 468
    .local v10, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v25, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v25 .. v25}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 469
    .local v25, "ppCoords":Landroid/view/MotionEvent$PointerCoords;
    new-instance v26, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v26 .. v26}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 470
    .local v26, "ppProperties":Landroid/view/MotionEvent$PointerProperties;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4a
    move/from16 v0, v23

    if-ge v0, v9, :cond_8d

    .line 471
    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 472
    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 474
    move-object/from16 v0, v25

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    div-float v5, v22, v28

    mul-float/2addr v4, v5

    move-object/from16 v0, v25

    iput v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 475
    move-object/from16 v0, v25

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    div-float v5, v21, v27

    mul-float/2addr v4, v5

    move-object/from16 v0, v25

    iput v4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 476
    aput-object v25, v11, v23

    .line 477
    aput-object v26, v10, v23

    .line 470
    add-int/lit8 v23, v23, 0x1

    goto :goto_4a

    .line 463
    .end local v10    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v23    # "i":I
    .end local v25    # "ppCoords":Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "ppProperties":Landroid/view/MotionEvent$PointerProperties;
    .end local v27    # "remoteHeight":F
    .end local v28    # "remoteWidth":F
    :cond_7d
    move-object/from16 v0, p0

    iget v4, v0, mRemoteScreenHeight:I

    int-to-float v0, v4

    move/from16 v28, v0

    goto :goto_2c

    .line 464
    .restart local v28    # "remoteWidth":F
    :cond_85
    move-object/from16 v0, p0

    iget v4, v0, mRemoteScreenWidth:I

    int-to-float v0, v4

    move/from16 v27, v0

    goto :goto_3a

    .line 480
    .restart local v10    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v11    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v23    # "i":I
    .restart local v25    # "ppCoords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v26    # "ppProperties":Landroid/view/MotionEvent$PointerProperties;
    .restart local v27    # "remoteHeight":F
    :cond_8d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public allowRemoteControl(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, "retVal":Z
    invoke-direct {p0, p1}, enforceRemoteControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 498
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 502
    .local v0, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 505
    .local v4, "token":J
    :try_start_b
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "allowRemoteControl"

    invoke-virtual {v6, v0, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 508
    if-eqz v2, :cond_2b

    .line 509
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 510
    .local v3, "userId":I
    iget-object v7, p0, mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, isRemoteControlAllowed(I)Z

    move-result v6

    if-nez v6, :cond_2f

    const/4 v6, 0x1

    :goto_24
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_31
    .catchall {:try_start_b .. :try_end_2b} :catchall_3d

    .line 516
    .end local v3    # "userId":I
    :cond_2b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    :goto_2e
    return v2

    .line 510
    .restart local v3    # "userId":I
    :cond_2f
    const/4 v6, 0x0

    goto :goto_24

    .line 513
    .end local v3    # "userId":I
    :catch_31
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v6, "RemoteInjection"

    const-string v7, "RemoteInjection.allowRemoteControl() exception : "

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3d

    .line 516
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2e

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v12, 0x0

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 183
    .local v7, "callerUid":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 185
    .local v6, "userId":I
    if-nez p1, :cond_29

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 189
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_14
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_24

    .line 194
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v12

    .line 232
    :goto_23
    return v9

    .line 194
    :catchall_24
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 200
    .end local v10    # "token":J
    :cond_29
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 205
    .restart local v10    # "token":J
    const/4 v9, 0x0

    .line 207
    .local v9, "ret":Z
    invoke-direct {p0, v7}, isRemoteInjectionDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 208
    const-string v2, "RemoteInjection"

    const-string v3, "Remote Control is disabled, couldnt inject key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    move v2, v12

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 211
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .line 216
    :cond_54
    :try_start_54
    invoke-direct {p0, p1, p2}, injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_6a

    move-result v9

    .line 222
    :goto_58
    if-eqz v9, :cond_84

    .line 223
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI succeeded"

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 230
    :goto_66
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .line 217
    :catch_6a
    move-exception v8

    .line 218
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 226
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_84
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RemoteInjectionService"

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    move v2, v12

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_66
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 263
    .local v9, "callerUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 266
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 268
    .local v14, "token":J
    const/4 v11, 0x0

    .line 270
    .local v11, "ret":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, isRemoteInjectionDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 271
    const-string v2, "RemoteInjection"

    const-string v3, "Remote Control is disabled, couldnt inject pointer event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 275
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .line 297
    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_39
    return v12

    .line 280
    .end local v12    # "ret":I
    .restart local v11    # "ret":Z
    :cond_3a
    :try_start_3a
    invoke-direct/range {p0 .. p1}, transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 281
    .local v13, "tev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v13, v1}, injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_5b

    move-result v11

    .line 287
    .end local v13    # "tev":Landroid/view/MotionEvent;
    :goto_46
    if-eqz v11, :cond_75

    .line 288
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI succeeded"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 295
    :goto_56
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .line 297
    .restart local v12    # "ret":I
    goto :goto_39

    .line 282
    .end local v12    # "ret":I
    :catch_5b
    move-exception v10

    .line 283
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 291
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_75
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_56
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 328
    .local v9, "callerUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 331
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 333
    .local v14, "token":J
    const/4 v11, 0x0

    .line 335
    .local v11, "ret":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, isRemoteInjectionDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 336
    const-string v2, "RemoteInjection"

    const-string v3, "Remote Control is disabled, couldnt inject track ball event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a trackball event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 340
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .line 362
    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_39
    return v12

    .line 345
    .end local v12    # "ret":I
    .restart local v11    # "ret":Z
    :cond_3a
    :try_start_3a
    invoke-direct/range {p0 .. p1}, transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 346
    .local v13, "tev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v13, v1}, injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_5b

    move-result v11

    .line 352
    .end local v13    # "tev":Landroid/view/MotionEvent;
    :goto_46
    if-eqz v11, :cond_75

    .line 353
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a trackball event into the UI succeeded"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 360
    :goto_56
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    .line 362
    .restart local v12    # "ret":I
    goto :goto_39

    .line 347
    .end local v12    # "ret":I
    :catch_5b
    move-exception v10

    .line 348
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 356
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_75
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a trackball event into the UI failed"

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_56
.end method

.method public isRemoteControlAllowed(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 523
    const/4 v2, 0x1

    .line 526
    .local v2, "ret":Z
    :try_start_1
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowRemoteControl"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 529
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_23

    move-result v3

    .line 530
    .local v3, "value":Z
    if-nez v3, :cond_f

    .line 531
    move v2, v3

    .line 538
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_22
    :goto_22
    return v2

    .line 535
    :catch_23
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RemoteInjection"

    const-string v6, "RemoteInjection.isRemoteControlAllowed() exception : "

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public isRemoteControlAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 542
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 543
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isRemoteControlAllowed(I)Z

    move-result v1

    return v1
.end method

.method public isRemoteControlDisabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 547
    iget v0, p0, mSessionOwnerUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 548
    iget v0, p0, mSessionOwnerUid:I

    invoke-direct {p0, p1, v0}, isRemoteControlDisabledInternal(II)Z

    move-result v0

    .line 550
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 370
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 374
    iget-object v1, p0, mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, isRemoteControlAllowed(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    return-void

    .line 374
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 400
    return-void
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 381
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 395
    return-void
.end method

.method public updateRemoteScreenDimensionsAndCallerUid(III)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uid"    # I

    .prologue
    .line 487
    invoke-direct {p0}, enforceSystemUser()V

    .line 488
    const-string v0, "RemoteInjection"

    const-string v1, "RemoteInjectionService: updateRemoteScreenDimensions()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iput p1, p0, mRemoteScreenWidth:I

    .line 491
    iput p2, p0, mRemoteScreenHeight:I

    .line 492
    iput p3, p0, mSessionOwnerUid:I

    .line 493
    return-void
.end method
