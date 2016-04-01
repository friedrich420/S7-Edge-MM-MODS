.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field private mIsStartEvent:Z

.field private mStylusButtonDownAtStart:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 5
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1147
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1148
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsStartEvent:Z

    .line 1149
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1153
    const/4 v4, 0x0

    .line 1155
    .local v4, "handled":Z
    :try_start_3
    instance-of v10, p1, Landroid/view/MotionEvent;

    if-eqz v10, :cond_62

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_62

    iget-object v10, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v10, :cond_62

    .line 1158
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    .line 1159
    .local v6, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 1160
    .local v2, "endDrag":Z
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_66

    move v5, v3

    .line 1163
    .local v5, "isStylusButtonDown":Z
    :goto_23
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 1164
    .local v7, "newX":F
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 1165
    .local v8, "newY":F
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_68

    .line 1167
    .local v3, "externalDisplay":Z
    :goto_31
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    .line 1168
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    .line 1171
    iget-boolean v9, p0, mIsStartEvent:Z

    if-eqz v9, :cond_45

    .line 1172
    if-eqz v5, :cond_42

    .line 1175
    const/4 v9, 0x1

    iput-boolean v9, p0, mStylusButtonDownAtStart:Z

    .line 1177
    :cond_42
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsStartEvent:Z

    .line 1180
    :cond_45
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_bc

    .line 1216
    :goto_4c
    :pswitch_4c
    if-eqz v2, :cond_61

    .line 1219
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_82
    .catchall {:try_start_3 .. :try_end_53} :catchall_9f

    .line 1220
    :try_start_53
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 1221
    monitor-exit v10
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_b8

    .line 1222
    const/4 v9, 0x0

    :try_start_5c
    iput-boolean v9, p0, mStylusButtonDownAtStart:Z

    .line 1223
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsStartEvent:Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_82
    .catchall {:try_start_5c .. :try_end_61} :catchall_9f

    .line 1226
    :cond_61
    const/4 v4, 0x1

    .line 1231
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "isStylusButtonDown":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v7    # "newX":F
    .end local v8    # "newY":F
    :cond_62
    invoke-virtual {p0, p1, v4}, finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1233
    :goto_65
    return-void

    .restart local v2    # "endDrag":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    :cond_66
    move v5, v9

    .line 1160
    goto :goto_23

    .restart local v5    # "isStylusButtonDown":Z
    .restart local v7    # "newX":F
    .restart local v8    # "newY":F
    :cond_68
    move v3, v9

    .line 1165
    goto :goto_31

    .line 1188
    .restart local v3    # "externalDisplay":Z
    :pswitch_6a
    :try_start_6a
    iget-boolean v9, p0, mStylusButtonDownAtStart:Z

    if-eqz v9, :cond_8e

    if-nez v5, :cond_8e

    .line 1191
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_75} :catch_82
    .catchall {:try_start_6a .. :try_end_75} :catchall_9f

    .line 1192
    :try_start_75
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v2

    .line 1193
    monitor-exit v10

    goto :goto_4c

    :catchall_7f
    move-exception v9

    monitor-exit v10
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v9
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_82} :catch_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_9f

    .line 1228
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "isStylusButtonDown":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v7    # "newX":F
    .end local v8    # "newY":F
    :catch_82
    move-exception v1

    .line 1229
    .local v1, "e":Ljava/lang/Exception;
    :try_start_83
    const-string v9, "WindowManager"

    const-string v10, "Exception caught by drag handleMotion"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_9f

    .line 1231
    invoke-virtual {p0, p1, v4}, finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_65

    .line 1195
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v3    # "externalDisplay":Z
    .restart local v5    # "isStylusButtonDown":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v7    # "newX":F
    .restart local v8    # "newY":F
    :cond_8e
    :try_start_8e
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_93} :catch_82
    .catchall {:try_start_8e .. :try_end_93} :catchall_9f

    .line 1197
    :try_start_93
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9, v7, v8, v3}, Lcom/android/server/wm/DragState;->notifyMoveLw(FFZ)V

    .line 1198
    monitor-exit v10

    goto :goto_4c

    :catchall_9c
    move-exception v9

    monitor-exit v10
    :try_end_9e
    .catchall {:try_start_93 .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v9
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_9f} :catch_82
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    .line 1231
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "isStylusButtonDown":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v7    # "newX":F
    .end local v8    # "newY":F
    :catchall_9f
    move-exception v9

    invoke-virtual {p0, p1, v4}, finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v9

    .line 1205
    .restart local v2    # "endDrag":Z
    .restart local v3    # "externalDisplay":Z
    .restart local v5    # "isStylusButtonDown":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v7    # "newX":F
    .restart local v8    # "newY":F
    :pswitch_a4
    :try_start_a4
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_82
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_9f

    .line 1206
    :try_start_a9
    iget-object v9, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9, v7, v8, v3}, Lcom/android/server/wm/DragState;->notifyDropLw(FFZ)Z

    move-result v2

    .line 1207
    monitor-exit v10

    goto :goto_4c

    :catchall_b3
    move-exception v9

    monitor-exit v10
    :try_end_b5
    .catchall {:try_start_a9 .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw v9
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b6} :catch_82
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_9f

    .line 1212
    :pswitch_b6
    const/4 v2, 0x1

    goto :goto_4c

    .line 1221
    :catchall_b8
    move-exception v9

    :try_start_b9
    monitor-exit v10
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    :try_start_ba
    throw v9
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bb} :catch_82
    .catchall {:try_start_ba .. :try_end_bb} :catchall_9f

    .line 1180
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_a4
        :pswitch_6a
        :pswitch_b6
    .end packed-switch
.end method
