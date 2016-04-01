.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field mEmptyRegion:Landroid/graphics/Region;

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, mUpdateInputWindowsNeeded:Z

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpRect:Landroid/graphics/Rect;

    .line 88
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, mEmptyRegion:Landroid/graphics/Region;

    .line 92
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .registers 5
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 188
    iget-object v0, p0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_a

    .line 189
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 191
    :cond_a
    iget v0, p0, mInputWindowHandleCount:I

    iget-object v1, p0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1f

    .line 192
    iget-object v0, p0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 195
    :cond_1f
    iget-object v0, p0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 196
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .registers 23
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 203
    and-int/lit8 v12, p3, 0x28

    if-nez v12, :cond_12d

    const/4 v5, 0x1

    .line 207
    .local v5, "modal":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    .line 208
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v12, 0x800

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    .line 209
    .local v8, "optionScale":Z
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    .line 212
    .local v7, "optionMinimized":Z
    if-eqz v5, :cond_35c

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_35c

    .line 214
    or-int/lit8 p3, p3, 0x20

    .line 216
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v12

    if-nez v12, :cond_1dc

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    iget-object v13, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskStack;->getShownBounds(Landroid/graphics/Rect;)V

    .line 221
    if-nez v7, :cond_83

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    if-eqz v12, :cond_83

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x20000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_83

    .line 223
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getSubWindowBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 224
    .local v9, "r":Landroid/graphics/Rect;
    if-eqz v9, :cond_83

    .line 225
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_7e

    if-eqz v8, :cond_7e

    .line 226
    iget v12, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v9, Landroid/graphics/Rect;->right:I

    .line 227
    iget v12, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 229
    :cond_7e
    iget-object v12, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 235
    .end local v9    # "r":Landroid/graphics/Rect;
    :cond_83
    if-eqz v8, :cond_96

    if-nez v7, :cond_96

    .line 236
    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v11

    .line 237
    .local v11, "resizableSize":I
    iget-object v12, p0, mTmpRect:Landroid/graphics/Rect;

    neg-int v13, v11

    neg-int v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 239
    .end local v11    # "resizableSize":I
    :cond_96
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v13, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 241
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    .line 243
    .local v10, "region":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v12

    if-eqz v12, :cond_b8

    .line 244
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 245
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 249
    :cond_b8
    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_130

    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_130

    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_130

    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_130

    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p2

    if-eq v12, v0, :cond_130

    .line 254
    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 255
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 256
    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_102
    :goto_102
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 257
    .local v2, "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_102

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_102

    .line 258
    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 259
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_102

    .line 203
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "modal":Z
    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v7    # "optionMinimized":Z
    .end local v8    # "optionScale":Z
    .end local v10    # "region":Landroid/graphics/Region;
    :cond_12d
    const/4 v5, 0x0

    goto/16 :goto_d

    .line 263
    .restart local v5    # "modal":Z
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v7    # "optionMinimized":Z
    .restart local v8    # "optionScale":Z
    .restart local v10    # "region":Landroid/graphics/Region;
    :cond_130
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->hasWindowOutOfStack()Z

    move-result v12

    if-eqz v12, :cond_16f

    .line 264
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_144
    :goto_144
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 265
    .restart local v2    # "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_144

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_144

    .line 266
    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 267
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_144

    .line 271
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_16f
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_20a

    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_20a

    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_20a

    .line 274
    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 275
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v12}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_20a

    .line 276
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 277
    iget-object v12, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1b1
    :goto_1b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_20a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 278
    .restart local v2    # "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_1b1

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_1b1

    .line 279
    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 280
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1b1

    .line 287
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v10    # "region":Landroid/graphics/Region;
    :cond_1dc
    iget-object v12, p0, mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    if-eqz v12, :cond_201

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x20000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_201

    .line 292
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getSubWindowBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 293
    .restart local v9    # "r":Landroid/graphics/Rect;
    if-eqz v9, :cond_201

    .line 294
    iget-object v12, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 299
    .end local v9    # "r":Landroid/graphics/Rect;
    :cond_201
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v13, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 312
    :cond_20a
    :goto_20a
    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 314
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->layoutParamsSamsungFlags:I

    .line 316
    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 318
    move/from16 v0, p5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 319
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v12

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 320
    move/from16 v0, p6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 321
    move/from16 v0, p7

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 322
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_367

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_24e
    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 323
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 324
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 325
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 326
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 328
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 329
    .local v3, "frame":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 330
    iget v12, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 331
    iget v12, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 332
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 335
    if-eqz v8, :cond_2c0

    .line 336
    iget v12, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 337
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 339
    :cond_2c0
    if-eqz v7, :cond_2e0

    .line 340
    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 341
    iget v12, v3, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 346
    :cond_2e0
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_36a

    .line 350
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 356
    :goto_2f5
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v13, 0x1000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_358

    .line 358
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 359
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 360
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 361
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 362
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 366
    :cond_358
    invoke-direct/range {p0 .. p1}, addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 367
    return-void

    .line 303
    .end local v3    # "frame":Landroid/graphics/Rect;
    :cond_35c
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_20a

    .line 322
    :cond_367
    const/4 v12, 0x0

    goto/16 :goto_24e

    .line 352
    .restart local v3    # "frame":Landroid/graphics/Rect;
    :cond_36a
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_2f5
.end method

.method private clearInputWindowHandlesLw()V
    .registers 4

    .prologue
    .line 370
    :goto_0
    iget v0, p0, mInputWindowHandleCount:I

    if-eqz v0, :cond_10

    .line 371
    iget-object v0, p0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 373
    :cond_10
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .prologue
    .line 703
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, mInputDispatchEnabled:Z

    iget-boolean v2, p0, mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 704
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 597
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 598
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 597
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public freezeInputDispatchingLw()V
    .registers 2

    .prologue
    .line 670
    iget-boolean v0, p0, mInputDispatchFrozen:Z

    if-nez v0, :cond_a

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, mInputDispatchFrozen:Z

    .line 676
    invoke-direct {p0}, updateInputDispatchModeLw()V

    .line 678
    :cond_a
    return-void
.end method

.method public getPointerLayer()I
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 8
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 588
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 589
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 588
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 563
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQuickAccess(IFF)V
    .registers 5
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 571
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQuickAccess(IFF)V

    .line 572
    return-void
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 579
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 17
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v8, 0x0

    .line 124
    .local v8, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 125
    .local v3, "aboveSystem":Z
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 126
    if-eqz p2, :cond_14

    .line 127
    :try_start_a
    iget-object v9, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v8, v0

    .line 128
    if-eqz v8, :cond_14

    .line 129
    iget-object v4, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 132
    :cond_14
    if-nez v4, :cond_1e

    if-eqz p1, :cond_1e

    .line 133
    iget-object v9, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 136
    :cond_1e
    if-eqz v8, :cond_76

    .line 137
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v11, 0x7d3

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    .line 145
    .local v5, "systemAlertLayer":I
    iget v9, v8, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v9, v5, :cond_74

    const/4 v3, 0x1

    .line 155
    .end local v5    # "systemAlertLayer":I
    :goto_59
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v9, v4, v8, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 156
    monitor-exit v10
    :try_end_61
    .catchall {:try_start_a .. :try_end_61} :catchall_9f

    .line 158
    if-eqz v4, :cond_bd

    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v9, :cond_bd

    .line 162
    :try_start_67
    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 163
    .local v2, "abort":Z
    if-nez v2, :cond_d9

    .line 166
    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_73} :catch_dc

    .line 184
    .end local v2    # "abort":Z
    :goto_73
    return-wide v10

    .line 145
    .restart local v5    # "systemAlertLayer":I
    :cond_74
    const/4 v3, 0x0

    goto :goto_59

    .line 146
    .end local v5    # "systemAlertLayer":I
    :cond_76
    if-eqz v4, :cond_a2

    .line 147
    :try_start_78
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to application "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 156
    :catchall_9f
    move-exception v9

    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_78 .. :try_end_a1} :catchall_9f

    throw v9

    .line 151
    :cond_a2
    :try_start_a2
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_9f

    goto :goto_59

    .line 170
    :cond_bd
    if-eqz v8, :cond_d9

    .line 174
    :try_start_bf
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v10, v10, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_cc} :catch_d8

    move-result-wide v6

    .line 176
    .local v6, "timeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-ltz v9, :cond_d9

    .line 179
    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, v6

    goto :goto_73

    .line 181
    .end local v6    # "timeout":J
    :catch_d8
    move-exception v9

    .line 184
    :cond_d9
    :goto_d9
    const-wide/16 v10, 0x0

    goto :goto_73

    .line 168
    :catch_dc
    move-exception v9

    goto :goto_d9
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 533
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 534
    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .prologue
    .line 501
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 503
    iget-object v1, p0, mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_8
    iget-boolean v0, p0, mInputDevicesReady:Z

    if-nez v0, :cond_14

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, mInputDevicesReady:Z

    .line 506
    iget-object v0, p0, mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 508
    :cond_14
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public notifyCoverAttachedChanged(JZ)V
    .registers 4
    .param p1, "whenNanos"    # J
    .param p3, "attached"    # Z

    .prologue
    .line 550
    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 555
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCoverSwitchStateChanged(JZ)V

    .line 556
    return-void
.end method

.method public notifyFoldingSwitchStateChanged(JI)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "isFolding"    # I

    .prologue
    .line 710
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyFoldingSwitchStateChanged(JI)V

    .line 711
    return-void
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .registers 4
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 545
    return-void
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 101
    if-nez p1, :cond_3

    .line 112
    :goto_2
    return-void

    .line 105
    :cond_3
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 106
    :try_start_8
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 107
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2b

    .line 108
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 111
    :cond_2b
    monitor-exit v2

    goto :goto_2

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 527
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 528
    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 539
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyPenSwitchChanged(JZ)V

    .line 540
    return-void
.end method

.method public notifyWrapAroundModeChanged(I)V
    .registers 3
    .param p1, "screenStatus"    # I

    .prologue
    .line 715
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->notifyWrapAroundModeChanged(I)V

    .line 716
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v1, 0x1

    .line 648
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 653
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 654
    invoke-virtual {p0, v1}, updateInputWindowsLw(Z)V

    .line 656
    :cond_a
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 659
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, updateInputWindowsLw(Z)V

    .line 667
    :cond_b
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 692
    iget-boolean v0, p0, mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 697
    iput-boolean p1, p0, mInputDispatchEnabled:Z

    .line 698
    invoke-direct {p0}, updateInputDispatchModeLw()V

    .line 700
    :cond_9
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 636
    if-nez p1, :cond_b

    .line 637
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 645
    :goto_a
    return-void

    .line 639
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 640
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 641
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 643
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_a
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 7
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v3, 0x0

    .line 613
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_20

    .line 617
    :goto_5
    iget-object v0, p0, mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1f

    .line 618
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 622
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 625
    :cond_15
    iput-object p1, p0, mInputFocus:Lcom/android/server/wm/WindowState;

    .line 626
    invoke-virtual {p0}, setUpdateInputWindowsNeededLw()V

    .line 628
    if-eqz p2, :cond_1f

    .line 629
    invoke-virtual {p0, v3}, updateInputWindowsLw(Z)V

    .line 632
    :cond_1f
    return-void

    .line 614
    :cond_20
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, mUpdateInputWindowsNeeded:Z

    .line 377
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .prologue
    .line 681
    iget-boolean v0, p0, mInputDispatchFrozen:Z

    if-eqz v0, :cond_a

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, mInputDispatchFrozen:Z

    .line 687
    invoke-direct {p0}, updateInputDispatchModeLw()V

    .line 689
    :cond_a
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 27
    .param p1, "force"    # Z

    .prologue
    .line 381
    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_9

    .line 496
    :goto_8
    return-void

    .line 384
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mUpdateInputWindowsNeeded:Z

    .line 393
    const/4 v13, 0x0

    .line 396
    .local v13, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_8b

    const/16 v16, 0x1

    .line 397
    .local v16, "inDrag":Z
    :goto_19
    if-eqz v16, :cond_2a

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v15, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 402
    .local v15, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_8e

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 410
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_2a
    :goto_2a
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_98

    const/4 v11, 0x1

    .line 413
    .local v11, "addInputConsumerHandle":Z
    :goto_33
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 415
    .local v19, "numDisplays":I
    move-object/from16 v0, p0

    iget-object v12, v0, mEmptyRegion:Landroid/graphics/Region;

    .line 417
    .local v12, "cursorWindowTouchableRegion":Landroid/graphics/Region;
    const/4 v14, 0x0

    .local v14, "displayNdx":I
    :goto_42
    move/from16 v0, v19

    if-ge v14, v0, :cond_145

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v23

    .line 428
    .local v23, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    .line 429
    .local v18, "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz v11, :cond_9a

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v10, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 432
    .local v10, "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :goto_68
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .local v22, "winNdx":I
    :goto_6e
    if-ltz v22, :cond_141

    .line 433
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 434
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v17, v0

    .line 435
    .local v17, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 436
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v17, :cond_88

    if-eqz v3, :cond_88

    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_9c

    .line 432
    :cond_88
    :goto_88
    add-int/lit8 v22, v22, -0x1

    goto :goto_6e

    .line 396
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v10    # "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v11    # "addInputConsumerHandle":Z
    .end local v12    # "cursorWindowTouchableRegion":Landroid/graphics/Region;
    .end local v14    # "displayNdx":I
    .end local v16    # "inDrag":Z
    .end local v17    # "inputChannel":Landroid/view/InputChannel;
    .end local v18    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v19    # "numDisplays":I
    .end local v22    # "winNdx":I
    .end local v23    # "windows":Lcom/android/server/wm/WindowList;
    :cond_8b
    const/16 v16, 0x0

    goto :goto_19

    .line 405
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v16    # "inDrag":Z
    :cond_8e
    const-string v2, "WindowManager"

    const-string v24, "Drag is in progress but there is no drag window handle."

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 410
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_98
    const/4 v11, 0x0

    goto :goto_33

    .line 429
    .restart local v11    # "addInputConsumerHandle":Z
    .restart local v12    # "cursorWindowTouchableRegion":Landroid/graphics/Region;
    .restart local v14    # "displayNdx":I
    .restart local v18    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .restart local v19    # "numDisplays":I
    .restart local v23    # "windows":Lcom/android/server/wm/WindowList;
    :cond_9a
    const/4 v10, 0x0

    goto :goto_68

    .line 440
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v10    # "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v17    # "inputChannel":Landroid/view/InputChannel;
    .restart local v22    # "winNdx":I
    :cond_9c
    if-eqz v11, :cond_ae

    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget v0, v10, Lcom/android/server/input/InputWindowHandle;->layer:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v2, v0, :cond_ae

    .line 442
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 443
    const/4 v11, 0x0

    .line 446
    :cond_ae
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 447
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v21, v0

    .line 448
    .local v21, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 450
    .local v6, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_135

    const/4 v8, 0x1

    .line 452
    .local v8, "hasFocus":Z
    :goto_c3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v2, v0, :cond_137

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    .line 455
    .local v7, "isVisible":Z
    :goto_d5
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_dc

    .line 458
    const/4 v13, 0x1

    .line 460
    :cond_dc
    move-object/from16 v0, v18

    if-ne v4, v0, :cond_13c

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_13c

    if-nez v13, :cond_13c

    const/4 v9, 0x1

    .line 463
    .local v9, "hasWallpaper":Z
    :goto_e9
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_13e

    const/16 v20, 0x1

    .line 467
    .local v20, "onDefaultDisplay":Z
    :goto_f1
    if-eqz v16, :cond_100

    if-eqz v7, :cond_100

    if-eqz v20, :cond_100

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_100
    move-object/from16 v2, p0

    .line 471
    invoke-direct/range {v2 .. v9}, addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 475
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_88

    .line 476
    const-string v2, "com.samsung.android.app.assistantmenu"

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string v2, "Cursor"

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 477
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v12, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    goto/16 :goto_88

    .line 450
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v20    # "onDefaultDisplay":Z
    :cond_135
    const/4 v8, 0x0

    goto :goto_c3

    .line 452
    .restart local v8    # "hasFocus":Z
    :cond_137
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    goto :goto_d5

    .line 460
    .restart local v7    # "isVisible":Z
    :cond_13c
    const/4 v9, 0x0

    goto :goto_e9

    .line 463
    .restart local v9    # "hasWallpaper":Z
    :cond_13e
    const/16 v20, 0x0

    goto :goto_f1

    .line 417
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v17    # "inputChannel":Landroid/view/InputChannel;
    .end local v21    # "privateFlags":I
    :cond_141
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_42

    .line 484
    .end local v10    # "addInputComsumerWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v18    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v22    # "winNdx":I
    .end local v23    # "windows":Lcom/android/server/wm/WindowList;
    :cond_145
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_152

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v12}, Landroid/view/WindowManagerPolicy;->updateCursorWindowInputRect(Landroid/graphics/Region;)V

    .line 490
    :cond_152
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 493
    invoke-direct/range {p0 .. p0}, clearInputWindowHandlesLw()V

    goto/16 :goto_8
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 513
    iget-object v1, p0, mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_3
    iget-boolean v0, p0, mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v0, :cond_c

    .line 516
    :try_start_7
    iget-object v0, p0, mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_13
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 520
    :cond_c
    :goto_c
    :try_start_c
    iget-boolean v0, p0, mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 521
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0

    .line 517
    :catch_13
    move-exception v0

    goto :goto_c
.end method
