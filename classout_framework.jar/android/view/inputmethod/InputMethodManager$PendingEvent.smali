.class final Landroid/view/inputmethod/InputMethodManager$PendingEvent;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

.field public mEvent:Landroid/view/InputEvent;

.field public mHandled:Z

.field public mHandler:Landroid/os/Handler;

.field public mInputMethodId:Ljava/lang/String;

.field public mToken:Ljava/lang/Object;

.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2

    .prologue
    .line 2858
    iput-object p1, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "x1"    # Landroid/view/inputmethod/InputMethodManager$1;

    .prologue
    .line 2858
    invoke-direct {p0, p1}, <init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2867
    iput-object v0, p0, mEvent:Landroid/view/InputEvent;

    .line 2868
    iput-object v0, p0, mToken:Ljava/lang/Object;

    .line 2869
    iput-object v0, p0, mInputMethodId:Ljava/lang/String;

    .line 2870
    iput-object v0, p0, mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 2871
    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 2872
    const/4 v0, 0x0

    iput-boolean v0, p0, mHandled:Z

    .line 2873
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 2877
    iget-object v0, p0, mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    iget-object v1, p0, mToken:Ljava/lang/Object;

    iget-boolean v2, p0, mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 2879
    iget-object v0, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2880
    :try_start_e
    iget-object v0, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    # invokes: Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->access$400(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 2881
    monitor-exit v1

    .line 2882
    return-void

    .line 2881
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method
