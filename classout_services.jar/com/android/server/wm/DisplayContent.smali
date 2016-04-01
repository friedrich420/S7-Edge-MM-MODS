.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field private mAppTopLevelStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private mCenterBarPoint:Landroid/graphics/Point;

.field mContentRect:Landroid/graphics/Rect;

.field mDeferredRemoval:Z

.field mDimTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field mDisplayScalingDisabled:Z

.field final mDisplaySizeLock:Ljava/lang/Object;

.field mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field private mSamsungHomeStack:Lcom/android/server/wm/TaskStack;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field mTmpRect:Landroid/graphics/Rect;

.field final mTmpTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private final mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, mWindows:Lcom/android/server/wm/WindowList;

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mDisplaySizeLock:Ljava/lang/Object;

    .line 100
    iput v0, p0, mInitialDisplayWidth:I

    .line 101
    iput v0, p0, mInitialDisplayHeight:I

    .line 102
    iput v0, p0, mInitialDisplayDensity:I

    .line 103
    iput v0, p0, mBaseDisplayWidth:I

    .line 104
    iput v0, p0, mBaseDisplayHeight:I

    .line 105
    iput v0, p0, mBaseDisplayDensity:I

    .line 107
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    .line 110
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mBaseDisplayRect:Landroid/graphics/Rect;

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mContentRect:Landroid/graphics/Rect;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mExitingTokens:Ljava/util/ArrayList;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mStacks:Ljava/util/ArrayList;

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mDimTokens:Ljava/util/HashMap;

    .line 139
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mCenterBarPoint:Landroid/graphics/Point;

    .line 142
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, mTouchExcludeRegion:Landroid/graphics/Region;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTmpTaskHistory:Ljava/util/ArrayList;

    .line 720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mAppTopLevelStacks:Ljava/util/ArrayList;

    .line 160
    iput-object p1, p0, mDisplay:Landroid/view/Display;

    .line 161
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, mDisplayId:I

    .line 162
    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mGlobalTasks:Ljava/util/ArrayList;

    .line 173
    iget v1, p0, mDisplayId:I

    if-eqz v1, :cond_91

    iget-object v1, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_92

    :cond_91
    const/4 v0, 0x1

    :cond_92
    iput-boolean v0, p0, isDefaultDisplay:Z

    .line 178
    iput-object p2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 179
    return-void
.end method

.method static deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 579
    sub-int v0, p1, p0

    .line 580
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 581
    :cond_6
    return v0
.end method


# virtual methods
.method animateDimLayers()Z
    .registers 4

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "result":Z
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 508
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    .line 507
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 510
    :cond_1b
    return v0
.end method

.method attachStack(Lcom/android/server/wm/TaskStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 285
    .local v0, "isHomeStackId":Z
    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v1, :cond_7

    if-eqz v0, :cond_15

    .line 287
    :cond_7
    iget-object v1, p0, mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_13

    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attachStack: HOME_STACK_ID (0) not first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_13
    iput-object p1, p0, mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 292
    :cond_15
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, layoutNeeded:Z

    .line 294
    return-void
.end method

.method checkForDeferredActions()V
    .registers 12

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "animating":Z
    iget-object v9, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "stackNdx":I
    :goto_9
    if-ltz v2, :cond_55

    .line 553
    iget-object v9, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 554
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 555
    const/4 v0, 0x1

    .line 552
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 557
    :cond_1d
    iget-boolean v9, v1, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    if-eqz v9, :cond_26

    .line 558
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStackLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    .line 560
    :cond_26
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 561
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "taskNdx":I
    :goto_30
    if-ltz v4, :cond_1a

    .line 562
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 563
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v7, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 564
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "tokenNdx":I
    :goto_40
    if-ltz v6, :cond_52

    .line 565
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 566
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v9, :cond_4f

    .line 567
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    .line 564
    :cond_4f
    add-int/lit8 v6, v6, -0x1

    goto :goto_40

    .line 561
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_52
    add-int/lit8 v4, v4, -0x1

    goto :goto_30

    .line 573
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "taskNdx":I
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_55
    if-nez v0, :cond_62

    iget-boolean v9, p0, mDeferredRemoval:Z

    if-eqz v9, :cond_62

    .line 574
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, p0, mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 576
    :cond_62
    return-void
.end method

.method close()V
    .registers 3

    .prologue
    .line 535
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 536
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->close()V

    .line 535
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 538
    :cond_18
    return-void
.end method

.method detachStack(Lcom/android/server/wm/TaskStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 311
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_84

    .line 315
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stack = null \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 319
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 323
    :cond_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target stack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Remove fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_c7
    iget-object v2, p0, mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 332
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 19
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 585
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "Display: mDisplayId="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 586
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 587
    .local v6, "subPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "init="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, mInitialDisplayWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    iget v14, v0, mInitialDisplayHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, mInitialDisplayDensity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 589
    const-string/jumbo v14, "dpi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget v14, v0, mInitialDisplayWidth:I

    move-object/from16 v0, p0

    iget v15, v0, mBaseDisplayWidth:I

    if-ne v14, v15, :cond_89

    move-object/from16 v0, p0

    iget v14, v0, mInitialDisplayHeight:I

    move-object/from16 v0, p0

    iget v15, v0, mBaseDisplayHeight:I

    if-ne v14, v15, :cond_89

    move-object/from16 v0, p0

    iget v14, v0, mInitialDisplayDensity:I

    move-object/from16 v0, p0

    iget v15, v0, mBaseDisplayDensity:I

    if-eq v14, v15, :cond_c2

    .line 593
    :cond_89
    const-string v14, " base="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget v14, v0, mBaseDisplayWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, mBaseDisplayHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 595
    const-string v14, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, mBaseDisplayDensity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v14, "dpi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    :cond_c2
    move-object/from16 v0, p0

    iget-boolean v14, v0, mDisplayScalingDisabled:Z

    if-eqz v14, :cond_cf

    .line 598
    const-string v14, " noscale"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    :cond_cf
    const-string v14, " cur="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 602
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 603
    const-string v14, " app="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 605
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->appHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 606
    const-string v14, " rng="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 607
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 608
    const-string v14, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 609
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 610
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "deferred="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, mDeferredRemoval:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Z)V

    .line 611
    const-string v14, " layoutNeeded="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, layoutNeeded:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Z)V

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "stackNdx":I
    :goto_193
    if-ltz v5, :cond_1e9

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 614
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mStacks["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 615
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v4, v14, v0}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 612
    add-int/lit8 v5, v5, -0x1

    goto :goto_193

    .line 617
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1e9
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 618
    const-string v14, "  Application tokens in top down Z order:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const/4 v3, 0x0

    .line 623
    .local v3, "ndx":I
    invoke-virtual/range {p0 .. p0}, getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 624
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, "taskNdx":I
    :goto_1fe
    if-ltz v8, :cond_252

    .line 625
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 626
    .local v7, "task":Lcom/android/server/wm/Task;
    const-string v14, "    mTaskId="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v7, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 627
    iget-object v12, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 628
    .local v12, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v12}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .local v11, "tokenNdx":I
    :goto_21c
    if-ltz v11, :cond_24f

    .line 629
    invoke-virtual {v12, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 630
    .local v13, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const-string v14, "    Activity #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 631
    const/16 v14, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v14, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    const-string v14, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 628
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_21c

    .line 624
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_24f
    add-int/lit8 v8, v8, -0x1

    goto :goto_1fe

    .line 654
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "tokenNdx":I
    .end local v12    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_252
    if-nez v3, :cond_25b

    .line 655
    const-string v14, "    None"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    :cond_25b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 658
    move-object/from16 v0, p0

    iget-object v14, v0, mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2b1

    .line 659
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 660
    const-string v14, "  Exiting tokens:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v14, v0, mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .local v2, "i":I
    :goto_27c
    if-ltz v2, :cond_2b1

    .line 662
    move-object/from16 v0, p0

    iget-object v14, v0, mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 663
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    const-string v14, "  Exiting #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 664
    const/16 v14, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 665
    const/16 v14, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(C)V

    .line 666
    const-string v14, "    "

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v14}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 661
    add-int/lit8 v2, v2, -0x1

    goto :goto_27c

    .line 671
    .end local v2    # "i":I
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    :cond_2b1
    move-object/from16 v0, p0

    iget-object v14, v0, mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2be

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 672
    :cond_2be
    const-string v14, "  Multi-Window information for this display"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    const-string v14, "  CenterBar: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v14}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    const-string v14, "  GlobalTasks"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .restart local v2    # "i":I
    :goto_2ea
    if-ltz v2, :cond_310

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 677
    .restart local v7    # "task":Lcom/android/server/wm/Task;
    const-string v14, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "TASK "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    add-int/lit8 v2, v2, -0x1

    goto :goto_2ea

    .line 681
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :cond_310
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 682
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_21

    iget v0, p0, mDisplayId:I

    if-nez v0, :cond_21

    .line 253
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_21
    iget-object v0, p0, mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 267
    iget-object v8, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 268
    .local v2, "orientation":I
    if-eq v2, v5, :cond_a

    const/4 v8, 0x3

    if-ne v2, v8, :cond_2a

    .line 270
    .local v5, "rotated":Z
    :cond_a
    :goto_a
    if-eqz v5, :cond_2c

    iget v4, p0, mBaseDisplayHeight:I

    .line 271
    .local v4, "physWidth":I
    :goto_e
    if-eqz v5, :cond_2f

    iget v3, p0, mBaseDisplayWidth:I

    .line 272
    .local v3, "physHeight":I
    :goto_12
    iget-object v8, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 273
    .local v7, "width":I
    sub-int v8, v4, v7

    div-int/lit8 v1, v8, 0x2

    .line 274
    .local v1, "left":I
    iget-object v8, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 275
    .local v0, "height":I
    sub-int v8, v3, v0

    div-int/lit8 v6, v8, 0x2

    .line 276
    .local v6, "top":I
    add-int v8, v1, v7

    add-int v9, v6, v0

    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    return-void

    .line 268
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v3    # "physHeight":I
    .end local v4    # "physWidth":I
    .end local v5    # "rotated":Z
    .end local v6    # "top":I
    .end local v7    # "width":I
    :cond_2a
    const/4 v5, 0x0

    goto :goto_a

    .line 270
    .restart local v5    # "rotated":Z
    :cond_2c
    iget v4, p0, mBaseDisplayWidth:I

    goto :goto_e

    .line 271
    .restart local v4    # "physWidth":I
    :cond_2f
    iget v3, p0, mBaseDisplayHeight:I

    goto :goto_12
.end method

.method getReverseDisplayInfo()Landroid/view/DisplayInfo;
    .registers 4

    .prologue
    .line 691
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object v2, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 692
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 693
    .local v1, "temp":I
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 694
    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 695
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 696
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 697
    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 699
    iget v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    .line 700
    iget v2, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    .line 701
    iput v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    .line 703
    return-object v0
.end method

.method getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 708
    new-instance v0, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 709
    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 712
    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackType:I

    iput v1, v0, Landroid/app/ActivityManager$StackInfo;->stackType:I

    .line 714
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    .line 715
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 716
    return-object v0
.end method

.method getStackInfos()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_d
    if-ltz v1, :cond_21

    .line 724
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v2}, getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 726
    :cond_21
    iget-object v2, p0, mAppTopLevelStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_29
    if-ltz v1, :cond_3d

    .line 727
    iget-object v2, p0, mAppTopLevelStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v2}, getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 729
    :cond_3d
    return-object v0
.end method

.method getStacks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, mTmpTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, mTmpTaskHistory:Ljava/util/ArrayList;

    iget-object v1, p0, mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v0, p0, mTmpTaskHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public hasAccess(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 201
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method isAnimating()Z
    .registers 4

    .prologue
    .line 541
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_8
    if-ltz v1, :cond_1d

    .line 542
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 543
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 544
    const/4 v2, 0x1

    .line 547
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_19
    return v2

    .line 541
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 547
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method isDimming()Z
    .registers 3

    .prologue
    .line 520
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 521
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 522
    const/4 v1, 0x1

    .line 525
    :goto_19
    return v1

    .line 520
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 525
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public isPrivate()Z
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    .line 299
    if-nez p1, :cond_3

    .line 308
    :goto_2
    return-void

    .line 303
    :cond_3
    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 304
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveStack is failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in mStacks  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 307
    :cond_37
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    if-eqz p2, :cond_45

    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_41
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_45
    const/4 v0, 0x0

    goto :goto_41
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 3

    .prologue
    .line 500
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 501
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 500
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 503
    :cond_18
    return-void
.end method

.method resetDimming()V
    .registers 3

    .prologue
    .line 514
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 515
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    .line 514
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 517
    :cond_18
    return-void
.end method

.method resetVisibleWindow()V
    .registers 3

    .prologue
    .line 737
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 738
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetVisibleWindow()V

    .line 737
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 740
    :cond_18
    return-void
.end method

.method resize(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .prologue
    .line 339
    iget-object v0, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    return-void
.end method

.method setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 733
    iput-object p1, p0, mCenterBarPoint:Landroid/graphics/Point;

    .line 734
    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .registers 10
    .param p1, "focusedStack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v7, 0x0

    .line 431
    iget-object v4, p0, mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v6, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 433
    invoke-virtual {p0}, getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 434
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_48

    .line 435
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 436
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 437
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_45

    if-eqz v1, :cond_45

    if-eq v1, p1, :cond_45

    .line 438
    iget-object v4, p0, mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 440
    iget-object v4, p0, mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 441
    iget-object v4, p0, mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 434
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 444
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_48
    iget-object v4, p0, mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    if-eqz v4, :cond_53

    .line 445
    iget-object v4, p0, mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    iget-object v5, p0, mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 447
    :cond_53
    return-void
.end method

.method stackIdFromPoint(II)I
    .registers 19
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 345
    const/4 v8, 0x0

    .line 346
    .local v8, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p0

    iget-object v13, v0, mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_fe

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, mGlobalTasks:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    .line 348
    .local v9, "task":Lcom/android/server/wm/Task;
    iget-object v13, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v8, v13, :cond_1e

    .line 346
    :cond_1b
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 357
    :cond_1e
    const/4 v3, 0x0

    .line 358
    .local v3, "isFloatingStack":Z
    const/4 v4, 0x0

    .line 359
    .local v4, "isMinimized":Z
    iget-object v8, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v13}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 362
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v13

    if-eqz v13, :cond_83

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->isForceHideCascade()Z

    move-result v13

    if-nez v13, :cond_1b

    .line 368
    const/4 v3, 0x1

    .line 369
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v13

    if-eqz v13, :cond_83

    .line 370
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v13

    iget-object v6, v13, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 371
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v13

    iget-object v12, v13, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 373
    .local v12, "windows":Lcom/android/server/wm/WindowList;
    const/4 v13, 0x4

    invoke-virtual {v6, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_97

    .line 374
    const/4 v4, 0x1

    .line 375
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v13

    add-int/lit8 v5, v13, -0x1

    .local v5, "j":I
    :goto_5c
    if-ltz v5, :cond_83

    .line 376
    invoke-virtual {v12, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 377
    .local v11, "win":Lcom/android/server/wm/WindowState;
    iget v13, v11, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v13, :cond_94

    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_94

    .line 379
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    .line 380
    .local v10, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {v11, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 397
    .end local v5    # "j":I
    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v10    # "touchableRegion":Landroid/graphics/Region;
    .end local v11    # "win":Lcom/android/server/wm/WindowState;
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_83
    :goto_83
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_be

    .line 398
    iget v13, v8, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 425
    .end local v3    # "isFloatingStack":Z
    .end local v4    # "isMinimized":Z
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :goto_93
    return v13

    .line 375
    .restart local v3    # "isFloatingStack":Z
    .restart local v4    # "isMinimized":Z
    .restart local v5    # "j":I
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v9    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "win":Lcom/android/server/wm/WindowState;
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_94
    add-int/lit8 v5, v5, -0x1

    goto :goto_5c

    .line 385
    .end local v5    # "j":I
    .end local v11    # "win":Lcom/android/server/wm/WindowState;
    :cond_97
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v13

    if-nez v13, :cond_83

    .line 386
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9e
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v13

    if-ge v5, v13, :cond_83

    .line 387
    invoke-virtual {v12, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 388
    .restart local v11    # "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_bb

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v13}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    goto :goto_83

    .line 386
    :cond_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 401
    .end local v5    # "j":I
    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v11    # "win":Lcom/android/server/wm/WindowState;
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_be
    if-eqz v3, :cond_1b

    if-nez v4, :cond_1b

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v7

    .line 403
    .local v7, "resizableSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    neg-int v14, v7

    neg-int v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->inset(II)V

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 405
    iget v13, v8, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_93

    .line 408
    :cond_e6
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v13}, Lcom/android/server/wm/Task;->getHeaderBounds(Landroid/graphics/Rect;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, mTmpRect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 410
    iget v13, v8, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_93

    .line 425
    .end local v3    # "isFloatingStack":Z
    .end local v4    # "isMinimized":Z
    .end local v7    # "resizableSize":I
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :cond_fe
    const/4 v13, -0x1

    goto :goto_93
.end method

.method stopDimmingIfNeeded()V
    .registers 3

    .prologue
    .line 529
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 530
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    .line 529
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 532
    :cond_18
    return-void
.end method

.method switchUserStacks(I)V
    .registers 11
    .param p1, "newUserId"    # I

    .prologue
    const/4 v8, 0x0

    .line 475
    invoke-virtual {p0}, getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 476
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-ge v1, v5, :cond_70

    .line 477
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 480
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 481
    .local v0, "disabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_6a

    .line 482
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 487
    :goto_27
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 488
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_64

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user changing, hiding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", attrs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", belonging to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_64
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 476
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 484
    :cond_6a
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    goto :goto_27

    .line 494
    .end local v0    # "disabled":Ljava/lang/Boolean;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_70
    iget-object v5, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_78
    if-ltz v2, :cond_88

    .line 495
    iget-object v5, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->switchUser()V

    .line 494
    add-int/lit8 v2, v2, -0x1

    goto :goto_78

    .line 497
    :cond_88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCurrentUserPolicy(I)V
    .registers 10
    .param p1, "newUserId"    # I

    .prologue
    const/4 v7, 0x0

    .line 451
    invoke-virtual {p0}, getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 452
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 453
    .local v0, "disabled":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v1, v4, :cond_89

    .line 454
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 456
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_5c

    .line 457
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_2b

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->userId:I

    if-eq p1, v4, :cond_2b

    .line 453
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 460
    :cond_2b
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 461
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_28

    .line 462
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCurrentUserPolicy SetSecure win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set disabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 465
    :cond_5c
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 466
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_28

    .line 467
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCurrentUserPolicy SetSecure win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set disabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 471
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_89
    return-void
.end method

.method updateDisplayInfo()V
    .registers 4

    .prologue
    .line 259
    iget-object v1, p0, mDisplay:Landroid/view/Display;

    iget-object v2, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 260
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_1f

    .line 261
    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    .line 260
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 263
    :cond_1f
    return-void
.end method
