.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_FEATURE_ENABLED_ACCESSIBILITY_S_TALKBACK:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_HWDOUBLETAP_KEY_EVENTS:I = 0x10

.field static final FLAG_FEATURE_OVERLAY_MAGNIFIER:I = 0x8

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_UNIVERSAL_SWITCH_SCREEN_AS_SWITCH:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VOICE_ASSISTANT_PACKAGE_NAME:Ljava/lang/String;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTouchDeviceId:I

.field private mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mFilterKeyEvents:Z

.field private mHoverEventSequenceStarted:Z

.field private mInstalled:Z

.field private mKeyEventSequenceStarted:Z

.field private mMotionEventSequenceStarted:Z

.field private mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

.field private mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

.field private mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 108
    const-string v0, "com.samsung.android.app.talkback"

    iput-object v0, p0, VOICE_ASSISTANT_PACKAGE_NAME:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    iput-object v0, p0, mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 179
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPm:Landroid/os/PowerManager;

    .line 180
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    .line 181
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.talkback"

    invoke-direct {p0, v0, v1}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 182
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/AccessibilityInputFilter$1;)V

    iput-object v0, p0, mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    .line 184
    :cond_39
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .prologue
    .line 52
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, processBatchedEvents(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .prologue
    .line 52
    iget-object v0, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    .prologue
    .line 52
    invoke-direct {p0}, scheduleProcessBatchedEvents()V

    return-void
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 371
    iget-object v1, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-nez v1, :cond_e

    .line 372
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v1

    iput-object v1, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 373
    invoke-direct {p0}, scheduleProcessBatchedEvents()V

    .line 383
    :cond_d
    :goto_d
    return-void

    .line 376
    :cond_e
    iget-object v1, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 379
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v0

    .line 380
    .local v0, "holder":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v1, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 381
    iget-object v1, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 382
    iput-object v0, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_d
.end method

.method private enableFeatures()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 473
    iput-boolean v4, p0, mMotionEventSequenceStarted:Z

    .line 474
    iput-boolean v4, p0, mHoverEventSequenceStarted:Z

    .line 477
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_27

    .line 478
    new-instance v1, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    iput-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 480
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 481
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    .line 482
    iput-boolean v5, p0, mFilterKeyEvents:Z

    .line 579
    :cond_26
    :goto_26
    return-void

    .line 489
    :cond_27
    const/4 v0, 0x0

    .line 491
    .local v0, "nextEventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_40

    .line 492
    new-instance v1, Lcom/android/server/accessibility/OverlayMagnifier;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/OverlayMagnifier;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    iput-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 493
    iget-object v1, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 496
    :cond_40
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5c

    .line 497
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v1, :cond_9f

    .line 502
    new-instance v1, Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    iput-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 504
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 524
    :cond_5c
    :goto_5c
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_96

    .line 525
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.talkback"

    invoke-direct {p0, v1, v2}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 526
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_ca

    .line 527
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    .line 531
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8a

    .line 536
    iget-object v1, p0, mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->init(Landroid/content/Context;)V

    .line 538
    :cond_8a
    iget-object v1, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 540
    if-eqz v0, :cond_b9

    .line 541
    iget-object v1, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 576
    :cond_96
    :goto_96
    iget v1, p0, mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    .line 577
    iput-boolean v5, p0, mFilterKeyEvents:Z

    goto :goto_26

    .line 514
    :cond_9f
    new-instance v1, Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    .line 516
    iget-object v1, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/ScreenMagnifier;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 517
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 518
    iget-object v0, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    goto :goto_5c

    .line 542
    :cond_b9
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_c5

    .line 543
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_96

    .line 545
    :cond_c5
    iget-object v1, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iput-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto :goto_96

    .line 548
    :cond_ca
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 549
    iget-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/TouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 552
    if-eqz v0, :cond_e2

    .line 553
    iget-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_96

    .line 554
    :cond_e2
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_ee

    .line 555
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_96

    .line 557
    :cond_ee
    iget-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iput-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto :goto_96

    .line 562
    :cond_f3
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 563
    iget-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/TouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 566
    if-eqz v0, :cond_10b

    .line 567
    iget-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_96

    .line 568
    :cond_10b
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_117

    .line 569
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v2, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_96

    .line 571
    :cond_117
    iget-object v1, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iput-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto/16 :goto_96
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 413
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_1a

    .line 414
    iget-object v1, p0, mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 415
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 416
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 417
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 419
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_1a
    return-void
.end method

.method private hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 829
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 830
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 832
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_7
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    .line 836
    :goto_a
    return v1

    .line 833
    :catch_b
    move-exception v0

    .line 834
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, 0x1

    .line 317
    iget-boolean v0, p0, mFilterKeyEvents:Z

    if-nez v0, :cond_9

    .line 318
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 360
    :goto_8
    return-void

    .line 321
    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-nez v0, :cond_15

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, mKeyEventSequenceStarted:Z

    .line 323
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_8

    .line 328
    :cond_15
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.talkback"

    invoke-direct {p0, v0, v1}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 329
    invoke-direct {p0}, touchKeysDoubleTapEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 334
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_3c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_4f

    .line 338
    :cond_3c
    iget-object v0, p0, mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->readyToPerform(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 339
    iget-object v0, p0, mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_8

    .line 345
    :cond_4a
    iget-object v0, p0, mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 352
    :cond_4f
    iget-boolean v0, p0, mKeyEventSequenceStarted:Z

    if-nez v0, :cond_65

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_65

    .line 353
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_63

    .line 354
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_8

    .line 357
    :cond_63
    iput-boolean v2, p0, mKeyEventSequenceStarted:Z

    .line 359
    :cond_65
    iget-object v0, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    goto :goto_8
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v1, :cond_a

    .line 270
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 314
    :cond_9
    :goto_9
    return-void

    .line 273
    :cond_a
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p2

    if-nez v1, :cond_1c

    .line 274
    iput-boolean v2, p0, mMotionEventSequenceStarted:Z

    .line 275
    iput-boolean v2, p0, mHoverEventSequenceStarted:Z

    .line 276
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 277
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_9

    .line 280
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 281
    .local v0, "deviceId":I
    iget v1, p0, mCurrentTouchDeviceId:I

    if-eq v1, v0, :cond_2f

    .line 282
    iput v0, p0, mCurrentTouchDeviceId:I

    .line 283
    iput-boolean v2, p0, mMotionEventSequenceStarted:Z

    .line 284
    iput-boolean v2, p0, mHoverEventSequenceStarted:Z

    .line 285
    iget-object v1, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 287
    :cond_2f
    iget v1, p0, mCurrentTouchDeviceId:I

    if-gez v1, :cond_37

    .line 288
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_9

    .line 292
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_43

    .line 293
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_9

    .line 297
    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 298
    iget-boolean v1, p0, mMotionEventSequenceStarted:Z

    if-nez v1, :cond_55

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_9

    .line 302
    iput-boolean v3, p0, mMotionEventSequenceStarted:Z

    .line 313
    :cond_55
    :goto_55
    invoke-direct {p0, p1, p2}, batchMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_9

    .line 306
    :cond_59
    iget-boolean v1, p0, mHoverEventSequenceStarted:Z

    if-nez v1, :cond_55

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 310
    iput-boolean v3, p0, mHoverEventSequenceStarted:Z

    goto :goto_55
.end method

.method private processBatchedEvents(J)V
    .registers 8
    .param p1, "frameNanos"    # J

    .prologue
    const/4 v4, 0x0

    .line 386
    iget-object v0, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 387
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :goto_3
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-eqz v2, :cond_17

    .line 388
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_3

    .line 400
    :cond_a
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    invoke-direct {p0, v2, v3}, handleMotionEvent(Landroid/view/MotionEvent;I)V

    .line 401
    move-object v1, v0

    .line 402
    .local v1, "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 403
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    .line 391
    .end local v1    # "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :cond_17
    if-nez v0, :cond_1c

    .line 392
    iput-object v4, p0, mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 405
    :goto_1b
    return-void

    .line 395
    :cond_1c
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_a

    .line 397
    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_1b
.end method

.method private scheduleProcessBatchedEvents()V
    .registers 5

    .prologue
    .line 363
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method private touchKeysDoubleTapEnabled()Z
    .registers 2

    .prologue
    .line 639
    iget v0, p0, mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    iget v0, p0, mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_14

    iget v0, p0, mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 451
    return-void
.end method

.method disableFeatures()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 582
    iget-object v0, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-eqz v0, :cond_12

    .line 583
    iget-object v0, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 584
    iget-object v0, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    .line 585
    iput-object v2, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 587
    :cond_12
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.talkback"

    invoke-direct {p0, v0, v1}, hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 588
    iget-object v0, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    if-eqz v0, :cond_31

    .line 589
    iget-object v0, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    .line 590
    iget-object v0, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->onDestroy()V

    .line 591
    iput-object v2, p0, mSamsungTouchExplorer:Lcom/android/server/accessibility/SamsungTouchExplorer;

    .line 593
    iget-object v0, p0, mDoubleTapDetector:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->stop()V

    .line 596
    :cond_31
    iget-object v0, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    if-eqz v0, :cond_46

    .line 597
    iget-object v0, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->resetScreenMagnifierIfRequired()V

    .line 598
    iget-object v0, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->clear()V

    .line 599
    iget-object v0, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->onDestroy()V

    .line 600
    iput-object v2, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    .line 602
    :cond_46
    iget-object v0, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    if-eqz v0, :cond_63

    .line 603
    iget-object v0, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 604
    iget-object v0, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetScreenMagnifier()V

    .line 606
    :cond_57
    iget-object v0, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->clear()V

    .line 607
    iget-object v0, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->onDestroy()V

    .line 608
    iput-object v2, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    .line 611
    :cond_63
    iget-object v0, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v0, :cond_73

    .line 612
    iget-object v0, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->clear()V

    .line 613
    iget-object v0, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->onDestroy()V

    .line 614
    iput-object v2, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    .line 619
    :cond_73
    iget-object v0, p0, mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    if-eqz v0, :cond_83

    .line 620
    iget-object v0, p0, mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->clear()V

    .line 621
    iget-object v0, p0, mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->onDestroy()V

    .line 622
    iput-object v2, p0, mUniversalSwitchInputEventTransformer:Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;

    .line 626
    :cond_83
    iput-object v2, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 627
    iput-boolean v3, p0, mKeyEventSequenceStarted:Z

    .line 628
    iput-boolean v3, p0, mMotionEventSequenceStarted:Z

    .line 629
    iput-boolean v3, p0, mHoverEventSequenceStarted:Z

    .line 630
    iput-boolean v3, p0, mFilterKeyEvents:Z

    .line 631
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 467
    iget-object v0, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 470
    :cond_9
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 441
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 646
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/16 v7, 0x4002

    .line 214
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_16

    invoke-virtual {p1, v7}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 217
    iget-object v3, p0, mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 222
    :cond_16
    instance-of v3, p1, Landroid/view/KeyEvent;

    if-eqz v3, :cond_29

    const/16 v3, 0x101

    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v0, p1

    .line 224
    check-cast v0, Landroid/view/KeyEvent;

    .line 225
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 266
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_28
    :goto_28
    return-void

    .line 226
    :cond_29
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_151

    invoke-virtual {p1, v7}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 227
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInputEvent coming to InputDevice.SOURCE_STYLUS ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 228
    check-cast v1, Landroid/view/MotionEvent;

    .line 230
    .local v1, "mMotionevent":Landroid/view/MotionEvent;
    iget-object v3, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v3, :cond_6e

    move-object v2, p1

    .line 231
    check-cast v2, Landroid/view/MotionEvent;

    .line 232
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v2, p2}, onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 233
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Received event 4 "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-nez v3, :cond_6a

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_28

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_28

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_28

    .line 238
    :cond_6a
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_28

    .line 241
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_6e
    iget-object v3, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    if-eqz v3, :cond_d9

    iget-object v3, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->isScreenMagnified()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 242
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInputEvent coming to multi screen magnifier (it may or may not scale the event depending on the dispalyId ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, mMultiScreenMagnifierController:Lcom/android/server/accessibility/MultiScreenMagnifierController;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/MultiScreenMagnifierController;->getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 245
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-super {p0, v1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_28

    .line 247
    :cond_d9
    iget-object v3, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    if-eqz v3, :cond_144

    iget-object v3, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnified()Z

    move-result v3

    if-eqz v3, :cond_144

    .line 248
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInputEvent coming to magnifier ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v3, p0, mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 251
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After Scaling event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0, v1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_28

    .line 254
    :cond_144
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInputEvent coming to NON-magnifier ."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-super {p0, v1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_28

    .line 258
    .end local v1    # "mMotionevent":Landroid/view/MotionEvent;
    :cond_151
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_16b

    const/16 v3, 0x1002

    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_16b

    invoke-virtual {p1, v7}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-nez v3, :cond_16b

    move-object v2, p1

    .line 260
    check-cast v2, Landroid/view/MotionEvent;

    .line 261
    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v2, p2}, onMotionEvent(Landroid/view/MotionEvent;I)V

    goto/16 :goto_28

    .line 263
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_16b
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_28
.end method

.method public onInstalled()V
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, mInstalled:Z

    .line 192
    invoke-virtual {p0}, disableFeatures()V

    .line 193
    invoke-direct {p0}, enableFeatures()V

    .line 194
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 195
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 425
    iget-object v0, p0, mOverlayMagnifier:Lcom/android/server/accessibility/OverlayMagnifier;

    if-eqz v0, :cond_20

    iget-object v0, p0, mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    .line 434
    :cond_1f
    :goto_1f
    return-void

    .line 433
    :cond_20
    invoke-virtual {p0, p1, p3}, sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_1f
.end method

.method public onUninstalled()V
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, mInstalled:Z

    .line 203
    invoke-virtual {p0}, disableFeatures()V

    .line 204
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 205
    return-void
.end method

.method setEnabledFeatures(I)V
    .registers 3
    .param p1, "enabledFeatures"    # I

    .prologue
    .line 454
    iget v0, p0, mEnabledFeatures:I

    if-ne v0, p1, :cond_5

    .line 464
    :cond_4
    :goto_4
    return-void

    .line 457
    :cond_5
    iget-boolean v0, p0, mInstalled:Z

    if-eqz v0, :cond_c

    .line 458
    invoke-virtual {p0}, disableFeatures()V

    .line 460
    :cond_c
    iput p1, p0, mEnabledFeatures:I

    .line 461
    iget-boolean v0, p0, mInstalled:Z

    if-eqz v0, :cond_4

    .line 462
    invoke-direct {p0}, enableFeatures()V

    goto :goto_4
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 446
    return-void
.end method
