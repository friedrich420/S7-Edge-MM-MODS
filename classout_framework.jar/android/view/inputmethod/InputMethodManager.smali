.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$H;
    }
.end annotation


# static fields
.field public static final CONTROL_START_INITIAL:I = 0x100

.field public static final CONTROL_WINDOW_FIRST:I = 0x4

.field public static final CONTROL_WINDOW_IS_TEXT_EDITOR:I = 0x2

.field public static final CONTROL_WINDOW_IS_WRITING_BUDDY_SHOWN:I = 0x10000

.field public static final CONTROL_WINDOW_VIEW_HAS_FOCUS:I = 0x1

.field static final DEBUG:Z = false

.field static final DEBUG_SIMPLE_LOG:Z

.field static final DEBUG_TRACE_HIDEIME:Z = false

.field static final DEBUG_TRACE_SHOWIME:Z = false

.field public static final DISPATCH_HANDLED:I = 0x1

.field public static final DISPATCH_IN_PROGRESS:I = -0x1

.field public static final DISPATCH_NOT_HANDLED:I = 0x0

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_FLUSH_INPUT_EVENT:I = 0x7

.field static final MSG_HIDE_MOBILE_KEYBOARD:I = 0x65

.field static final MSG_SEND_INPUT_EVENT:I = 0x5

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0x9

.field static final MSG_SHOW_MOBILE_KEYBOARD:I = 0x64

.field static final MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field static final MSG_UNBIND:I = 0x3

.field private static final NOT_AN_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = -0x1

.field static final PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field public static final PRIVATE_FLAG_CHECK_FOCUS_FORCED:I = 0x4

.field private static final REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field public static final SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static sInstance:Landroid/view/inputmethod/InputMethodManager;


# instance fields
.field private final STATE_MOBILE_KEYBOARD_HIDE:I

.field private final STATE_MOBILE_KEYBOARD_NONE:I

.field private final STATE_MOBILE_KEYBOARD_SHOW:I

.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurChannel:Landroid/view/InputChannel;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field private mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private mIsCheckedFocusInView:Z

.field private mLastSentUserActionNotificationSequenceNumber:I

.field final mMainLooper:Landroid/os/Looper;

.field private mMobileKeyboardState:I

.field mNextServedView:Landroid/view/View;

.field private mNextUserActionNotificationSequenceNumber:I

.field final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestUpdateCursorAnchorInfoMonitorMode:I

.field mServedConnecting:Z

.field mServedContext:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTba:Landroid/view/inputmethod/EditorInfo;

.field mTmpCursorRect:Landroid/graphics/Rect;

.field private sService:Landroid/sec/clipboard/IClipboardService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DEBUG_SIMPLE_LOG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .registers 9
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x14

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-boolean v1, p0, mActive:Z

    .line 314
    iput-boolean v3, p0, mHasBeenInactive:Z

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpCursorRect:Landroid/graphics/Rect;

    .line 361
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mCursorRect:Landroid/graphics/Rect;

    .line 379
    iput v2, p0, mNextUserActionNotificationSequenceNumber:I

    .line 385
    iput v2, p0, mLastSentUserActionNotificationSequenceNumber:I

    .line 391
    iput-object v5, p0, mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 398
    iput v2, p0, mBindSequence:I

    .line 415
    iput v1, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 417
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v4}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, mPendingEventPool:Landroid/util/Pools$Pool;

    .line 418
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mPendingEvents:Landroid/util/SparseArray;

    .line 421
    iput v1, p0, STATE_MOBILE_KEYBOARD_NONE:I

    .line 422
    iput v3, p0, STATE_MOBILE_KEYBOARD_SHOW:I

    .line 423
    const/4 v0, 0x2

    iput v0, p0, STATE_MOBILE_KEYBOARD_HIDE:I

    .line 424
    iput v1, p0, mMobileKeyboardState:I

    .line 627
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 674
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v0, p0, mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2955
    iput-object v5, p0, sService:Landroid/sec/clipboard/IClipboardService;

    .line 677
    iput-object p1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    .line 678
    iput-object p2, p0, mMainLooper:Landroid/os/Looper;

    .line 679
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v0, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v0, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 680
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v1, p0, mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v0, p2, v1, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 682
    return-void
.end method

.method static synthetic access$002(Landroid/view/inputmethod/InputMethodManager;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # I

    .prologue
    .line 230
    iput p1, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I

    return p1
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodManager;ZZ)Z
    .registers 4
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, checkFocusNoStartInput(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Landroid/view/inputmethod/InputMethodManager;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # I

    .prologue
    .line 230
    iput p1, p0, mNextUserActionNotificationSequenceNumber:I

    return p1
.end method

.method static synthetic access$400(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 230
    invoke-direct {p0, p1}, recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method private checkFocusNoStartInput(ZZ)Z
    .registers 11
    .param p1, "forceNewFocus"    # Z
    .param p2, "finishComposingText"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1798
    iget-object v4, p0, mServedView:Landroid/view/View;

    iget-object v5, p0, mNextServedView:Landroid/view/View;

    if-ne v4, v5, :cond_b

    if-nez p1, :cond_b

    .line 1845
    :goto_a
    return v2

    .line 1802
    :cond_b
    const/4 v0, 0x0

    .line 1803
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v4, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1804
    :try_start_f
    iget-object v5, p0, mServedView:Landroid/view/View;

    iget-object v6, p0, mNextServedView:Landroid/view/View;

    if-ne v5, v6, :cond_1c

    if-nez p1, :cond_1c

    .line 1805
    monitor-exit v4

    goto :goto_a

    .line 1834
    :catchall_19
    move-exception v2

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v2

    .line 1807
    :cond_1c
    :try_start_1c
    sget-boolean v5, DEBUG_SIMPLE_LOG:Z

    if-eqz v5, :cond_72

    .line 1808
    const-string v1, "<none>"

    .line 1809
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, mServedView:Landroid/view/View;

    if-eqz v5, :cond_38

    iget-object v5, p0, mServedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 1810
    iget-object v5, p0, mServedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1812
    :cond_38
    const-string v5, "InputMethodManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkFocus: view="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mServedView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " next="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mNextServedView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " forceNewFocus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_72
    iget-object v5, p0, mNextServedView:Landroid/view/View;

    if-nez v5, :cond_7e

    .line 1820
    invoke-virtual {p0}, finishInputLocked()V

    .line 1824
    invoke-virtual {p0}, closeCurrentInput()V

    .line 1825
    monitor-exit v4

    goto :goto_a

    .line 1828
    :cond_7e
    iget-object v0, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1830
    iget-object v2, p0, mNextServedView:Landroid/view/View;

    iput-object v2, p0, mServedView:Landroid/view/View;

    .line 1831
    const/4 v2, 0x0

    iput-object v2, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1832
    const/4 v2, 0x0

    iput-object v2, p0, mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1833
    const/4 v2, 0x1

    iput-boolean v2, p0, mServedConnecting:Z

    .line 1834
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_1c .. :try_end_8e} :catchall_19

    .line 1836
    if-eqz p2, :cond_9d

    if-eqz v0, :cond_9d

    .line 1838
    iget-object v2, p0, mMainLooper:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 1839
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_9d
    :goto_9d
    move v2, v3

    .line 1845
    goto/16 :goto_a

    .line 1841
    :cond_a0
    const-string v2, "InputMethodManager"

    const-string v4, "[IMM] checkFocusNoStartInput - ic.finishComposingText() must be called on the main looper"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d
.end method

.method private dismissAndShowAgainInputMethodPickerLocked()V
    .registers 4

    .prologue
    .line 2542
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->dismissAndShowAgainInputMethodPicker()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2546
    :goto_5
    return-void

    .line 2543
    :catch_6
    move-exception v0

    .line 2544
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    const-string v2, "Unable dismiss And Show Again InputMethodPicker"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private dismissClipboard()V
    .registers 4

    .prologue
    .line 2957
    iget-object v1, p0, sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_10

    .line 2958
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2959
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iput-object v1, p0, sService:Landroid/sec/clipboard/IClipboardService;

    .line 2963
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    :try_start_10
    iget-object v1, p0, sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_2c

    iget-object v1, p0, sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->IsShowUIClipboardData()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2964
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_27

    const-string v1, "InputMethodManager"

    const-string v2, "dismissClipboard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_27
    iget-object v1, p0, sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2c} :catch_2d

    .line 2969
    :cond_2c
    :goto_2c
    return-void

    .line 2967
    :catch_2d
    move-exception v1

    goto :goto_2c
.end method

.method private flushPendingEventsLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x7

    .line 2460
    iget-object v4, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 2462
    iget-object v4, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2463
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_26

    .line 2464
    iget-object v4, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2465
    .local v3, "seq":I
    iget-object v4, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2466
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2467
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2463
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2469
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "seq":I
    :cond_26
    return-void
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 5

    .prologue
    .line 754
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    monitor-enter v3

    .line 755
    :try_start_3
    sget-object v2, sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_1c

    .line 756
    const-string v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 757
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 758
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v4}, <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    sput-object v2, sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 760
    :cond_1c
    sget-object v2, sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v3

    return-object v2

    .line 761
    .end local v1    # "service":Lcom/android/internal/view/IInputMethodManager;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private getStackTrace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2916
    const v0, 0x7ffffffe

    invoke-direct {p0, v0}, getStackTrace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStackTrace(I)Ljava/lang/String;
    .registers 8
    .param p1, "limit"    # I

    .prologue
    .line 2929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2931
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_b

    .line 2932
    :catch_b
    move-exception v0

    .line 2933
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2934
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_11
    array-length v4, v1

    if-ge v2, v4, :cond_37

    add-int/lit8 v4, p1, 0x1

    if-ge v2, v4, :cond_37

    .line 2935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2938
    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private notifyInputConnectionFinished()V
    .registers 3

    .prologue
    .line 971
    iget-object v1, p0, mServedView:Landroid/view/View;

    if-eqz v1, :cond_15

    iget-object v1, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_15

    .line 976
    iget-object v1, p0, mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 977
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_15

    .line 979
    iget-object v1, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 982
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_15
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .registers 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2473
    iget-object v1, p0, mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 2474
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_10

    .line 2475
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .end local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$1;)V

    .line 2477
    .restart local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_10
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 2478
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 2479
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 2480
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 2481
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 2482
    return-object v0
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .prologue
    .line 771
    sget-object v0, sInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 3
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 2486
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 2487
    iget-object v0, p0, mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 2488
    return-void
.end method

.method static scheduleCheckFocusLocked(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1781
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1782
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 1783
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 1785
    :cond_9
    return-void
.end method

.method private showInputMethodPickerLocked()V
    .registers 5

    .prologue
    .line 2551
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 2555
    :goto_8
    return-void

    .line 2552
    :catch_9
    move-exception v0

    .line 2553
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method


# virtual methods
.method public changeFullInputMethod(Z)V
    .registers 4
    .param p1, "fullmode"    # Z

    .prologue
    .line 723
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_9

    .line 724
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->changeFullInputMethod(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 729
    :cond_9
    return-void

    .line 726
    :catch_a
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1791
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, checkFocusNoStartInput(ZZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1792
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, startInputInner(Landroid/os/IBinder;III)Z

    .line 1794
    :cond_c
    return-void
.end method

.method clearBindingLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 912
    invoke-virtual {p0}, clearConnectionLocked()V

    .line 913
    invoke-virtual {p0, v1}, setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 914
    const/4 v0, -0x1

    iput v0, p0, mBindSequence:I

    .line 915
    iput-object v1, p0, mCurId:Ljava/lang/String;

    .line 916
    iput-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 917
    return-void
.end method

.method clearConnectionLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 938
    iput-object v1, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 939
    iput-object v1, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 940
    iget-object v0, p0, mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v0, :cond_10

    .line 941
    iget-object v0, p0, mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    .line 942
    iput-object v1, p0, mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    .line 944
    :cond_10
    return-void
.end method

.method closeCurrentInput()V
    .registers 5

    .prologue
    .line 1850
    :try_start_0
    iget-object v0, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1853
    :goto_9
    return-void

    .line 1851
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .registers 3

    .prologue
    .line 2534
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2535
    :try_start_3
    invoke-direct {p0}, dismissAndShowAgainInputMethodPickerLocked()V

    .line 2536
    monitor-exit v1

    .line 2538
    return-void

    .line 2536
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 18
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2316
    iget-object v12, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v12

    .line 2317
    :try_start_3
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_bb

    .line 2318
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_8d

    .line 2319
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v8, v0

    .line 2323
    .local v8, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_73

    .line 2324
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 2325
    .local v7, "actionFromEvent":I
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 2326
    .local v9, "keycodeFromEvent":I
    if-eqz v7, :cond_24

    const/4 v1, 0x1

    if-ne v7, v1, :cond_73

    :cond_24
    const/16 v1, 0x13

    if-eq v9, v1, :cond_3c

    const/16 v1, 0x14

    if-eq v9, v1, :cond_3c

    const/16 v1, 0x15

    if-eq v9, v1, :cond_3c

    const/16 v1, 0x16

    if-eq v9, v1, :cond_3c

    const/16 v1, 0x17

    if-eq v9, v1, :cond_3c

    const/16 v1, 0x3d

    if-ne v9, v1, :cond_73

    :cond_3c
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_73

    .line 2334
    iget-object v4, p0, mCurId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v11

    .line 2336
    .local v11, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v1, p0, mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2338
    invoke-virtual {p0, v11}, sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    monitor-exit v12

    .line 2376
    .end local v7    # "actionFromEvent":I
    .end local v8    # "keyEvent":Landroid/view/KeyEvent;
    .end local v9    # "keycodeFromEvent":I
    .end local v11    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :goto_5c
    return v1

    .line 2342
    .restart local v7    # "actionFromEvent":I
    .restart local v8    # "keyEvent":Landroid/view/KeyEvent;
    .restart local v9    # "keycodeFromEvent":I
    .restart local v11    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_5d
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v11}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2343
    .local v10, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2344
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v1, v10}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 2346
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_5c

    .line 2375
    .end local v7    # "actionFromEvent":I
    .end local v8    # "keyEvent":Landroid/view/KeyEvent;
    .end local v9    # "keycodeFromEvent":I
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_70
    move-exception v1

    monitor-exit v12
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v1

    .line 2352
    .restart local v8    # "keyEvent":Landroid/view/KeyEvent;
    :cond_73
    :try_start_73
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8d

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_8d

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_8d

    .line 2355
    invoke-direct {p0}, showInputMethodPickerLocked()V

    .line 2356
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_5c

    .line 2362
    .end local v8    # "keyEvent":Landroid/view/KeyEvent;
    :cond_8d
    iget-object v4, p0, mCurId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v11

    .line 2364
    .restart local v11    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v1, p0, mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 2366
    invoke-virtual {p0, v11}, sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    monitor-exit v12

    goto :goto_5c

    .line 2370
    :cond_a8
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v11}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2371
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2372
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v1, v10}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 2373
    const/4 v1, -0x1

    monitor-exit v12

    goto :goto_5c

    .line 2375
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_bb
    monitor-exit v12
    :try_end_bc
    .catchall {:try_start_73 .. :try_end_bc} :catchall_70

    .line 2376
    const/4 v1, 0x0

    goto :goto_5c
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 999
    invoke-virtual {p0}, checkFocus()V

    .line 1000
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1001
    :try_start_6
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_18

    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1003
    :cond_16
    monitor-exit v1

    .line 1014
    :goto_17
    return-void

    .line 1006
    :cond_18
    iput-object p2, p0, mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1007
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_27

    if-eqz v0, :cond_25

    .line 1009
    :try_start_1e
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_2a
    .catchall {:try_start_1e .. :try_end_25} :catchall_27

    .line 1013
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v1

    goto :goto_17

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0

    .line 1010
    :catch_2a
    move-exception v0

    goto :goto_25
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2804
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2805
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasBeenInactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mHasBeenInactive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2819
    iget-object v1, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1d6

    .line 2820
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2821
    iget-object v1, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2825
    :goto_12d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextUserActionNotificationSequenceNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mNextUserActionNotificationSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastSentUserActionNotificationSequenceNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLastSentUserActionNotificationSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2836
    return-void

    .line 2823
    :cond_1d6
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_12d
.end method

.method finishInputLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 950
    iput-object v2, p0, mNextServedView:Landroid/view/View;

    .line 951
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 953
    iget-object v0, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_12

    .line 955
    :try_start_b
    iget-object v0, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_20

    .line 959
    :cond_12
    :goto_12
    invoke-direct {p0}, notifyInputConnectionFinished()V

    .line 960
    iput-object v2, p0, mServedView:Landroid/view/View;

    .line 961
    iput-object v2, p0, mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, mServedConnecting:Z

    .line 963
    invoke-virtual {p0}, clearConnectionLocked()V

    .line 965
    :cond_1f
    return-void

    .line 956
    :catch_20
    move-exception v0

    goto :goto_12
.end method

.method finishedInputEvent(IZZ)V
    .registers 11
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .prologue
    .line 2422
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 2423
    :try_start_3
    iget-object v2, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 2424
    .local v0, "index":I
    if-gez v0, :cond_d

    .line 2425
    monitor-exit v3

    .line 2441
    :goto_c
    return-void

    .line 2428
    :cond_d
    iget-object v2, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 2429
    .local v1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v2, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2430
    const-wide/16 v4, 0x4

    const-string v2, "aq:imm"

    iget-object v6, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2432
    if-eqz p3, :cond_48

    .line 2433
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :goto_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_4f

    .line 2440
    invoke-virtual {p0, v1, p2}, invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    goto :goto_c

    .line 2436
    :cond_48
    :try_start_48
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_43

    .line 2438
    .end local v0    # "index":I
    .end local v1    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_4f
    move-exception v2

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public focusIn(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 1684
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1685
    :try_start_4
    invoke-virtual {p0, p1}, focusInLocked(Landroid/view/View;)V

    .line 1687
    iget-boolean v2, p0, mIsCheckedFocusInView:Z

    if-eqz v2, :cond_72

    iget-object v2, p0, mNextServedView:Landroid/view/View;

    if-eqz v2, :cond_72

    iget-object v2, p0, mNextServedView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_72

    .line 1688
    iget-object v0, p0, mNextServedView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    .line 1689
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1690
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_72

    const-string v2, "KOREA"

    const-string/jumbo v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_72

    .line 1694
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager$H;->sendEmptyMessage(I)Z

    .line 1701
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_72
    const/4 v2, 0x0

    iput v2, p0, mMobileKeyboardState:I

    .line 1702
    iget-object v2, p0, mNextServedView:Landroid/view/View;

    if-eqz v2, :cond_bf

    iget-object v2, p0, mNextServedView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_bf

    .line 1703
    iget-object v1, p0, mNextServedView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 1704
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {v1}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1705
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_bf

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_bf

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v5, :cond_bf

    .line 1707
    const/4 v2, 0x1

    iput v2, p0, mMobileKeyboardState:I

    .line 1708
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager$H;->sendEmptyMessage(I)Z

    .line 1713
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_bf
    monitor-exit v3

    .line 1714
    return-void

    .line 1713
    :catchall_c1
    move-exception v2

    monitor-exit v3
    :try_end_c3
    .catchall {:try_start_4 .. :try_end_c3} :catchall_c1

    throw v2
.end method

.method focusInLocked(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1717
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_1c

    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_1c
    iget-object v0, p0, mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_28

    .line 1723
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsCheckedFocusInView:Z

    .line 1731
    :goto_27
    return-void

    .line 1728
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsCheckedFocusInView:Z

    .line 1729
    iput-object p1, p0, mNextServedView:Landroid/view/View;

    .line 1730
    invoke-static {p1}, scheduleCheckFocusLocked(Landroid/view/View;)V

    goto :goto_27
.end method

.method public focusOut(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1738
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1739
    :try_start_3
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_39

    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusOut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServedView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " winFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_39
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_3d

    .line 1755
    :cond_3d
    iget v0, p0, mMobileKeyboardState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_50

    .line 1756
    iget-object v0, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 1757
    iget-object v0, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager$H;->sendEmptyMessage(I)Z

    .line 1759
    :cond_50
    const/4 v0, 0x0

    iput v0, p0, mMobileKeyboardState:I

    .line 1761
    monitor-exit v1

    .line 1762
    return-void

    .line 1761
    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public forceHideSoftInput()Z
    .registers 3

    .prologue
    .line 1330
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_b

    .line 1331
    const-string v0, "InputMethodManager"

    const-string v1, "forceHideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, forceHideSoftInput(Landroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public forceHideSoftInput(Landroid/os/ResultReceiver;)Z
    .registers 6
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1344
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1346
    const/4 v0, 0x0

    .line 1353
    .local v0, "flags":I
    :try_start_4
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_f

    .line 1354
    const-string v1, "InputMethodManager"

    const-string v3, "forceHideSoftInput(ResultReceiver)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_f
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, v0, p1}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_19
    .catchall {:try_start_4 .. :try_end_16} :catchall_1d

    move-result v1

    :try_start_17
    monitor-exit v2

    .line 1360
    :goto_18
    return v1

    .line 1358
    :catch_19
    move-exception v1

    .line 1360
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_18

    .line 1361
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentFocusDisplayID()I
    .registers 3

    .prologue
    .line 2947
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentFocusDisplayID()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2949
    :goto_6
    return v1

    .line 2948
    :catch_7
    move-exception v0

    .line 2949
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .prologue
    .line 2578
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2580
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result-object v1

    :try_start_9
    monitor-exit v2

    .line 2583
    :goto_a
    return-object v1

    .line 2581
    :catch_b
    move-exception v0

    .line 2582
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2583
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 2585
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 795
    :catch_7
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    :try_start_0
    iget-object v2, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    if-nez p1, :cond_a

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v2, v1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_a
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_5

    .line 812
    :catch_f
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 787
    :catch_7
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 6

    .prologue
    .line 2680
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2682
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result v1

    :try_start_9
    monitor-exit v2

    .line 2685
    :goto_a
    return v1

    .line 2683
    :catch_b
    move-exception v0

    .line 2684
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2685
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 2687
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .prologue
    .line 2778
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2780
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result-object v1

    :try_start_9
    monitor-exit v2

    .line 2783
    :goto_a
    return-object v1

    .line 2781
    :catch_b
    move-exception v0

    .line 2782
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2783
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 2785
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method getServedInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method getServedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, mServedView:Landroid/view/View;

    return-object v0
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2644
    iget-object v8, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 2645
    :try_start_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6a

    .line 2649
    .local v5, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :try_start_8
    iget-object v7, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v3

    .line 2651
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 2652
    .local v6, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v3, :cond_33

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_33

    .line 2653
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 2654
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v0, :cond_33

    .line 2655
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2656
    .local v4, "o":Ljava/lang/Object;
    instance-of v7, v4, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v7, :cond_42

    .line 2657
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 2658
    const-string v7, "InputMethodManager"

    const-string v9, "IMI list already contains the same InputMethod."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_33} :catch_4e
    .catchall {:try_start_8 .. :try_end_33} :catchall_6a

    .line 2671
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "o":Ljava/lang/Object;
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_6a

    return-object v5

    .line 2661
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_35
    :try_start_35
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2662
    .restart local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2663
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_42
    if-eqz v6, :cond_3f

    instance-of v7, v4, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_3f

    .line 2664
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4d} :catch_4e
    .catchall {:try_start_35 .. :try_end_4d} :catchall_6a

    goto :goto_3f

    .line 2668
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_4e
    move-exception v1

    .line 2669
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IME died: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 2672
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :catchall_6a
    move-exception v7

    monitor-exit v8
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_6a

    throw v7
.end method

.method public getWACOMPen()Z
    .registers 3

    .prologue
    .line 737
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_12

    .line 738
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getWACOMPen()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 743
    :goto_a
    return v1

    .line 740
    :catch_b
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 743
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 2264
    :try_start_0
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_b

    .line 2265
    const-string v1, "InputMethodManager"

    const-string v2, "hideSoftInputFromInputMethod(IBinder,I)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_b
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 2271
    return-void

    .line 2268
    :catch_11
    move-exception v0

    .line 2269
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v0, 0x0

    .line 1247
    invoke-virtual {p0}, checkFocus()V

    .line 1248
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1249
    :try_start_7
    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eqz v2, :cond_13

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_15

    .line 1250
    :cond_13
    monitor-exit v1

    .line 1281
    :goto_14
    return v0

    .line 1254
    :cond_15
    iget v2, p0, mMobileKeyboardState:I

    if-eqz v2, :cond_5e

    .line 1255
    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5b

    .line 1257
    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1258
    const/4 v2, 0x2

    iput v2, p0, mMobileKeyboardState:I

    .line 1259
    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1260
    invoke-direct {p0}, dismissClipboard()V

    .line 1262
    :cond_56
    monitor-exit v1

    goto :goto_14

    .line 1282
    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw v0

    .line 1265
    :cond_5b
    const/4 v2, 0x0

    :try_start_5c
    iput v2, p0, mMobileKeyboardState:I
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_58

    .line 1275
    :cond_5e
    :try_start_5e
    sget-boolean v2, DEBUG_SIMPLE_LOG:Z

    if-eqz v2, :cond_69

    .line 1276
    const-string v2, "InputMethodManager"

    const-string v3, "hideSoftInputFromWindow(IBinder,I,ResultReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_69
    iget-object v2, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_70} :catch_73
    .catchall {:try_start_5e .. :try_end_70} :catchall_58

    move-result v0

    :try_start_71
    monitor-exit v1

    goto :goto_14

    .line 1279
    :catch_73
    move-exception v2

    .line 1281
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_58

    goto :goto_14
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 827
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 831
    return-void

    .line 828
    :catch_8
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .registers 5
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .prologue
    .line 2445
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 2446
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2449
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    .line 2457
    :goto_11
    return-void

    .line 2453
    :cond_12
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 2454
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2455
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11
.end method

.method public isAcceptingText()Z
    .registers 2

    .prologue
    .line 903
    invoke-virtual {p0}, checkFocus()V

    .line 904
    iget-object v0, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isAccessoryKeyboardState()I
    .registers 3

    .prologue
    .line 2900
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->isAccessoryKeyboard()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2902
    :goto_6
    return v1

    .line 2901
    :catch_7
    move-exception v0

    .line 2902
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isActive()Z
    .registers 3

    .prologue
    .line 892
    invoke-virtual {p0}, checkFocus()V

    .line 893
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 894
    :try_start_6
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 895
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isActive(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 879
    invoke-virtual {p0}, checkFocus()V

    .line 880
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 881
    :try_start_6
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_16

    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_16
    iget-object v0, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    monitor-exit v1

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 885
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2792
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2794
    :try_start_4
    iget-object v3, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_9} :catch_12
    .catchall {:try_start_4 .. :try_end_9} :catchall_f

    move-result v1

    :try_start_a
    monitor-exit v2

    .line 2798
    :goto_b
    return v1

    .line 2795
    :catch_c
    move-exception v0

    .line 2796
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2

    goto :goto_b

    .line 2800
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1

    .line 2797
    :catch_12
    move-exception v0

    .line 2798
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    goto :goto_b
.end method

.method public isCursorAnchorInfoEnabled()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2067
    iget-object v4, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 2068
    :try_start_5
    iget v5, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1a

    move v0, v3

    .line 2070
    .local v0, "isImmediate":Z
    :goto_c
    iget v5, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1c

    move v1, v3

    .line 2072
    .local v1, "isMonitoring":Z
    :goto_13
    if-nez v0, :cond_17

    if-eqz v1, :cond_18

    :cond_17
    move v2, v3

    :cond_18
    monitor-exit v4

    return v2

    .end local v0    # "isImmediate":Z
    .end local v1    # "isMonitoring":Z
    :cond_1a
    move v0, v2

    .line 2068
    goto :goto_c

    .restart local v0    # "isImmediate":Z
    :cond_1c
    move v1, v2

    .line 2070
    goto :goto_13

    .line 2073
    .end local v0    # "isImmediate":Z
    :catchall_1e
    move-exception v2

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public isFullscreenMode()Z
    .registers 2

    .prologue
    .line 871
    iget-boolean v0, p0, mFullscreenMode:Z

    return v0
.end method

.method public isInputMethodShown()Z
    .registers 3

    .prologue
    .line 2520
    const/4 v0, 0x0

    .line 2522
    .local v0, "shown":Z
    :try_start_1
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodShown()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 2526
    :goto_7
    return v0

    .line 2523
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2057
    const/4 v0, 0x0

    return v0
.end method

.method public minimizeSoftInput(Landroid/os/IBinder;I)Z
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1291
    invoke-virtual {p0}, checkFocus()V

    .line 1292
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1293
    :try_start_7
    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eqz v2, :cond_13

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_15

    .line 1294
    :cond_13
    monitor-exit v1

    .line 1305
    :goto_14
    return v0

    .line 1297
    :cond_15
    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    .line 1298
    monitor-exit v1

    goto :goto_14

    .line 1306
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v0

    .line 1302
    :cond_2d
    :try_start_2d
    iget-object v2, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2}, Lcom/android/internal/view/IInputMethodManager;->minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_37
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    move-result v0

    :try_start_35
    monitor-exit v1

    goto :goto_14

    .line 1303
    :catch_37
    move-exception v2

    .line 1305
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_2a

    goto :goto_14
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .registers 6
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 859
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 863
    return-void

    .line 860
    :catch_6
    move-exception v0

    .line 861
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyUserAction()V
    .registers 6

    .prologue
    .line 2611
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2612
    :try_start_3
    iget v1, p0, mLastSentUserActionNotificationSequenceNumber:I

    iget v3, p0, mNextUserActionNotificationSequenceNumber:I

    if-ne v1, v3, :cond_b

    .line 2621
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    .line 2638
    :goto_a
    return-void

    .line 2631
    :cond_b
    :try_start_b
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget v3, p0, mNextUserActionNotificationSequenceNumber:I

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodManager;->notifyUserAction(I)V

    .line 2632
    iget v1, p0, mNextUserActionNotificationSequenceNumber:I

    iput v1, p0, mLastSentUserActionNotificationSequenceNumber:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_1b
    .catchall {:try_start_b .. :try_end_16} :catchall_18

    .line 2637
    :goto_16
    :try_start_16
    monitor-exit v2

    goto :goto_a

    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1

    .line 2634
    :catch_1b
    move-exception v0

    .line 2635
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_18

    goto :goto_16
.end method

.method public onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .registers 16
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "softInputMode"    # I
    .param p4, "first"    # Z
    .param p5, "windowFlags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1861
    const/4 v8, 0x0

    .line 1862
    .local v8, "forceNewFocus":Z
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1863
    :try_start_7
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_46

    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " softInputMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " first="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags=#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_46
    iget-boolean v0, p0, mHasBeenInactive:Z

    if-eqz v0, :cond_59

    .line 1868
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_55

    const-string v0, "InputMethodManager"

    const-string v2, "Has been inactive!  Starting fresh"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_55
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasBeenInactive:Z

    .line 1870
    const/4 v8, 0x1

    .line 1872
    :cond_59
    if-eqz p2, :cond_8e

    move-object v0, p2

    :goto_5c
    invoke-virtual {p0, v0}, focusInLocked(Landroid/view/View;)V

    .line 1873
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_90

    .line 1875
    const/4 v3, 0x0

    .line 1876
    .local v3, "controlFlags":I
    if-eqz p2, :cond_6d

    .line 1877
    or-int/lit8 v3, v3, 0x1

    .line 1878
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1879
    or-int/lit8 v3, v3, 0x2

    .line 1889
    :cond_6d
    if-eqz p4, :cond_71

    .line 1890
    or-int/lit8 v3, v3, 0x4

    .line 1893
    :cond_71
    invoke-direct {p0, v8, v7}, checkFocusNoStartInput(ZZ)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1894
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_83

    .line 1895
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "onWindowFocus startInputInner will call soon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_83
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v3, p3, p5}, startInputInner(Landroid/os/IBinder;III)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1960
    :goto_8d
    return-void

    .end local v3    # "controlFlags":I
    :cond_8e
    move-object v0, p1

    .line 1872
    goto :goto_5c

    .line 1873
    :catchall_90
    move-exception v0

    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v0

    .line 1905
    .restart local v3    # "controlFlags":I
    :cond_93
    iget-object v0, p0, mServedView:Landroid/view/View;

    iget-object v1, p0, mNextServedView:Landroid/view/View;

    if-ne v0, v1, :cond_c9

    if-nez v8, :cond_c9

    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_c9

    const-string v0, "com.kakao.talk"

    iget-object v1, p0, mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1911
    const-string v0, "InputMethodManager"

    const-string v1, "Kakao Window Focus and Lagging check "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iput-boolean v7, p0, mServedConnecting:Z

    .line 1915
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_c6

    .line 1916
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "startInputInner(null, 0, 0, 0) for KAKAO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_c6
    invoke-virtual {p0, v6, v5, v5, v5}, startInputInner(Landroid/os/IBinder;III)Z

    .line 1938
    :cond_c9
    iget-object v9, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 1940
    :try_start_cc
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_d7

    const-string v0, "InputMethodManager"

    const-string v1, "Reporting focus gain, without startInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_d7
    iget-object v0, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p3

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_e6} :catch_eb
    .catchall {:try_start_cc .. :try_end_e6} :catchall_e8

    .line 1947
    :goto_e6
    :try_start_e6
    monitor-exit v9

    goto :goto_8d

    :catchall_e8
    move-exception v0

    monitor-exit v9
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_e8

    throw v0

    .line 1945
    :catch_eb
    move-exception v0

    goto :goto_e6
.end method

.method public onPreWindowFocus(Landroid/view/View;Z)V
    .registers 5
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z

    .prologue
    .line 1964
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1965
    if-nez p1, :cond_8

    .line 1966
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, mCurRootView:Landroid/view/View;

    .line 1967
    :cond_8
    if-eqz p2, :cond_e

    .line 1968
    iput-object p1, p0, mCurRootView:Landroid/view/View;

    .line 1979
    :cond_c
    :goto_c
    monitor-exit v1

    .line 1980
    return-void

    .line 1969
    :cond_e
    iget-object v0, p0, mCurRootView:Landroid/view/View;

    if-ne p1, v0, :cond_c

    .line 1972
    const/4 v0, 0x0

    iput-object v0, p0, mCurRootView:Landroid/view/View;

    goto :goto_c

    .line 1979
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1769
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1773
    :try_start_3
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-ne v0, p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1775
    invoke-static {p1}, scheduleCheckFocusLocked(Landroid/view/View;)V

    .line 1777
    :cond_10
    monitor-exit v1

    .line 1778
    return-void

    .line 1777
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 4
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 854
    return-void

    .line 851
    :catch_6
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 989
    iget-object v0, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_10

    .line 990
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 992
    instance-of v0, p1, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_10

    .line 993
    check-cast p1, Landroid/view/inputmethod/BaseInputConnection;

    .end local p1    # "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p1}, Landroid/view/inputmethod/BaseInputConnection;->reportFinish()V

    .line 996
    :cond_10
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1460
    invoke-virtual {p0}, checkFocus()V

    .line 1461
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1462
    :try_start_7
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_19

    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1464
    :cond_17
    monitor-exit v1

    .line 1475
    :goto_18
    return-void

    .line 1467
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, mServedConnecting:Z

    .line 1468
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_2e

    .line 1470
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_29

    .line 1471
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "restartInput(View)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2, v2}, startInputInner(Landroid/os/IBinder;III)Z

    goto :goto_18

    .line 1468
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2170
    invoke-virtual {p0}, checkFocus()V

    .line 2171
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2172
    :try_start_6
    iget-object v1, p0, mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_16

    iget-object v1, p0, mServedView:Landroid/view/View;

    if-eqz v1, :cond_1e

    iget-object v1, p0, mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_16
    iget-object v1, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1e

    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_20

    .line 2175
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    .line 2184
    :goto_1f
    return-void

    .line 2179
    :cond_20
    :try_start_20
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_2a
    .catchall {:try_start_20 .. :try_end_25} :catchall_27

    .line 2183
    :goto_25
    :try_start_25
    monitor-exit v2

    goto :goto_1f

    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1

    .line 2180
    :catch_2a
    move-exception v0

    .line 2181
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2b
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_27

    goto :goto_25
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2197
    invoke-virtual {p0}, checkFocus()V

    .line 2198
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2199
    :try_start_6
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_c

    .line 2200
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 2209
    :goto_b
    return-void

    .line 2204
    :cond_c
    :try_start_c
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_16
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 2208
    :goto_11
    :try_start_11
    monitor-exit v2

    goto :goto_b

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v1

    .line 2205
    :catch_16
    move-exception v0

    .line 2206
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_13

    goto :goto_11
.end method

.method sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 6
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    const/4 v0, 0x1

    .line 2382
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 2383
    :try_start_4
    invoke-virtual {p0, p1}, sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 2384
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 2385
    monitor-exit v3

    .line 2392
    :goto_c
    return-void

    .line 2388
    :cond_d
    if-ne v1, v0, :cond_14

    .line 2389
    .local v0, "handled":Z
    :goto_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_16

    .line 2391
    invoke-virtual {p0, p1, v0}, invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    goto :goto_c

    .line 2388
    .end local v0    # "handled":Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    .line 2389
    .end local v1    # "result":I
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .registers 9
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .prologue
    .line 2396
    iget-object v3, p0, mCurChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_6f

    .line 2397
    iget-object v3, p0, mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v3, :cond_17

    .line 2398
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v4, p0, mCurChannel:Landroid/view/InputChannel;

    iget-object v5, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, p0, mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 2401
    :cond_17
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 2402
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 2403
    .local v2, "seq":I
    iget-object v3, p0, mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2404
    iget-object v3, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2405
    const-wide/16 v4, 0x4

    const-string v3, "aq:imm"

    iget-object v6, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v4, v5, v3, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2408
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2409
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2410
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2411
    const/4 v3, -0x1

    .line 2417
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "seq":I
    :goto_4a
    return v3

    .line 2414
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v2    # "seq":I
    :cond_4b
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send input event to IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dropping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_6f
    const/4 v3, 0x0

    goto :goto_4a
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 8
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2768
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2770
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    .line 2774
    :goto_8
    :try_start_8
    monitor-exit v2

    .line 2775
    return-void

    .line 2771
    :catch_a
    move-exception v0

    .line 2772
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2774
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setBrightnessWithKeyboard(I)V
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 2890
    :try_start_0
    iget-object v0, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->setScreenBrightness(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2893
    :goto_5
    return-void

    .line 2891
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 7
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2596
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2598
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result v1

    :try_start_9
    monitor-exit v2

    .line 2601
    :goto_a
    return v1

    .line 2599
    :catch_b
    move-exception v0

    .line 2600
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2601
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 2603
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setFullscreenMode(Z)V
    .registers 2
    .param p1, "fullScreen"    # Z

    .prologue
    .line 844
    iput-boolean p1, p0, mFullscreenMode:Z

    .line 845
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 840
    return-void

    .line 837
    :catch_6
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setInputChannelLocked(Landroid/view/InputChannel;)V
    .registers 3
    .param p1, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 920
    iget-object v0, p0, mCurChannel:Landroid/view/InputChannel;

    if-eq v0, p1, :cond_1e

    .line 921
    iget-object v0, p0, mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_13

    .line 922
    invoke-direct {p0}, flushPendingEventsLocked()V

    .line 923
    iget-object v0, p0, mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 926
    :cond_13
    iget-object v0, p0, mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1c

    .line 927
    iget-object v0, p0, mCurChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 929
    :cond_1c
    iput-object p1, p0, mCurChannel:Landroid/view/InputChannel;

    .line 931
    :cond_1e
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 2221
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2225
    return-void

    .line 2222
    :catch_6
    move-exception v0

    .line 2223
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2238
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2242
    return-void

    .line 2239
    :catch_6
    move-exception v0

    .line 2240
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUpdateCursorAnchorInfoMode(I)V
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 2082
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2083
    :try_start_3
    iput p1, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 2084
    monitor-exit v1

    .line 2085
    return-void

    .line 2084
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setWACOMPen(Z)V
    .registers 4
    .param p1, "bPen"    # Z

    .prologue
    .line 709
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_9

    .line 710
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setWACOMPen(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 715
    :cond_9
    return-void

    .line 712
    :catch_a
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 2743
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2745
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result v1

    :try_start_9
    monitor-exit v2

    .line 2748
    :goto_a
    return v1

    .line 2746
    :catch_b
    move-exception v0

    .line 2747
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2748
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 2750
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 7
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 2563
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2565
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    .line 2569
    :goto_a
    :try_start_a
    monitor-exit v2

    .line 2570
    return-void

    .line 2566
    :catch_c
    move-exception v0

    .line 2567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 2569
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public showInputMethodPicker()V
    .registers 3

    .prologue
    .line 2491
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2492
    :try_start_3
    invoke-direct {p0}, showInputMethodPickerLocked()V

    .line 2493
    monitor-exit v1

    .line 2494
    return-void

    .line 2493
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public showInputMethodPicker(Z)V
    .registers 8
    .param p1, "showAuxiliarySubtypes"    # Z

    .prologue
    .line 2503
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 2505
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    .line 2508
    .local v1, "mode":I
    :goto_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v4, v1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_11
    .catchall {:try_start_6 .. :try_end_d} :catchall_2d

    .line 2512
    :goto_d
    :try_start_d
    monitor-exit v3

    .line 2513
    return-void

    .line 2505
    .end local v1    # "mode":I
    :cond_f
    const/4 v1, 0x2

    goto :goto_6

    .line 2509
    .restart local v1    # "mode":I
    :catch_11
    move-exception v0

    .line 2510
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2512
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public showSideSyncSoftInput(I)V
    .registers 4
    .param p1, "showFlags"    # I

    .prologue
    .line 1440
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_15

    .line 1442
    :try_start_4
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_10

    .line 1443
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "showSideSyncSoftInput(I)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_10
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodSession;->showSideSyncSoftInput(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 1449
    :cond_15
    :goto_15
    return-void

    .line 1446
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .prologue
    .line 1067
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_c

    .line 1068
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "showSoftInput(View,I)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v0, 0x0

    .line 1123
    invoke-virtual {p0}, checkFocus()V

    .line 1124
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1125
    :try_start_7
    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_19

    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eqz v2, :cond_17

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1127
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_39

    .line 1164
    :goto_18
    return v0

    .line 1147
    :cond_19
    :try_start_19
    sget-boolean v2, DEBUG_SIMPLE_LOG:Z

    if-eqz v2, :cond_25

    .line 1148
    const-string v2, "InputMethodManager"

    const-string/jumbo v3, "showSoftInput(V,I,ResultReceiver)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_25
    if-eqz p1, :cond_3c

    .line 1153
    invoke-virtual {p1}, Landroid/view/View;->isScaleWindow()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1154
    or-int/lit8 p2, p2, 0x4

    .line 1160
    :cond_2f
    iget-object v2, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_36} :catch_3e
    .catchall {:try_start_19 .. :try_end_36} :catchall_39

    move-result v0

    :try_start_37
    monitor-exit v1

    goto :goto_18

    .line 1165
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_39

    throw v0

    .line 1158
    :cond_3c
    :try_start_3c
    monitor-exit v1

    goto :goto_18

    .line 1161
    :catch_3e
    move-exception v2

    .line 1164
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_39

    goto :goto_18
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 2294
    :try_start_0
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_c

    .line 2295
    const-string v1, "InputMethodManager"

    const-string/jumbo v2, "showSoftInputFromInputMethod(IBinder,I)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_c
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2302
    return-void

    .line 2299
    :catch_12
    move-exception v0

    .line 2300
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1173
    invoke-virtual {p0}, checkFocus()V

    .line 1192
    :try_start_3
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_f

    .line 1193
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "showSoftInputUnchecked(I,ResultReceiver)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_f
    iget-object v0, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_16} :catch_17

    .line 1199
    :goto_16
    return-void

    .line 1197
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 819
    :try_start_0
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 823
    return-void

    .line 820
    :catch_6
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method startInputInner(Landroid/os/IBinder;III)Z
    .registers 20
    .param p1, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p2, "controlFlags"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .prologue
    .line 1483
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1484
    :try_start_3
    iget-object v13, p0, mServedView:Landroid/view/View;

    .line 1487
    .local v13, "view":Landroid/view/View;
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_21

    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting input: view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_21
    if-nez v13, :cond_31

    .line 1489
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_2e

    const-string v1, "InputMethodManager"

    const-string v3, "ABORT input: no served view!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_2e
    const/4 v1, 0x0

    monitor-exit v2

    .line 1657
    :goto_30
    return v1

    .line 1492
    :cond_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_48

    .line 1498
    invoke-virtual {v13}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 1499
    .local v12, "vh":Landroid/os/Handler;
    if-nez v12, :cond_4b

    .line 1504
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_43

    const-string v1, "InputMethodManager"

    const-string v2, "ABORT input: no handler for view! Close current input."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_43
    invoke-virtual {p0}, closeCurrentInput()V

    .line 1506
    const/4 v1, 0x0

    goto :goto_30

    .line 1492
    .end local v12    # "vh":Landroid/os/Handler;
    .end local v13    # "view":Landroid/view/View;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1

    .line 1508
    .restart local v12    # "vh":Landroid/os/Handler;
    .restart local v13    # "view":Landroid/view/View;
    :cond_4b
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_6a

    .line 1511
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_60

    const-string v1, "InputMethodManager"

    const-string v2, "Starting input: reschedule to view thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_60
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1518
    const/4 v1, 0x0

    goto :goto_30

    .line 1524
    :cond_6a
    new-instance v7, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v7}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1528
    .local v7, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1529
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v7, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 1530
    invoke-virtual {v13, v7}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 1533
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_9f

    .line 1534
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input: tba="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_9f
    iget-object v14, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v14

    .line 1563
    :try_start_a2
    iget-object v1, p0, mServedView:Landroid/view/View;

    if-ne v1, v13, :cond_aa

    iget-boolean v1, p0, mServedConnecting:Z

    if-nez v1, :cond_b0

    .line 1568
    :cond_aa
    const/4 v1, 0x0

    monitor-exit v14

    goto :goto_30

    .line 1655
    :catchall_ad
    move-exception v1

    monitor-exit v14
    :try_end_af
    .catchall {:try_start_a2 .. :try_end_af} :catchall_ad

    throw v1

    .line 1573
    :cond_b0
    :try_start_b0
    iget-object v1, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_ba

    .line 1574
    move/from16 v0, p2

    or-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    .line 1578
    :cond_ba
    iput-object v7, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1579
    const/4 v1, 0x0

    iput-boolean v1, p0, mServedConnecting:Z

    .line 1581
    invoke-direct {p0}, notifyInputConnectionFinished()V

    .line 1582
    iput-object v10, p0, mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1584
    if-eqz v10, :cond_13f

    .line 1585
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v1, p0, mCursorSelStart:I

    .line 1586
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v1, p0, mCursorSelEnd:I

    .line 1587
    const/4 v1, -0x1

    iput v1, p0, mCursorCandStart:I

    .line 1588
    const/4 v1, -0x1

    iput v1, p0, mCursorCandEnd:I

    .line 1589
    iget-object v1, p0, mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1590
    const/4 v1, 0x0

    iput-object v1, p0, mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 1591
    new-instance v8, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v8, v1, v10, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    .line 1595
    .local v8, "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :goto_e5
    iget-object v1, p0, mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v1, :cond_ee

    .line 1596
    iget-object v1, p0, mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    .line 1598
    :cond_ee
    iput-object v8, p0, mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :try_end_f0
    .catchall {:try_start_b0 .. :try_end_f0} :catchall_ad

    .line 1605
    if-eqz p1, :cond_141

    .line 1607
    :try_start_f2
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_fd

    .line 1608
    const-string v1, "InputMethodManager"

    const-string v2, "[IMM] startInputInner - mService.windowGainedFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_fd
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v11

    .line 1614
    .local v11, "res":Lcom/android/internal/view/InputBindResult;
    iput-object v7, p0, mTba:Landroid/view/inputmethod/EditorInfo;

    .line 1615
    iput-object v8, p0, mServedContext:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    .line 1627
    :goto_111
    if-eqz v11, :cond_12c

    .line 1628
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v1, :cond_15a

    .line 1629
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p0, v1}, setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 1630
    iget v1, v11, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v1, p0, mBindSequence:I

    .line 1631
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1632
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v1, p0, mCurId:Ljava/lang/String;

    .line 1633
    iget v1, v11, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    iput v1, p0, mNextUserActionNotificationSequenceNumber:I

    .line 1646
    :cond_12c
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_13b

    iget-object v1, p0, mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_132} :catch_171
    .catchall {:try_start_f2 .. :try_end_132} :catchall_ad

    if-eqz v1, :cond_13b

    .line 1648
    :try_start_134
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_13b} :catch_18d
    .catchall {:try_start_134 .. :try_end_13b} :catchall_ad

    .line 1655
    .end local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_13b
    :goto_13b
    :try_start_13b
    monitor-exit v14
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_ad

    .line 1657
    const/4 v1, 0x1

    goto/16 :goto_30

    .line 1593
    .end local v8    # "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :cond_13f
    const/4 v8, 0x0

    .restart local v8    # "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    goto :goto_e5

    .line 1618
    :cond_141
    :try_start_141
    sget-boolean v1, DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_14c

    .line 1619
    const-string v1, "InputMethodManager"

    const-string v2, "[IMM] startInputInner - mService.startInput. windowGainingFocus is null case"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_14c
    invoke-virtual {p0}, undoMinimizeSoftInput()V

    .line 1623
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move/from16 v0, p2

    invoke-interface {v1, v2, v8, v7, v0}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v11

    .restart local v11    # "res":Lcom/android/internal/view/InputBindResult;
    goto :goto_111

    .line 1636
    :cond_15a
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_169

    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v2, p0, mCurChannel:Landroid/view/InputChannel;

    if-eq v1, v2, :cond_169

    .line 1637
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1639
    :cond_169
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_16b
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_16b} :catch_171
    .catchall {:try_start_141 .. :try_end_16b} :catchall_ad

    if-nez v1, :cond_12c

    .line 1642
    const/4 v1, 0x1

    :try_start_16e
    monitor-exit v14

    goto/16 :goto_30

    .line 1652
    .end local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_171
    move-exception v9

    .line 1653
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18c
    .catchall {:try_start_16e .. :try_end_18c} :catchall_ad

    goto :goto_13b

    .line 1649
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_18d
    move-exception v1

    goto :goto_13b
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "imeToken"    # Landroid/os/IBinder;

    .prologue
    .line 2700
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2702
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result v1

    :try_start_9
    monitor-exit v2

    .line 2705
    :goto_a
    return v1

    .line 2703
    :catch_b
    move-exception v0

    .line 2704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2705
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 2707
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 8
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .prologue
    .line 2721
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2723
    :try_start_3
    iget-object v1, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result v1

    :try_start_9
    monitor-exit v2

    .line 2726
    :goto_a
    return v1

    .line 2724
    :catch_b
    move-exception v0

    .line 2725
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2726
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_a

    .line 2728
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public toggleSoftInput(II)V
    .registers 5
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 1420
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_15

    .line 1428
    :try_start_4
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_10

    .line 1429
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "toggleSoftInput(I,I)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_10
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 1436
    :cond_15
    :goto_15
    return-void

    .line 1433
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I

    .prologue
    .line 1378
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1379
    :try_start_3
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_11

    .line 1380
    :cond_f
    monitor-exit v1

    .line 1399
    :goto_10
    return-void

    .line 1382
    :cond_11
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    if-eqz v0, :cond_26

    .line 1390
    :try_start_15
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_21

    .line 1391
    const-string v0, "InputMethodManager"

    const-string/jumbo v2, "toggleSoftInputFromWindow(IBinder, I,I)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_21
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_26} :catch_2b
    .catchall {:try_start_15 .. :try_end_26} :catchall_28

    .line 1398
    :cond_26
    :goto_26
    :try_start_26
    monitor-exit v1

    goto :goto_10

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw v0

    .line 1395
    :catch_2b
    move-exception v0

    goto :goto_26
.end method

.method public undoMinimizeSoftInput()V
    .registers 3

    .prologue
    .line 1314
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1316
    :try_start_3
    iget-object v0, p0, mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->undoMinimizeSoftInput()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 1319
    :goto_8
    :try_start_8
    monitor-exit v1

    .line 1320
    return-void

    .line 1319
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    throw v0

    .line 1317
    :catch_d
    move-exception v0

    goto :goto_8
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p0}, checkFocus()V

    .line 2095
    iget-object v2, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2096
    :try_start_6
    iget-object v1, p0, mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_16

    iget-object v1, p0, mServedView:Landroid/view/View;

    if-eqz v1, :cond_1e

    iget-object v1, p0, mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_16
    iget-object v1, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1e

    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_20

    .line 2099
    :cond_1e
    monitor-exit v2

    .line 2115
    :goto_1f
    return-void

    .line 2102
    :cond_20
    iget-object v1, p0, mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2103
    iget-object v1, p0, mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_3f

    move-result v1

    if-nez v1, :cond_3d

    .line 2108
    :try_start_2f
    iget-object v1, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 2109
    iget-object v1, p0, mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3d} :catch_42
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3f

    .line 2114
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v2

    goto :goto_1f

    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v1

    .line 2110
    :catch_42
    move-exception v0

    .line 2111
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_43
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_3f

    goto :goto_3d
.end method

.method public updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    .line 2122
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2156
    :cond_4
    :goto_4
    return-void

    .line 2125
    :cond_5
    invoke-virtual {p0}, checkFocus()V

    .line 2126
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 2127
    :try_start_b
    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1b

    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eqz v2, :cond_23

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_1b
    iget-object v2, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_23

    iget-object v2, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_28

    .line 2130
    :cond_23
    monitor-exit v3

    goto :goto_4

    .line 2155
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2

    .line 2134
    :cond_28
    :try_start_28
    iget v2, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3b

    const/4 v1, 0x1

    .line 2136
    .local v1, "isImmediate":Z
    :goto_2f
    if-nez v1, :cond_3d

    iget-object v2, p0, mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2143
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_25

    goto :goto_4

    .line 2134
    .end local v1    # "isImmediate":Z
    :cond_3b
    const/4 v1, 0x0

    goto :goto_2f

    .line 2147
    .restart local v1    # "isImmediate":Z
    :cond_3d
    :try_start_3d
    iget-object v2, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2}, Lcom/android/internal/view/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 2148
    iput-object p2, p0, mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 2150
    iget v2, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_4c
    .catchall {:try_start_3d .. :try_end_4a} :catchall_25

    .line 2155
    :goto_4a
    :try_start_4a
    monitor-exit v3

    goto :goto_4

    .line 2152
    :catch_4c
    move-exception v0

    .line 2153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_25

    goto :goto_4a
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1017
    invoke-virtual {p0}, checkFocus()V

    .line 1018
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1019
    :try_start_6
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_18

    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1021
    :cond_16
    monitor-exit v1

    .line 1031
    :goto_17
    return-void

    .line 1024
    :cond_18
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_23

    if-eqz v0, :cond_21

    .line 1026
    :try_start_1c
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_26
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    .line 1030
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v1

    goto :goto_17

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v0

    .line 1027
    :catch_26
    move-exception v0

    goto :goto_21
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .prologue
    .line 1995
    invoke-virtual {p0}, checkFocus()V

    .line 1996
    iget-object v8, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1997
    :try_start_6
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_16

    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_16
    iget-object v0, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1e

    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v0, :cond_20

    .line 2000
    :cond_1e
    monitor-exit v8

    .line 2026
    :goto_1f
    return-void

    .line 2003
    :cond_20
    iget v0, p0, mCursorSelStart:I

    if-ne v0, p2, :cond_30

    iget v0, p0, mCursorSelEnd:I

    if-ne v0, p3, :cond_30

    iget v0, p0, mCursorCandStart:I

    if-ne v0, p4, :cond_30

    iget v0, p0, mCursorCandEnd:I
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_47

    if-eq v0, p5, :cond_45

    .line 2010
    :cond_30
    :try_start_30
    iget v1, p0, mCursorSelStart:I

    .line 2011
    .local v1, "oldSelStart":I
    iget v2, p0, mCursorSelEnd:I

    .line 2015
    .local v2, "oldSelEnd":I
    iput p2, p0, mCursorSelStart:I

    .line 2016
    iput p3, p0, mCursorSelEnd:I

    .line 2017
    iput p4, p0, mCursorCandStart:I

    .line 2018
    iput p5, p0, mCursorCandEnd:I

    .line 2019
    iget-object v0, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_45} :catch_4a
    .catchall {:try_start_30 .. :try_end_45} :catchall_47

    .line 2025
    .end local v1    # "oldSelStart":I
    .end local v2    # "oldSelEnd":I
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v8

    goto :goto_1f

    :catchall_47
    move-exception v0

    monitor-exit v8
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v0

    .line 2021
    :catch_4a
    move-exception v7

    .line 2022
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4b
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_47

    goto :goto_45
.end method

.method public viewClicked(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2032
    iget-object v2, p0, mServedView:Landroid/view/View;

    iget-object v3, p0, mNextServedView:Landroid/view/View;

    if-eq v2, v3, :cond_27

    const/4 v1, 0x1

    .line 2033
    .local v1, "focusChanged":Z
    :goto_7
    invoke-virtual {p0}, checkFocus()V

    .line 2034
    iget-object v3, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 2035
    :try_start_d
    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1d

    iget-object v2, p0, mServedView:Landroid/view/View;

    if-eqz v2, :cond_25

    iget-object v2, p0, mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_1d
    iget-object v2, p0, mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_25

    iget-object v2, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_29

    .line 2038
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_30

    .line 2047
    :goto_26
    return-void

    .line 2032
    .end local v1    # "focusChanged":Z
    :cond_27
    const/4 v1, 0x0

    goto :goto_7

    .line 2042
    .restart local v1    # "focusChanged":Z
    :cond_29
    :try_start_29
    iget-object v2, p0, mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_33
    .catchall {:try_start_29 .. :try_end_2e} :catchall_30

    .line 2046
    :goto_2e
    :try_start_2e
    monitor-exit v3

    goto :goto_26

    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v2

    .line 2043
    :catch_33
    move-exception v0

    .line 2044
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_30

    goto :goto_2e
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "appWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1666
    invoke-virtual {p0}, checkFocus()V

    .line 1667
    iget-object v1, p0, mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1668
    :try_start_6
    iget-object v0, p0, mServedView:Landroid/view/View;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    iget-object v0, p0, mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_23

    .line 1671
    sget-boolean v0, DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_20

    .line 1672
    const-string v0, "InputMethodManager"

    const-string/jumbo v2, "windowDismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_20
    invoke-virtual {p0}, finishInputLocked()V

    .line 1676
    :cond_23
    monitor-exit v1

    .line 1677
    return-void

    .line 1676
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v0
.end method
