.class public final Lcom/android/server/accessibility/ScreenMagnifier;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$MagnificationCallbacks;
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;,
        Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;,
        Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_MAGNIFICATION_CONTROLLER:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_SCALING:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final DEFAULT_SCREEN_MAGNIFICATION_AUTO_UPDATE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field private static final MESSAGE_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field private static final MESSAGE_ON_ROTATION_CHANGED:I = 0x4

.field private static final MESSAGE_ON_USER_CONTEXT_CHANGED:I = 0x3

.field private static final MY_PID:I

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

.field private final mDisplayId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mTranslationEnabledBeforePan:Z

.field private mUpdateMagnificationSpecOnNextBoundsChange:Z

.field private final mWindowManager:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-class v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOG_TAG:Ljava/lang/String;

    .line 122
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I
    .param p3, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect1:Landroid/graphics/Rect;

    .line 143
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    iput v0, p0, mTapTimeSlop:I

    .line 150
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mMagnifiedBounds:Landroid/graphics/Region;

    .line 165
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 217
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 218
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManagerInternal;

    .line 219
    iput-object p3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 220
    iput p2, p0, mDisplayId:I

    .line 222
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, mMultiTapTimeSlop:I

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, mLongAnimationDuration:J

    .line 227
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, mTapDistanceSlop:I

    .line 228
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, mMultiTapDistanceSlop:I

    .line 230
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    .line 231
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    .line 232
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V

    iput-object v0, p0, mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    .line 235
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget-wide v2, p0, mLongAnimationDuration:J

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V

    iput-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    .line 236
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    iget-object v1, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V

    iput-object v0, p0, mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    .line 240
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManagerInternal;

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, p0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;I)V

    .line 242
    const/4 v0, 0x2

    invoke-direct {p0, v0}, transitionToState(I)V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # Landroid/graphics/Region;

    .prologue
    .line 96
    invoke-direct {p0, p1}, handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, handleOnRectangleOnScreenRequested(IIII)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    invoke-direct {p0}, getPersistedScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # F

    .prologue
    .line 96
    invoke-direct {p0, p1}, persistScale(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget v0, p0, mPreviousState:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, transitionToState(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget-object v0, p0, mMagnifiedBounds:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget-boolean v0, p0, mTranslationEnabledBeforePan:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, mTranslationEnabledBeforePan:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget v0, p0, mMultiTapTimeSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    invoke-direct {p0}, handleOnUserContextChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget v0, p0, mMultiTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget v0, p0, mTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget v0, p0, mTapTimeSlop:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget-object v0, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, handleOnRotationChanged(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/content/Context;)Z
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p0}, isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 96
    iget v0, p0, mCurrentState:I

    return v0
.end method

.method private getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 342
    iget-object v1, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 343
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 344
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 345
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 346
    return-void
.end method

.method private getPersistedScale()F
    .registers 4

    .prologue
    .line 939
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 7
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 496
    iget-object v4, p0, mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_26

    iget-object v4, p0, mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    .line 497
    .local v1, "oldSize":I
    :goto_8
    if-ge v1, p1, :cond_17

    .line 498
    iget-object v2, p0, mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 499
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 500
    if-eqz v2, :cond_17

    .line 501
    iget-object v4, p0, mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_17
    move v0, v1

    .local v0, "i":I
    :goto_18
    if-ge v0, p1, :cond_28

    .line 505
    iget-object v3, p0, mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_26
    move v1, v3

    .line 496
    goto :goto_8

    .line 507
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_28
    iget-object v3, p0, mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 7
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 511
    iget-object v4, p0, mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_26

    iget-object v4, p0, mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    .line 512
    .local v1, "oldSize":I
    :goto_8
    if-ge v1, p1, :cond_17

    .line 513
    iget-object v2, p0, mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 514
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 515
    if-eqz v2, :cond_17

    .line 516
    iget-object v4, p0, mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_17
    move v0, v1

    .local v0, "i":I
    :goto_18
    if-ge v0, p1, :cond_28

    .line 520
    iget-object v3, p0, mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_26
    move v1, v3

    .line 511
    goto :goto_8

    .line 522
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_28
    iget-object v3, p0, mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_36

    .line 422
    :cond_7
    :goto_7
    iget-object v2, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_21

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 427
    .local v0, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 428
    .local v1, "eventY":F
    invoke-virtual {p0, p1}, getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 455
    iget-wide v2, p0, mDelegatingStateDownTime:J

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 456
    iget-object v2, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 458
    .end local v0    # "eventX":F
    .end local v1    # "eventY":F
    :cond_21
    return-void

    .line 414
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, mDelegatingStateDownTime:J

    goto :goto_7

    .line 417
    :pswitch_29
    iget-object v2, p0, mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->access$800(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v2

    if-nez v2, :cond_7

    .line 418
    const/4 v2, 0x2

    invoke-direct {p0, v2}, transitionToState(I)V

    goto :goto_7

    .line 412
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method private handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/Region;

    .prologue
    const/4 v7, 0x0

    .line 258
    iget-boolean v5, p0, mUpdateMagnificationSpecOnNextBoundsChange:Z

    if-eqz v5, :cond_35

    .line 259
    iput-boolean v7, p0, mUpdateMagnificationSpecOnNextBoundsChange:Z

    .line 260
    iget-object v5, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 261
    .local v4, "spec":Landroid/view/MagnificationSpec;
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    .line 262
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v5, p0, mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v5, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 263
    iget v3, v4, Landroid/view/MagnificationSpec;->scale:F

    .line 264
    .local v3, "scale":F
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float v0, v5, v3

    .line 265
    .local v0, "centerX":F
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float v1, v5, v3

    .line 266
    .local v1, "centerY":F
    iget-object v5, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5, v3, v0, v1, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 269
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .end local v2    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v3    # "scale":F
    .end local v4    # "spec":Landroid/view/MagnificationSpec;
    :cond_35
    iget-object v5, p0, mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v5, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 270
    iget-object v5, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    .line 271
    return-void
.end method

.method private handleOnRectangleOnScreenRequested(IIII)V
    .registers 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 284
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    .line 285
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v6, p0, mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v6, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 286
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_e

    .line 318
    :goto_d
    return-void

    .line 289
    :cond_e
    iget-object v1, p0, mTempRect1:Landroid/graphics/Rect;

    .line 290
    .local v1, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V

    .line 293
    sub-int v6, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_4d

    .line 294
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 295
    .local v0, "direction":I
    if-nez v0, :cond_47

    .line 296
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    .line 307
    .end local v0    # "direction":I
    .local v4, "scrollX":F
    :goto_2a
    sub-int v6, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_63

    .line 308
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    .line 316
    .local v5, "scrollY":F
    :goto_37
    iget-object v6, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v3

    .line 317
    .local v3, "scale":F
    iget-object v6, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    mul-float v7, v4, v3

    mul-float v8, v5, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    goto :goto_d

    .line 298
    .end local v3    # "scale":F
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    .restart local v0    # "direction":I
    :cond_47
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_2a

    .line 300
    .end local v0    # "direction":I
    .end local v4    # "scrollX":F
    :cond_4d
    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_57

    .line 301
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_2a

    .line 302
    .end local v4    # "scrollX":F
    :cond_57
    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-le p3, v6, :cond_61

    .line 303
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_2a

    .line 305
    .end local v4    # "scrollX":F
    :cond_61
    const/4 v4, 0x0

    .restart local v4    # "scrollX":F
    goto :goto_2a

    .line 309
    :cond_63
    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_6d

    .line 310
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    .restart local v5    # "scrollY":F
    goto :goto_37

    .line 311
    .end local v5    # "scrollY":F
    :cond_6d
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, v6, :cond_77

    .line 312
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p4, v6

    int-to-float v5, v6

    .restart local v5    # "scrollY":F
    goto :goto_37

    .line 314
    .end local v5    # "scrollY":F
    :cond_77
    const/4 v5, 0x0

    .restart local v5    # "scrollY":F
    goto :goto_37
.end method

.method private handleOnRotationChanged(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 326
    invoke-direct {p0}, resetMagnificationIfNeeded()V

    .line 327
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, mUpdateMagnificationSpecOnNextBoundsChange:Z

    .line 330
    :cond_e
    return-void
.end method

.method private handleOnUserContextChanged()V
    .registers 1

    .prologue
    .line 338
    invoke-direct {p0}, resetMagnificationIfNeeded()V

    .line 339
    return-void
.end method

.method private static isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 945
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_auto_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private persistScale(F)V
    .registers 4
    .param p1, "scale"    # F

    .prologue
    .line 928
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$2;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 936
    return-void
.end method

.method private resetMagnificationIfNeeded()V
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 351
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 353
    :cond_16
    return-void
.end method

.method private transitionToState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 545
    iget v0, p0, mCurrentState:I

    iput v0, p0, mPreviousState:I

    .line 546
    iput p1, p0, mCurrentState:I

    .line 547
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x2

    iput v0, p0, mCurrentState:I

    .line 395
    iget-object v0, p0, mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 396
    iget-object v0, p0, mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 397
    iget-object v0, p0, mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->access$700(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V

    .line 398
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1b

    .line 399
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 401
    :cond_1b
    return-void
.end method

.method public getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 27
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    sget-object v2, LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getScaledEvent get called"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v2, LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEvent.getEventTime() before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 466
    .local v19, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 467
    .local v20, "eventY":F
    move-object/from16 v0, p0

    iget-object v2, v0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_114

    move-object/from16 v0, p0

    iget-object v2, v0, mMagnifiedBounds:Landroid/graphics/Region;

    move/from16 v0, v19

    float-to-int v3, v0

    move/from16 v0, v20

    float-to-int v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v22

    .line 469
    .local v22, "scale":F
    move-object/from16 v0, p0

    iget-object v2, v0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetX()F

    move-result v23

    .line 470
    .local v23, "scaledOffsetX":F
    move-object/from16 v0, p0

    iget-object v2, v0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetY()F

    move-result v24

    .line 471
    .local v24, "scaledOffsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 473
    .local v7, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 474
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 475
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_71
    move/from16 v0, v21

    if-ge v0, v7, :cond_cc

    .line 476
    aget-object v2, v9, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 477
    aget-object v2, v9, v21

    aget-object v3, v9, v21

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v3, v3, v23

    div-float v3, v3, v22

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 478
    aget-object v2, v9, v21

    aget-object v3, v9, v21

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v3, v3, v24

    div-float v3, v3, v22

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 479
    sget-object v2, LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coords[i].x :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v21

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":::: coords[i].y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v21

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    aget-object v2, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 475
    add-int/lit8 v21, v21, 0x1

    goto :goto_71

    .line 483
    :cond_cc
    sget-object v2, LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEvent.getEventTime() after"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, mDisplayId:I

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    .line 492
    .end local v7    # "pointerCount":I
    .end local v8    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v9    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v21    # "i":I
    .end local v22    # "scale":F
    .end local v23    # "scaledOffsetX":F
    .end local v24    # "scaledOffsetY":F
    :cond_114
    return-object p1
.end method

.method public isScreenMagnified()Z
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    if-eqz v0, :cond_b

    .line 196
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    .line 198
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 382
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    .line 383
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 385
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 405
    iget-object v0, p0, mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->destroy()V

    .line 407
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManagerInternal;

    const/4 v1, 0x0

    iget v2, p0, mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;I)V

    .line 408
    return-void
.end method

.method public onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Region;

    .prologue
    .line 247
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 248
    .local v0, "newBounds":Landroid/graphics/Region;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 249
    sget v1, MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 252
    :cond_19
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 358
    iget-object v0, p0, mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 359
    iget v0, p0, mCurrentState:I

    packed-switch v0, :pswitch_data_36

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_25
    invoke-direct {p0, p1, p2, p3}, handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 378
    :goto_28
    :pswitch_28
    return-void

    .line 364
    :pswitch_29
    iget-object v0, p0, mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 367
    :pswitch_2f
    iget-object v0, p0, mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->access$600(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 359
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 275
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 276
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 277
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 278
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 279
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 280
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public onRotationChanged(I)V
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    .line 322
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    return-void
.end method

.method public onUserContextChanged()V
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    return-void
.end method

.method public resetScreenMagnifier()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    if-eqz v0, :cond_13

    .line 210
    iget-object v0, p0, mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    if-eqz v0, :cond_d

    .line 211
    iget-object v0, p0, mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 212
    :cond_d
    iget-object v0, p0, mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 214
    :cond_13
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 389
    iput-object p1, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 390
    return-void
.end method
