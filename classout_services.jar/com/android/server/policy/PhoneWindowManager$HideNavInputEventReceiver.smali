.class final Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 6060
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 6061
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 6062
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6066
    const/4 v4, 0x0

    .line 6068
    .local v4, "handled":Z
    :try_start_1
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_5c

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5c

    .line 6070
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    .line 6071
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5c

    .line 6073
    const/4 v2, 0x0

    .line 6074
    .local v2, "changed":Z
    iget-object v8, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_63

    .line 6089
    :try_start_21
    iget-object v8, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v8, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 6090
    .local v7, "resettingSystemUiFlags":I
    iget-object v8, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v8, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 6092
    .local v3, "forceClearedSystemUiFlags":I
    or-int/lit8 v8, v7, 0x2

    or-int/lit8 v8, v8, 0x1

    or-int/lit8 v6, v8, 0x4

    .line 6096
    .local v6, "newVal":I
    if-eq v7, v6, :cond_36

    .line 6100
    iget-object v8, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput v6, v8, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 6102
    const/4 v2, 0x1

    .line 6107
    :cond_36
    or-int/lit8 v6, v3, 0x2

    .line 6109
    if-eq v3, v6, :cond_4e

    .line 6116
    iget-object v8, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput v6, v8, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 6117
    const/4 v2, 0x1

    .line 6118
    iget-object v8, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/policy/PhoneWindowManager;->access$3800(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    invoke-virtual {v8, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6121
    :cond_4e
    monitor-exit v9
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_60

    .line 6122
    if-eqz v2, :cond_5c

    .line 6123
    :try_start_51
    iget-object v8, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility(I)V
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_63

    .line 6128
    .end local v2    # "changed":Z
    .end local v3    # "forceClearedSystemUiFlags":I
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newVal":I
    .end local v7    # "resettingSystemUiFlags":I
    :cond_5c
    invoke-virtual {p0, p1, v4}, finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 6130
    return-void

    .line 6121
    .restart local v2    # "changed":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_60
    move-exception v8

    :try_start_61
    monitor-exit v9
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw v8
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 6128
    .end local v2    # "changed":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_63
    move-exception v8

    invoke-virtual {p0, p1, v4}, finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v8
.end method
