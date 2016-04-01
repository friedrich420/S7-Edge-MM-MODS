.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .prologue
    .line 3893
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3896
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5e

    .line 3962
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    .line 3898
    :sswitch_a
    const-string v0, "MSG_INVALIDATE"

    goto :goto_9

    .line 3900
    :sswitch_d
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_9

    .line 3902
    :sswitch_10
    const-string v0, "MSG_DIE"

    goto :goto_9

    .line 3904
    :sswitch_13
    const-string v0, "MSG_RESIZED"

    goto :goto_9

    .line 3906
    :sswitch_16
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_9

    .line 3908
    :sswitch_19
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_9

    .line 3910
    :sswitch_1c
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_9

    .line 3912
    :sswitch_1f
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_9

    .line 3914
    :sswitch_22
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_9

    .line 3916
    :sswitch_25
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_9

    .line 3918
    :sswitch_28
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_9

    .line 3920
    :sswitch_2b
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_9

    .line 3922
    :sswitch_2e
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_9

    .line 3924
    :sswitch_31
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_9

    .line 3926
    :sswitch_34
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_9

    .line 3928
    :sswitch_37
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_9

    .line 3930
    :sswitch_3a
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_9

    .line 3932
    :sswitch_3d
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_9

    .line 3934
    :sswitch_40
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_9

    .line 3936
    :sswitch_43
    const-string v0, "MSG_DISPATCH_WINDOW_ANIMATION_STARTED"

    goto :goto_9

    .line 3938
    :sswitch_46
    const-string v0, "MSG_DISPATCH_WINDOW_ANIMATION_STOPPED"

    goto :goto_9

    .line 3940
    :sswitch_49
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_9

    .line 3942
    :sswitch_4c
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    goto :goto_9

    .line 3944
    :sswitch_4f
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    goto :goto_9

    .line 3947
    :sswitch_52
    const-string v0, "MSG_DISPATCH_COVER_STATE"

    goto :goto_9

    .line 3951
    :sswitch_55
    const-string v0, "MSG_ATTACHED_DISPLAY_CHANGED"

    goto :goto_9

    .line 3955
    :sswitch_58
    const-string v0, "MSG_DISPATCH_SURFACE_DESTROY_DEFERRED"

    goto :goto_9

    .line 3959
    :sswitch_5b
    const-string v0, "MSG_DISPATCH_MULTI_WINDOW_STATE_CHANGED"

    goto :goto_9

    .line 3896
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_d
        0x3 -> :sswitch_10
        0x4 -> :sswitch_13
        0x5 -> :sswitch_16
        0x6 -> :sswitch_19
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_1f
        0x9 -> :sswitch_22
        0xb -> :sswitch_25
        0xc -> :sswitch_28
        0xd -> :sswitch_2b
        0xe -> :sswitch_2e
        0xf -> :sswitch_31
        0x10 -> :sswitch_34
        0x11 -> :sswitch_37
        0x12 -> :sswitch_3a
        0x13 -> :sswitch_3d
        0x15 -> :sswitch_40
        0x17 -> :sswitch_49
        0x18 -> :sswitch_4c
        0x19 -> :sswitch_4f
        0x1a -> :sswitch_46
        0x1b -> :sswitch_43
        0x1d -> :sswitch_52
        0x1e -> :sswitch_58
        0x1f -> :sswitch_5b
        0x3e8 -> :sswitch_55
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 40
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3967
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_7bc

    .line 4336
    :cond_7
    :goto_7
    return-void

    .line 3969
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_7

    .line 3972
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3973
    .local v27, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object/from16 v0, v27

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move-object/from16 v0, v27

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move-object/from16 v0, v27

    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 3974
    invoke-virtual/range {v27 .. v27}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_7

    .line 3977
    .end local v27    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3978
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_7

    .line 3981
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    :goto_4f
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_7

    :cond_53
    const/4 v2, 0x0

    goto :goto_4f

    .line 3984
    :sswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_7

    .line 3988
    :sswitch_5d
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/os/SomeArgs;

    .line 3989
    .local v15, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-nez v2, :cond_105

    .line 3997
    # getter for: Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 3998
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": frame & inset does not changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    :cond_dd
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_7

    .line 4001
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v30

    .line 4002
    .local v30, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_7

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 4020
    .end local v15    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v30    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_105
    :sswitch_105
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_7

    .line 4022
    const/16 v31, 0x0

    .line 4024
    .local v31, "needResizeAnimation":Z
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/os/SomeArgs;

    .line 4025
    .restart local v15    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/res/Configuration;

    .line 4026
    .local v17, "config":Landroid/content/res/Configuration;
    if-nez v17, :cond_200

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 4027
    .local v14, "_orientation":I
    :goto_12d
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ci="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    if-eqz v17, :cond_206

    .line 4030
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 4047
    :cond_171
    :goto_171
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4048
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4049
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4050
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4051
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4052
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4053
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mCocktailBar:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4055
    invoke-virtual {v15}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4057
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1dd

    .line 4058
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 4061
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1ee

    .line 4062
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/View;)V

    .line 4066
    :cond_1ee
    if-eqz v31, :cond_1f7

    .line 4067
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->startContentResizeAnimation()V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)V

    .line 4071
    :cond_1f7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_7

    .line 4026
    .end local v14    # "_orientation":I
    :cond_200
    move-object/from16 v0, v17

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    goto/16 :goto_12d

    .line 4032
    .restart local v14    # "_orientation":I
    :cond_206
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_171

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_171

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_171

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_171

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 4038
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-nez v2, :cond_255

    .line 4039
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->initContentResizeAnimator()V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;)V

    .line 4041
    :cond_255
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->acquireContentResizeAnimationBooster()V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)V

    .line 4042
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4043
    const/16 v31, 0x1

    goto/16 :goto_171

    .line 4075
    .end local v14    # "_orientation":I
    .end local v15    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v17    # "config":Landroid/content/res/Configuration;
    .end local v31    # "needResizeAnimation":Z
    :sswitch_271
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_7

    .line 4076
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v37

    .line 4077
    .local v37, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 4078
    .local v24, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 4079
    .local v28, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    .line 4080
    .local v36, "t":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v28

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 4081
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v28, v37

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 4082
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v36

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 4083
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v36, v24

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 4085
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_2d2

    .line 4086
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/View;)V

    .line 4088
    :cond_2d2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_7

    .line 4093
    .end local v24    # "h":I
    .end local v28    # "l":I
    .end local v36    # "t":I
    .end local v37    # "w":I
    :sswitch_2db
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 4095
    .local v19, "displayId":I
    sget-boolean v2, Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;->DEBUG_MULTIDISPLAY:Z

    if-eqz v2, :cond_327

    .line 4096
    const-string v3, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_ATTACHED_DISPLAY_CHANGED : mView("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_3c0

    const-string v2, "ADDED"

    :goto_2fc
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") Attached display has changed from d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    :cond_327
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_7

    .line 4103
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v18

    .line 4104
    .local v18, "display":Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_7

    if-eqz v18, :cond_7

    .line 4105
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v18

    iput-object v0, v2, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 4106
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View$AttachInfo;->setDisplay(Landroid/view/Display;)V

    .line 4107
    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getState()I

    move-result v32

    .line 4108
    .local v32, "newDisplayState":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v32

    iput v0, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 4109
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchAttachedDisplayChanged(I)V

    .line 4110
    invoke-static {}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->getInstance()Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->createDisplay(Landroid/content/Context;Landroid/view/Display;)V

    .line 4112
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 4113
    sget-boolean v2, Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;->DEBUG_MULTIDISPLAY:Z

    if-eqz v2, :cond_3b7

    .line 4114
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_ATTACHED_DISPLAY_CHANGED : scheduleTraversals  (newDisplayState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    :cond_3b7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_7

    .line 4096
    .end local v18    # "display":Landroid/view/Display;
    .end local v32    # "newDisplayState":I
    :cond_3c0
    const-string v2, "NOT-ADDED"

    goto/16 :goto_2fc

    .line 4124
    .end local v19    # "displayId":I
    :sswitch_3c4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_5db

    .line 4125
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_5e4

    const/16 v25, 0x1

    .line 4127
    .local v25, "hasWindowFocus":Z
    :goto_3d4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    move/from16 v0, v25

    if-eq v0, v2, :cond_5e8

    const/16 v22, 0x1

    .line 4129
    .local v22, "focusChanged":Z
    :goto_3e2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v25

    iput-boolean v0, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 4131
    # getter for: Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v2

    if-eqz v2, :cond_40e

    .line 4132
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_WINDOW_FOCUS_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :cond_40e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v25

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;Z)V

    .line 4137
    if-eqz v25, :cond_483

    .line 4138
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_5ec

    const/16 v26, 0x1

    .line 4139
    .local v26, "inTouchMode":Z
    :goto_421
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v26

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;Z)Z

    .line 4142
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_435

    .line 4143
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->twUpdateToolBox()V

    .line 4146
    :cond_435
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_483

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_483

    .line 4147
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 4149
    :try_start_452
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    .line 4150
    .local v29, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v29, :cond_5f0

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4151
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_460
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget v3, v3, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_483
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_452 .. :try_end_483} :catch_5f3

    .line 4172
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v26    # "inTouchMode":Z
    .end local v29    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_483
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_4cf

    .line 4173
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    if-eqz v2, :cond_4cf

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4cf

    .line 4174
    if-eqz v25, :cond_63d

    const/16 v33, 0x8

    .line 4175
    .local v33, "option":I
    :goto_49b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-result-object v2

    if-nez v2, :cond_4b7

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl;->access$1102(Landroid/view/ViewRootImpl;Lcom/samsung/android/toolbox/TwToolBoxManager;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 4176
    :cond_4b7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move/from16 v0, v33

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxManager;->sendMessage(Ljava/lang/String;II)V

    .line 4180
    .end local v33    # "option":I
    :cond_4cf
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v3

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 4183
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 4184
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_504

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_504

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_504

    .line 4185
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 4187
    :cond_504
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_52f

    .line 4188
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 4192
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 4193
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 4199
    :cond_52f
    if-eqz v25, :cond_5ba

    .line 4200
    if-eqz v8, :cond_58d

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_58d

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_58d

    .line 4201
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4204
    .local v11, "mAdjustSoftInputMode":I
    const/16 v16, 0x6

    .line 4206
    .local v16, "checkSoftInputMode":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 4207
    .local v23, "focusedAppChanged":Z
    if-eqz v23, :cond_569

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v2, :cond_569

    and-int/lit8 v2, v11, 0x6

    if-eqz v2, :cond_569

    .line 4208
    or-int/lit16 v11, v11, 0x100

    .line 4212
    :cond_569
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v2, :cond_641

    const/4 v12, 0x1

    :goto_582
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 4218
    .end local v11    # "mAdjustSoftInputMode":I
    .end local v16    # "checkSoftInputMode":I
    .end local v23    # "focusedAppChanged":Z
    :cond_58d
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4220
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_5b3

    .line 4221
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4225
    :cond_5b3
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 4228
    :cond_5ba
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_5db

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5db

    .line 4229
    if-eqz v25, :cond_5db

    .line 4230
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4235
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "focusChanged":Z
    .end local v25    # "hasWindowFocus":Z
    :cond_5db
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_7

    .line 4125
    :cond_5e4
    const/16 v25, 0x0

    goto/16 :goto_3d4

    .line 4127
    .restart local v25    # "hasWindowFocus":Z
    :cond_5e8
    const/16 v22, 0x0

    goto/16 :goto_3e2

    .line 4138
    .restart local v22    # "focusChanged":Z
    :cond_5ec
    const/16 v26, 0x0

    goto/16 :goto_421

    .line 4150
    .restart local v26    # "inTouchMode":Z
    .restart local v29    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_5f0
    const/4 v7, 0x0

    goto/16 :goto_460

    .line 4153
    .end local v29    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_5f3
    move-exception v20

    .line 4154
    .local v20, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ViewRootImpl"

    const-string v3, "OutOfResourcesException locking surface"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4156
    :try_start_5fd
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v2

    if-nez v2, :cond_622

    .line 4157
    const-string v2, "ViewRootImpl"

    const-string v3, "No processes killed for memory; killing self"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    const-string v2, "-k -t -z -d -o /data/log/dumpstate_surfaceoom"

    invoke-static {v2}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 4161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_622
    .catch Landroid/os/RemoteException; {:try_start_5fd .. :try_end_622} :catch_7b9

    .line 4166
    :cond_622
    :goto_622
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 4174
    .end local v20    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v26    # "inTouchMode":Z
    :cond_63d
    const/16 v33, 0x10

    goto/16 :goto_49b

    .line 4212
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v11    # "mAdjustSoftInputMode":I
    .restart local v16    # "checkSoftInputMode":I
    .restart local v23    # "focusedAppChanged":Z
    :cond_641
    const/4 v12, 0x0

    goto/16 :goto_582

    .line 4238
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v11    # "mAdjustSoftInputMode":I
    .end local v16    # "checkSoftInputMode":I
    .end local v22    # "focusChanged":Z
    .end local v23    # "focusedAppChanged":Z
    .end local v25    # "hasWindowFocus":Z
    :sswitch_644
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_7

    .line 4241
    :sswitch_64d
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/os/SomeArgs;

    .line 4242
    .restart local v15    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/InputEvent;

    .line 4243
    .local v21, "event":Landroid/view/InputEvent;
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/view/InputEventReceiver;

    .line 4244
    .local v34, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 4245
    invoke-virtual {v15}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .line 4248
    .end local v15    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v21    # "event":Landroid/view/InputEvent;
    .end local v34    # "receiver":Landroid/view/InputEventReceiver;
    :sswitch_671
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/InputEvent;

    .line 4249
    .restart local v21    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_7

    .line 4255
    .end local v21    # "event":Landroid/view/InputEvent;
    :sswitch_688
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/KeyEvent;

    .line 4256
    .local v21, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v21 .. v21}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6a4

    .line 4260
    invoke-virtual/range {v21 .. v21}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v21

    .line 4263
    :cond_6a4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_7

    .line 4266
    .end local v21    # "event":Landroid/view/KeyEvent;
    :sswitch_6b2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 4267
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_7

    .line 4268
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v8, v2}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_7

    .line 4272
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_6c3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 4273
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_6cc

    .line 4274
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4276
    :cond_6cc
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_7

    .line 4279
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_6d5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 4280
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4285
    :sswitch_6ee
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/DragEvent;

    .line 4286
    .local v21, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v2, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 4287
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v21

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_7

    .line 4290
    .end local v21    # "event":Landroid/view/DragEvent;
    :sswitch_70b
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    .line 4291
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_7

    .line 4294
    :sswitch_721
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/res/Configuration;

    .line 4295
    .restart local v17    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_73f

    .line 4296
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 4298
    :cond_73f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_7

    .line 4301
    .end local v17    # "config":Landroid/content/res/Configuration;
    :sswitch_74b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_7

    .line 4304
    :sswitch_756
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 4305
    .local v35, "remainingFrameCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStarted(I)V

    goto/16 :goto_7

    .line 4308
    .end local v35    # "remainingFrameCount":I
    :sswitch_767
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    goto/16 :goto_7

    .line 4311
    :sswitch_770
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 4312
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_7

    .line 4318
    :sswitch_787
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_798

    const/4 v2, 0x1

    :goto_793
    # invokes: Landroid/view/ViewRootImpl;->handleDispatchCoverStateChanged(Z)V
    invoke-static {v3, v2}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_7

    :cond_798
    const/4 v2, 0x0

    goto :goto_793

    .line 4323
    :sswitch_79a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_7

    .line 4327
    :sswitch_7a3
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->handleDispatchSurfaceDestroyDeferred()V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_7

    .line 4332
    :sswitch_7ac
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/view/ViewRootImpl;->handleDispatchMultiWindowStateChanged(I)V
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;I)V

    goto/16 :goto_7

    .line 4163
    .restart local v20    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v22    # "focusChanged":Z
    .restart local v25    # "hasWindowFocus":Z
    .restart local v26    # "inTouchMode":Z
    :catch_7b9
    move-exception v2

    goto/16 :goto_622

    .line 3967
    :sswitch_data_7bc
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_12
        0x3 -> :sswitch_644
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_105
        0x6 -> :sswitch_3c4
        0x7 -> :sswitch_64d
        0x8 -> :sswitch_44
        0x9 -> :sswitch_55
        0xb -> :sswitch_688
        0xc -> :sswitch_6b2
        0xd -> :sswitch_6c3
        0xe -> :sswitch_6d5
        0xf -> :sswitch_6ee
        0x10 -> :sswitch_6ee
        0x11 -> :sswitch_70b
        0x12 -> :sswitch_721
        0x13 -> :sswitch_35
        0x15 -> :sswitch_74b
        0x16 -> :sswitch_770
        0x17 -> :sswitch_271
        0x18 -> :sswitch_671
        0x19 -> :sswitch_79a
        0x1a -> :sswitch_767
        0x1b -> :sswitch_756
        0x1d -> :sswitch_787
        0x1e -> :sswitch_7a3
        0x1f -> :sswitch_7ac
        0x3e8 -> :sswitch_2db
    .end sparse-switch
.end method
