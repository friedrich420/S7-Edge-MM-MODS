.class Lcom/android/server/smartclip/GestureEffectManager;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# static fields
.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final TAG:Ljava/lang/String; = "GestureEffectManager"


# instance fields
.field private DEBUG:Z

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private mDisplay:Landroid/view/Display;

.field mGesturePad:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsShowingGestureEffect:Z

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field mSmartClipView:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x320

    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 2619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2622
    iput v3, p0, ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 2623
    const/16 v0, 0x500

    iput v0, p0, ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 2624
    iput v2, p0, ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 2625
    iput v2, p0, ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 2628
    const/16 v0, 0x32

    iput v0, p0, GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 2629
    iput v3, p0, GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 2630
    const/16 v0, 0x4b0

    iput v0, p0, GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 2637
    const/4 v0, 0x1

    iput-boolean v0, p0, DEBUG:Z

    .line 2639
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsShowingGestureEffect:Z

    .line 2640
    iput-object v1, p0, mDisplay:Landroid/view/Display;

    .line 2644
    iput-object v1, p0, mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 2651
    iput-object v1, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 2652
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, mInstrumentation:Landroid/app/Instrumentation;

    .line 2654
    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 2655
    iput-object v1, p0, mPenLongPress:Ljava/lang/Runnable;

    .line 2656
    iput-object v1, p0, mPenDoubleTap:Ljava/lang/Runnable;

    .line 2657
    iput-object v1, p0, mGesturePad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/GestureEffectManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2619
    iget-boolean v0, p0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/GestureEffectManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 2619
    invoke-direct {p0, p1, p2}, sendKeyDownUpSync(II)V

    return-void
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 3035
    iget-object v0, p0, mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3036
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_18

    .line 3037
    const-string v0, "GestureEffectManager"

    const-string/jumbo v1, "send interrupt to previous mSPenGestureEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_18
    iget-object v0, p0, mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3041
    :cond_1d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/smartclip/GestureEffectManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/smartclip/GestureEffectManager$1;-><init>(Lcom/android/server/smartclip/GestureEffectManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 3061
    iget-object v0, p0, mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3062
    return-void
.end method

.method private sendKeyDownUpSync(II)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "source"    # I

    .prologue
    .line 3065
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3066
    .local v0, "eventDown":Landroid/view/KeyEvent;
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 3067
    iget-object v2, p0, mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 3069
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3070
    .local v1, "eventUp":Landroid/view/KeyEvent;
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 3071
    iget-object v2, p0, mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 3072
    return-void
.end method


# virtual methods
.method public init(Lcom/android/server/smartclip/SmartClipView;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "view"    # Lcom/android/server/smartclip/SmartClipView;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "penLongPress"    # Ljava/lang/Runnable;
    .param p4, "penDoubleTap"    # Ljava/lang/Runnable;
    .param p5, "gesturePad"    # Ljava/lang/Runnable;

    .prologue
    .line 2660
    iput-object p1, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 2661
    iget-object v0, p0, mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, mDisplay:Landroid/view/Display;

    .line 2664
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 2666
    iput-object p3, p0, mPenLongPress:Ljava/lang/Runnable;

    .line 2667
    iput-object p4, p0, mPenDoubleTap:Ljava/lang/Runnable;

    .line 2668
    iput-object p5, p0, mGesturePad:Ljava/lang/Runnable;

    .line 2669
    return-void
.end method

.method public isShowingGestureEffect()Z
    .registers 2

    .prologue
    .line 3009
    iget-boolean v0, p0, mIsShowingGestureEffect:Z

    return v0
.end method

.method public onAttachedToWindow(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 2
    .param p1, "view"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 3032
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .registers 3
    .param p1, "isInvisible"    # Z

    .prologue
    .line 3013
    iget-boolean v0, p0, mIsShowingGestureEffect:Z

    if-nez v0, :cond_6

    .line 3014
    iput-boolean p1, p0, mIsShowingGestureEffect:Z

    .line 3016
    :cond_6
    return-void
.end method
