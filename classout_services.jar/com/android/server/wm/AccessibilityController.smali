.class final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    }
.end annotation


# static fields
.field private static final sTempFloats:[F


# instance fields
.field private mDisplayId:I

.field private mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p2, p0, mDisplayId:I

    .line 90
    iput-object p1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 91
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 80
    invoke-static {p0, p1}, populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 6
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 240
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    aput v2, v0, v1

    .line 241
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    aput v2, v0, v1

    .line 242
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    aput v2, v0, v1

    .line 243
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    aput v2, v0, v1

    .line 244
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 245
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 246
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 247
    sget-object v0, sTempFloats:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 248
    sget-object v0, sTempFloats:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 249
    sget-object v0, sTempFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 250
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 224
    :cond_9
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 227
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 230
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasCallbacksLocked()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v0, :cond_8

    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMagnifyingLocked()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isMagnifyingLocked()Z

    move-result v0

    .line 102
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 182
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 186
    :cond_9
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 151
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 155
    :cond_9
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 4
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;IZ)V

    .line 168
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;IZ)V
    .registers 5
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 171
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 174
    :cond_9
    if-eqz p3, :cond_14

    .line 175
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_14

    .line 176
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 179
    :cond_14
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 216
    :cond_9
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .registers 4

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v2, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v2

    .line 202
    :try_start_4
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 203
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 204
    if-eqz v0, :cond_c

    .line 205
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    .line 207
    :cond_c
    return-void

    .line 203
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onWindowLayersChangedLocked()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    .line 161
    :cond_9
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 164
    :cond_12
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 189
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 192
    :cond_9
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_12

    .line 193
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 195
    :cond_12
    return-void
.end method

.method public setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .registers 5
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .prologue
    .line 107
    const-class v0, Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMagnificationCallbacksLocked for d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p1, :cond_39

    .line 109
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_2d

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Magnification callbacks already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2d
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, mDisplayId:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;I)V

    iput-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 122
    :goto_38
    return-void

    .line 116
    :cond_39
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v0, :cond_45

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Magnification callbacks already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_45
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    goto :goto_38
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 142
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 145
    :cond_9
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_12

    .line 146
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 148
    :cond_12
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 125
    if-eqz p1, :cond_18

    .line 126
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_e

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows for accessibility callback already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_e
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    iput-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 139
    :goto_17
    return-void

    .line 133
    :cond_18
    iget-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-nez v0, :cond_24

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows for accessibility callback already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    goto :goto_17
.end method
