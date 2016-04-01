.class public Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;
    }
.end annotation


# static fields
.field private static final KEY_AIR_COMMAND_HIT_TEST_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_EVENT_INJECTION_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_EVENT_INJECTION_WAIT_UNTIL_CONSUME:Ljava/lang/String; = "waitUntilConsume"

.field private static final KEY_SCROLLABLE_AREA_INFO_ACTIVITY_NAME:Ljava/lang/String; = "activityName"

.field private static final KEY_SCROLLABLE_AREA_INFO_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_SCROLLABLE_AREA_INFO_SCROLLABLE_VIEWS:Ljava/lang/String; = "scrollableViews"

.field private static final KEY_SCROLLABLE_AREA_INFO_UNSCROLLABLE_VIEWS:Ljava/lang/String; = "unscrollableViews"

.field private static final KEY_SCROLLABLE_AREA_INFO_WINDOW_LAYER:Ljava/lang/String; = "windowLayer"

.field private static final KEY_SCROLLABLE_AREA_INFO_WINDOW_RECT:Ljava/lang/String; = "windowRect"

.field private static final KEY_SCROLLABLE_VIEW_INFO_CHILD_VIEWS:Ljava/lang/String; = "childViews"

.field private static final KEY_SCROLLABLE_VIEW_INFO_TARGET_VIEW:Ljava/lang/String; = "targetView"

.field private static final KEY_VIEW_INFO_HASHCODE:Ljava/lang/String; = "hashCode"

.field private static final KEY_VIEW_INFO_HIERARCHY:Ljava/lang/String; = "hierarchy"

.field private static final KEY_VIEW_INFO_SCREEN_RECT:Ljava/lang/String; = "screenRect"

.field public static final PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String; = "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

.field public static final PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String; = "android.permission.INJECT_EVENTS"

.field public static final TAG:Ljava/lang/String; = "SmartClipRemoteRequestDispatcher"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootImplGateway"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, DEBUG:Z

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_26

    .line 106
    const-string v1, "com.samsung.android.smartclip.DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, DEBUG:Z

    .line 110
    :cond_26
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, dispatchAirCommandHitTest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, dispatchScrollableAreaInfo(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, dispatchScrollableViewInfo(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, dispatchInputEventInjection(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    .prologue
    .line 56
    iget-boolean v0, p0, DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, enqueueInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .param p2, "x2"    # Landroid/os/Parcelable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, sendResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    return-void
.end method

.method private createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 381
    .local v2, "hashCode":I
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 382
    .local v4, "screenRectOfView":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, getViewHierarchyTable(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 384
    .local v5, "viewHierarchy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "hashCode"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    const-string/jumbo v6, "screenRect"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 386
    const-string v6, "hierarchy"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 388
    iget-boolean v6, p0, DEBUG:Z

    if-eqz v6, :cond_78

    .line 389
    const-string v6, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createScrollableViewInfo : Scrollable view hash=@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / Rect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    .local v1, "clsName":Ljava/lang/String;
    const-string v6, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createScrollableViewInfo :   + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 395
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_78
    return-object v0
.end method

.method private dispatchAirCommandHitTest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 16
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 339
    iget-object v11, p0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v11}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v2

    .line 340
    .local v2, "mScaleFactor":Landroid/graphics/PointF;
    iget-object v11, p0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v11}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 342
    .local v3, "mView":Landroid/view/View;
    const/4 v6, -0x1

    .line 343
    .local v6, "result":I
    iget-object v0, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v0, Landroid/os/Bundle;

    .line 344
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v11, "id"

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 345
    .local v1, "id":I
    const-string/jumbo v11, "x"

    const v12, -0xf423f

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 346
    .local v9, "x":I
    const-string/jumbo v11, "y"

    const v12, -0xf423f

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 348
    .local v10, "y":I
    if-eqz v3, :cond_84

    .line 350
    iget-object v11, p0, mContext:Landroid/content/Context;

    if-eqz v11, :cond_77

    iget v11, v2, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_42

    iget v11, v2, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_77

    .line 353
    :cond_42
    iget-object v11, p0, mContext:Landroid/content/Context;

    const-string/jumbo v12, "multiwindow_facade"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 354
    .local v4, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v5

    .line 355
    .local v5, "pos":Landroid/graphics/Point;
    if-eqz v5, :cond_77

    .line 356
    iget v11, v5, Landroid/graphics/Point;->x:I

    sub-int v11, v9, v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    iget v13, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v9, v11

    .line 357
    iget v11, v5, Landroid/graphics/Point;->y:I

    sub-int v11, v10, v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    iget v13, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v10, v11

    .line 362
    .end local v4    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v5    # "pos":Landroid/graphics/Point;
    :cond_77
    invoke-direct {p0, v3, v9, v10}, findTopmostViewByPosition(Landroid/view/View;II)Landroid/view/View;

    move-result-object v8

    .line 363
    .local v8, "targetView":Landroid/view/View;
    if-eqz v8, :cond_97

    invoke-virtual {v8}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v11

    if-eqz v11, :cond_97

    .line 364
    const/4 v6, 0x1

    .line 370
    .end local v8    # "targetView":Landroid/view/View;
    :cond_84
    :goto_84
    iget-object v11, p0, mContext:Landroid/content/Context;

    if-eqz v11, :cond_96

    .line 371
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v7, "resultData":Landroid/os/Bundle;
    const-string/jumbo v11, "result"

    invoke-virtual {v7, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    invoke-direct {p0, p1, v7}, sendResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 375
    .end local v7    # "resultData":Landroid/os/Bundle;
    :cond_96
    return-void

    .line 366
    .restart local v8    # "targetView":Landroid/view/View;
    :cond_97
    const/4 v6, 0x0

    goto :goto_84
.end method

.method private dispatchInputEventInjection(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 24
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 176
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    if-eqz v3, :cond_129

    .line 177
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    instance-of v3, v3, Landroid/view/MotionEvent;

    if-eqz v3, :cond_83

    .line 178
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v15, Landroid/view/MotionEvent;

    .line 179
    .local v15, "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, transformTouchPosition(Landroid/view/MotionEvent;)V

    .line 180
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 181
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, DEBUG:Z

    const/4 v7, 0x1

    if-eq v3, v7, :cond_2c

    if-eqz v8, :cond_2c

    const/4 v3, 0x1

    if-eq v8, v3, :cond_2c

    const/4 v3, 0x3

    if-ne v8, v3, :cond_76

    .line 182
    :cond_2c
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v17, v0

    .line 183
    .local v17, "x":I
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 184
    .local v18, "y":I
    const-string v3, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dispatchInputEventInjection : Touch event action="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v8}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, " x="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, " y="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_76
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v14, Landroid/view/InputEvent;

    .line 188
    .local v14, "inputEvent":Landroid/view/InputEvent;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, enqueueInputEvent(Landroid/view/InputEvent;Z)V

    .line 242
    .end local v8    # "action":I
    .end local v14    # "inputEvent":Landroid/view/InputEvent;
    .end local v15    # "motionEvent":Landroid/view/MotionEvent;
    :cond_82
    :goto_82
    return-void

    .line 189
    :cond_83
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_82

    .line 190
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 191
    .local v16, "reqData":Landroid/os/Bundle;
    const-string v3, "events"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 192
    .local v5, "events":[Landroid/os/Parcelable;
    if-eqz v5, :cond_120

    .line 193
    const-string/jumbo v3, "waitUntilConsume"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 194
    .local v6, "waitUntilConsume":Z
    array-length v3, v5

    if-lez v3, :cond_f0

    const/4 v3, 0x0

    aget-object v3, v5, v3

    check-cast v3, Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v12

    .line 196
    .local v12, "firstEventTime":J
    :goto_b2
    move-object/from16 v0, p0

    iget-boolean v3, v0, DEBUG:Z

    if-eqz v3, :cond_e3

    .line 197
    const-string v3, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dispatchInputEventInjection : wait = "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, "  eventCount="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_e3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e4
    array-length v3, v5

    if-ge v9, v3, :cond_82

    .line 201
    aget-object v4, v5, v9

    check-cast v4, Landroid/view/InputEvent;

    .line 202
    .local v4, "event":Landroid/view/InputEvent;
    if-nez v4, :cond_f3

    .line 200
    :goto_ed
    add-int/lit8 v9, v9, 0x1

    goto :goto_e4

    .line 194
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v9    # "i":I
    .end local v12    # "firstEventTime":J
    :cond_f0
    const-wide/16 v12, -0x1

    goto :goto_b2

    .line 206
    .restart local v4    # "event":Landroid/view/InputEvent;
    .restart local v9    # "i":I
    .restart local v12    # "firstEventTime":J
    :cond_f3
    instance-of v3, v4, Landroid/view/MotionEvent;

    if-eqz v3, :cond_ff

    move-object v3, v4

    .line 207
    check-cast v3, Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, transformTouchPosition(Landroid/view/MotionEvent;)V

    .line 210
    :cond_ff
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$5;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$5;-><init>(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;[Landroid/os/Parcelable;ZLcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    .line 228
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v4}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v20

    sub-long v10, v20, v12

    .line 229
    .local v10, "delay":J
    const-wide/16 v20, 0x0

    cmp-long v3, v10, v20

    if-lez v3, :cond_11c

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ed

    .line 232
    :cond_11c
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_ed

    .line 236
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v6    # "waitUntilConsume":Z
    .end local v9    # "i":I
    .end local v10    # "delay":J
    .end local v12    # "firstEventTime":J
    :cond_120
    const-string v3, "SmartClipRemoteRequestDispatcher"

    const-string v7, "dispatchInputEventInjection : Event is null!"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_82

    .line 240
    .end local v5    # "events":[Landroid/os/Parcelable;
    .end local v16    # "reqData":Landroid/os/Bundle;
    :cond_129
    const-string v3, "SmartClipRemoteRequestDispatcher"

    const-string v7, "dispatchInputEventInjection : Empty input event!"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_82
.end method

.method private dispatchScrollableAreaInfo(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 19
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v14}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 247
    .local v6, "rootView":Landroid/view/View;
    if-eqz v6, :cond_11e

    .line 248
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v8, "scrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v10, "unscrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v6}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 252
    .local v13, "windowRect":Landroid/graphics/Rect;
    const-string v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dispatchScrollableAreaInfo : windowRect = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v8, v10}, findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 256
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v5, "resultData":Landroid/os/Bundle;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v7, "scrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 261
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v12

    .line 262
    .local v12, "viewInfo":Landroid/os/Bundle;
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 264
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "viewInfo":Landroid/os/Bundle;
    :cond_59
    const-string v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dispatchScrollableAreaInfo : Scrollable view count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string/jumbo v14, "scrollableViews"

    invoke-virtual {v5, v14, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 268
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v9, "unscrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 270
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v12

    .line 271
    .restart local v12    # "viewInfo":Landroid/os/Bundle;
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 273
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "viewInfo":Landroid/os/Bundle;
    :cond_9a
    const-string v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dispatchScrollableAreaInfo : Unscrollable view count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string/jumbo v14, "unscrollableViews"

    invoke-virtual {v5, v14, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 277
    const-string/jumbo v14, "windowRect"

    invoke-virtual {v5, v14, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    const-string/jumbo v14, "windowLayer"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    invoke-virtual {v5, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 283
    .local v2, "activityName":Ljava/lang/String;
    const-string/jumbo v14, "packageName"

    invoke-virtual {v5, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    instance-of v14, v14, Landroid/app/Activity;

    if-eqz v14, :cond_f4

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v14, "activityName"

    invoke-virtual {v5, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_f4
    const-string v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dispatchScrollableAreaInfo : Pkg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Activity="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, sendResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 294
    .end local v2    # "activityName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "resultData":Landroid/os/Bundle;
    .end local v7    # "scrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v8    # "scrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "unscrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v10    # "unscrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13    # "windowRect":Landroid/graphics/Rect;
    :goto_11d
    return-void

    .line 292
    :cond_11e
    const-string v14, "SmartClipRemoteRequestDispatcher"

    const-string v15, "dispatchScrollableAreaInfo : Root view is null!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d
.end method

.method private dispatchScrollableViewInfo(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 19
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v14}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 299
    .local v8, "rootView":Landroid/view/View;
    if-eqz v8, :cond_93

    .line 300
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v14, Landroid/os/Bundle;

    const-string v15, "hashCode"

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 301
    .local v12, "viewHash":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_ad

    .line 302
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, findViewByHashCode(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    .line 305
    .local v11, "view":Landroid/view/View;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v7, "resultData":Landroid/os/Bundle;
    if-eqz v11, :cond_94

    .line 308
    invoke-static {v8}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 309
    .local v13, "windowRect":Landroid/graphics/Rect;
    const-string/jumbo v14, "windowRect"

    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v9

    .line 313
    .local v9, "targetViewInfo":Landroid/os/Bundle;
    const-string/jumbo v14, "targetView"

    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v4, "childInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    instance-of v14, v11, Landroid/view/ViewGroup;

    if-eqz v14, :cond_61

    move-object v10, v11

    .line 318
    check-cast v10, Landroid/view/ViewGroup;

    .line 319
    .local v10, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 320
    .local v2, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4f
    if-ge v6, v2, :cond_61

    .line 321
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 322
    .local v5, "childView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v3

    .line 323
    .local v3, "childInfo":Landroid/os/Bundle;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    .line 326
    .end local v2    # "childCount":I
    .end local v3    # "childInfo":Landroid/os/Bundle;
    .end local v5    # "childView":Landroid/view/View;
    .end local v6    # "i":I
    .end local v10    # "vg":Landroid/view/ViewGroup;
    :cond_61
    const-string v14, "childViews"

    invoke-virtual {v7, v14, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 327
    const-string v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dispatchScrollableViewInfo : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ChildCnt="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v4    # "childInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v9    # "targetViewInfo":Landroid/os/Bundle;
    .end local v13    # "windowRect":Landroid/graphics/Rect;
    :goto_8c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, sendResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 336
    .end local v7    # "resultData":Landroid/os/Bundle;
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "viewHash":I
    :cond_93
    :goto_93
    return-void

    .line 329
    .restart local v7    # "resultData":Landroid/os/Bundle;
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "viewHash":I
    :cond_94
    const-string v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dispatchScrollableViewInfo : Could not found the view! hash="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 333
    .end local v7    # "resultData":Landroid/os/Bundle;
    .end local v11    # "view":Landroid/view/View;
    :cond_ad
    const-string v14, "SmartClipRemoteRequestDispatcher"

    const-string v15, "dispatchScrollableViewInfo : There is no hash value in request!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93
.end method

.method private enqueueInputEvent(Landroid/view/InputEvent;Z)V
    .registers 6
    .param p1, "inputEvent"    # Landroid/view/InputEvent;
    .param p2, "processImmediately"    # Z

    .prologue
    .line 612
    iget-object v0, p0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    if-nez v0, :cond_c

    .line 613
    const-string v0, "SmartClipRemoteRequestDispatcher"

    const-string v1, "enqueueInputEvent : Gateway is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_b
    return-void

    .line 615
    :cond_c
    iget-object v0, p0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto :goto_b
.end method

.method private findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p3, "scrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p4, "unscrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    if-eqz v18, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v18

    if-nez v18, :cond_15

    .line 561
    :cond_14
    :goto_14
    return-void

    .line 449
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 450
    .local v16, "viewClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 451
    .local v14, "parentClassName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v15

    .line 453
    .local v15, "screenRectOfView":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3b5

    .line 454
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, "hashCode":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ScrollView;

    move/from16 v18, v0

    if-nez v18, :cond_5f

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/AbsListView;

    move/from16 v18, v0

    if-nez v18, :cond_5f

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/webkit/WebView;

    move/from16 v18, v0

    if-eqz v18, :cond_d0

    .line 458
    :cond_5f
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c7

    .line 459
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : Scrollable view = @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " H="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_c7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 466
    :cond_d0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v18, v0

    if-eqz v18, :cond_f8

    move-object/from16 v17, p1

    .line 467
    check-cast v17, Landroid/view/ViewGroup;

    .line 468
    .local v17, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 470
    .local v4, "childCount":I
    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_e2
    if-ltz v11, :cond_f8

    .line 471
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 473
    .local v7, "curView":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v7, v1, v2, v3}, findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 470
    add-int/lit8 v11, v11, -0x1

    goto :goto_e2

    .line 478
    .end local v4    # "childCount":I
    .end local v7    # "curView":Landroid/view/View;
    .end local v11    # "i":I
    .end local v17    # "viewGroup":Landroid/view/ViewGroup;
    :cond_f8
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/VideoView;

    move/from16 v18, v0

    if-nez v18, :cond_108

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    move/from16 v18, v0

    if-eqz v18, :cond_179

    .line 479
    :cond_108
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_170

    .line 480
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : Unscrollable view = @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " H="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_170
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 485
    :cond_179
    const/4 v10, 0x0

    .line 486
    .local v10, "haveCustomTouchEventHandler":Z
    const/4 v9, 0x0

    .line 488
    .local v9, "haveCustomDrawHandler":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 489
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/Class;

    const/16 v18, 0x0

    const-class v19, Landroid/view/MotionEvent;

    aput-object v19, v13, v18

    .line 490
    .local v13, "paramEvent":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/Class;

    const/16 v18, 0x0

    const-class v19, Landroid/graphics/Canvas;

    aput-object v19, v12, v18

    .line 491
    .local v12, "paramCanvas":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_197
    if-eqz v5, :cond_1cd

    .line 492
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "clsName":Ljava/lang/String;
    const-string v18, "android.view."

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1cd

    const-string v18, "android.widget."

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1cd

    const-string v18, "com.android.internal."

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d8

    .line 548
    .end local v6    # "clsName":Ljava/lang/String;
    :cond_1cd
    if-eqz v10, :cond_14

    .line 552
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 500
    .restart local v6    # "clsName":Ljava/lang/String;
    :cond_1d8
    const-string v18, "dispatchTouchEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v13}, isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_235

    .line 501
    const/4 v10, 0x1

    .line 503
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_235

    .line 504
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Have dispatchTouchEvent() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_235
    const-string/jumbo v18, "onTouchEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v13}, isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_293

    .line 510
    const/4 v10, 0x1

    .line 511
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_293

    .line 512
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Have onTouchEvent() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_293
    const-string/jumbo v18, "onDraw"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f1

    .line 518
    const/4 v9, 0x1

    .line 519
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2f1

    .line 520
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Have onDraw() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2f1
    const-string v18, "draw"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_34e

    .line 526
    const/4 v9, 0x1

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_34e

    .line 528
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Have draw() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_34e
    const-string v18, "dispatchDraw"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3ab

    .line 534
    const/4 v9, 0x1

    .line 535
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3ab

    .line 536
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Have dispatchDraw() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_3ab
    if-eqz v10, :cond_3af

    if-nez v9, :cond_1cd

    .line 545
    :cond_3af
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 546
    goto/16 :goto_197

    .line 557
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "clsName":Ljava/lang/String;
    .end local v8    # "hashCode":Ljava/lang/String;
    .end local v9    # "haveCustomDrawHandler":Z
    .end local v10    # "haveCustomTouchEventHandler":Z
    .end local v12    # "paramCanvas":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v13    # "paramEvent":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3b5
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 558
    const-string v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScrollableViews : Not in range - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14
.end method

.method private findTopmostViewByPosition(Landroid/view/View;II)Landroid/view/View;
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x0

    .line 413
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-nez v7, :cond_17

    :cond_15
    move-object v4, v6

    .line 441
    :cond_16
    :goto_16
    return-object v4

    .line 417
    :cond_17
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 419
    .local v3, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_48

    .line 420
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3e

    move-object v5, p1

    .line 421
    check-cast v5, Landroid/view/ViewGroup;

    .line 422
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 424
    .local v0, "childCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_2f
    if-ltz v2, :cond_3e

    .line 425
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 427
    .local v1, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2, p3}, findTopmostViewByPosition(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    .line 428
    .local v4, "topMostView":Landroid/view/View;
    if-nez v4, :cond_16

    .line 424
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 434
    .end local v0    # "childCount":I
    .end local v1    # "curView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "topMostView":Landroid/view/View;
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3e
    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    if-eqz v7, :cond_46

    move-object v4, p1

    .line 435
    goto :goto_16

    :cond_46
    move-object v4, v6

    .line 437
    goto :goto_16

    :cond_48
    move-object v4, v6

    .line 441
    goto :goto_16
.end method

.method private findViewByHashCode(Landroid/view/View;I)Landroid/view/View;
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewHash"    # I

    .prologue
    const/4 v5, 0x0

    .line 575
    if-nez p1, :cond_5

    move-object p1, v5

    .line 596
    .end local p1    # "view":Landroid/view/View;
    :cond_4
    :goto_4
    return-object p1

    .line 579
    .restart local p1    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v6, p2, :cond_4

    .line 583
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_29

    move-object v4, p1

    .line 584
    check-cast v4, Landroid/view/ViewGroup;

    .line 585
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 587
    .local v0, "childCount":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_18
    if-ltz v3, :cond_29

    .line 588
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 590
    .local v1, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, findViewByHashCode(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 591
    .local v2, "foundView":Landroid/view/View;
    if-eqz v2, :cond_26

    move-object p1, v2

    .line 592
    goto :goto_4

    .line 587
    :cond_26
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .end local v0    # "childCount":I
    .end local v1    # "curView":Landroid/view/View;
    .end local v2    # "foundView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_29
    move-object p1, v5

    .line 596
    goto :goto_4
.end method

.method private getViewHierarchyTable(Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v2, "hierarchy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 401
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz v0, :cond_1a

    .line 402
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "clsName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    const-string v3, "android.view.View"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 409
    .end local v1    # "clsName":Ljava/lang/String;
    :cond_1a
    return-object v2

    .line 407
    .restart local v1    # "clsName":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 408
    goto :goto_9
.end method

.method private isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 6
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8

    move-result-object v0

    .line 566
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_9

    .line 567
    const/4 v1, 0x1

    .line 571
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_7
    return v1

    .line 569
    :catch_8
    move-exception v1

    .line 571
    :cond_9
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private sendResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .param p2, "resultData"    # Landroid/os/Parcelable;

    .prologue
    .line 620
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "spengestureservice"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 621
    .local v1, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iget v3, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-direct {v0, v2, v3, p2}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 622
    .local v0, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v1, v0}, Lcom/samsung/android/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V

    .line 623
    return-void
.end method

.method private transformTouchPosition(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 627
    iget-object v9, p0, mViewRootImplGateway:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v9}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 628
    .local v3, "rootView":Landroid/view/View;
    if-nez v3, :cond_11

    .line 629
    const-string v9, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v10, "transformTouchPosition : Root view is not exists"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_10
    :goto_10
    return-void

    .line 633
    :cond_11
    invoke-static {v3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 634
    .local v4, "windowRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 635
    .local v5, "windowX":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 636
    .local v6, "windowY":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->dssScale:F

    .line 637
    .local v0, "dssScale":F
    if-nez v5, :cond_2b

    if-nez v6, :cond_2b

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_10

    .line 638
    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 639
    .local v1, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 640
    .local v2, "rawY":F
    int-to-float v9, v5

    sub-float v9, v1, v9

    mul-float v7, v9, v0

    .line 641
    .local v7, "x":F
    int-to-float v9, v6

    sub-float v9, v2, v9

    mul-float v8, v9, v0

    .line 642
    .local v8, "y":F
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 643
    iget-boolean v9, p0, DEBUG:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 644
    const-string v9, "SmartClipRemoteRequestDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "transformMotionEvent : Window offsetX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " offsetY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dssScale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " destX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " destY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)V
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 117
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_42

    const/4 v1, 0x1

    .line 119
    .local v1, "havePermission":Z
    :goto_9
    if-nez v1, :cond_44

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "errStr":Ljava/lang/String;
    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPermission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v0    # "errStr":Ljava/lang/String;
    .end local v1    # "havePermission":Z
    :cond_42
    const/4 v1, 0x0

    goto :goto_9

    .line 124
    .restart local v1    # "havePermission":Z
    :cond_44
    return-void
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 5
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 128
    iget v0, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_76

    .line 170
    const-string v0, "SmartClipRemoteRequestDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSmartClipRemoteRequest : Unknown request type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_25
    return-void

    .line 130
    :pswitch_26
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, checkPermission(Ljava/lang/String;II)V

    .line 131
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$1;-><init>(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 140
    :pswitch_3a
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, checkPermission(Ljava/lang/String;II)V

    .line 141
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$2;-><init>(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 150
    :pswitch_4e
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, checkPermission(Ljava/lang/String;II)V

    .line 151
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$3;-><init>(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 160
    :pswitch_62
    const-string v0, "android.permission.INJECT_EVENTS"

    iget v1, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, checkPermission(Ljava/lang/String;II)V

    .line 161
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$4;-><init>(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 128
    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_26
        :pswitch_62
        :pswitch_3a
        :pswitch_4e
    .end packed-switch
.end method

.method public isDebugMode()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, DEBUG:Z

    return v0
.end method
