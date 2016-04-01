.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final DRAW_STACK_FOCUS_CHANGE:I = 0x64

.field public static final DUALSCREEN_ADD_BACK:I = 0xca

.field public static final DUALSCREEN_BACK_TIMEOUT:I = 0xcc

.field public static final DUALSCREEN_REMOVE_BACK:I = 0xcb

.field public static final DUALSCREEN_SEND_NEW_IME_CONFIGURATION:I = 0xcd

.field public static final DUALSCREEN_TRANSITION_TIMEOUT:I = 0xc9

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final MULTIWINDOW_GESTURE_HELP_SHOW:I = 0x66

.field public static final MULTIWINDOW_STYLE_CHANGING_TIMEOUT:I = 0x68

.field public static final MULTIWINDOW_TRANSACTION_TIMEOUT:I = 0x65

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_CASCADE_STACK_ROTATED:I = 0x6b

.field public static final NOTIFY_MULTIWINDOW_MINIMIZED:I = 0x67

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SEND_NOTIFY_DISPLAY_FREEZE_STOPPED:I = 0x6a

.field public static final SET_COVER_SWITCH_STATE:I = 0x69

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final TAP_OUTSIDE_STACK:I = 0x1f

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 13200
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 64
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13272
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_21

    .line 13273
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: entry what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13275
    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_efa

    .line 14228
    :cond_28
    :goto_28
    :sswitch_28
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_34

    .line 14229
    const-string v2, "WindowManager"

    const-string/jumbo v3, "handleMessage: exit"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14231
    :cond_34
    :goto_34
    return-void

    .line 13278
    :sswitch_35
    const/16 v28, 0x0

    .line 13283
    .local v28, "focusedAppChanged":Z
    const/16 v19, 0x0

    .line 13285
    .local v19, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13287
    :try_start_40
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_5e

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_5e

    .line 13289
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    .line 13292
    :cond_5e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    .line 13293
    .local v31, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v34, v0

    .line 13296
    .local v34, "newFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13299
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_84

    .line 13301
    monitor-exit v3

    goto :goto_34

    .line 13330
    .end local v31    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v34    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_81
    move-exception v2

    monitor-exit v3
    :try_end_83
    .catchall {:try_start_40 .. :try_end_83} :catchall_81

    throw v2

    .line 13305
    .restart local v31    # "lastFocus":Lcom/android/server/wm/WindowState;
    .restart local v34    # "newFocus":Lcom/android/server/wm/WindowState;
    :cond_84
    if-eqz v31, :cond_a0

    if-eqz v34, :cond_a0

    :try_start_88
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_a0

    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_a0

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v2, v4, :cond_a0

    .line 13308
    const/16 v28, 0x1

    .line 13312
    :cond_a0
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v34

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 13313
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_d2

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Focus moving from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13315
    :cond_d2
    if-eqz v34, :cond_eb

    if-eqz v31, :cond_eb

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_eb

    .line 13324
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13325
    const/16 v31, 0x0

    .line 13327
    const/16 v28, 0x0

    .line 13330
    :cond_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_88 .. :try_end_ec} :catchall_81

    .line 13346
    if-eqz v19, :cond_f1

    .line 13347
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 13353
    :cond_f1
    if-eqz v34, :cond_158

    .line 13354
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_111

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gaining focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13355
    :cond_111
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZZ)V

    .line 13356
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)V

    .line 13359
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v47

    .line 13360
    .local v47, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v47 .. v47}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_158

    .line 13361
    invoke-virtual/range {v47 .. v47}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v61

    .line 13362
    .local v61, "zoneInfo":I
    new-instance v35, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13363
    .local v35, "notifyFocusIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v35

    move/from16 v1, v61

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13364
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13365
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13371
    .end local v35    # "notifyFocusIntent":Landroid/content/Intent;
    .end local v47    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v61    # "zoneInfo":I
    :cond_158
    if-eqz v31, :cond_186

    .line 13378
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_178

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Losing focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13379
    :cond_178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZZ)V

    .line 13382
    :cond_186
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x3e9

    const/16 v4, 0x65

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 13384
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mbEnableHoveringUI:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 13385
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x2711

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    goto/16 :goto_28

    .line 13394
    .end local v19    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v28    # "focusedAppChanged":Z
    .end local v31    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v34    # "newFocus":Lcom/android/server/wm/WindowState;
    :sswitch_1b1
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13397
    :try_start_1b8
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13400
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 13401
    .local v32, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 13402
    monitor-exit v3
    :try_end_1db
    .catchall {:try_start_1b8 .. :try_end_1db} :catchall_222

    .line 13404
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 13405
    .local v17, "N":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_1e1
    move/from16 v0, v29

    move/from16 v1, v17

    if-ge v0, v1, :cond_28

    .line 13406
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_20b

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Losing delayed focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13408
    :cond_20b
    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 13405
    add-int/lit8 v29, v29, 0x1

    goto :goto_1e1

    .line 13402
    .end local v17    # "N":I
    .end local v29    # "i":I
    .end local v32    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_222
    move-exception v2

    :try_start_223
    monitor-exit v3
    :try_end_224
    .catchall {:try_start_223 .. :try_end_224} :catchall_222

    throw v2

    .line 13413
    :sswitch_225
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13414
    :try_start_22c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    .line 13415
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 13416
    monitor-exit v3

    goto/16 :goto_28

    :catchall_23d
    move-exception v2

    monitor-exit v3
    :try_end_23f
    .catchall {:try_start_22c .. :try_end_23f} :catchall_23d

    throw v2

    .line 13422
    :sswitch_240
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/util/Pair;

    .line 13423
    .local v33, "msgPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AppWindowToken;Ljava/lang/Integer;>;"
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Lcom/android/server/wm/AppWindowToken;

    .line 13424
    .local v60, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v33

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 13427
    .local v15, "displayId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v55

    .line 13428
    .local v55, "userData":Landroid/os/Bundle;
    if-eqz v55, :cond_424

    const-string/jumbo v2, "originalUserId"

    const/4 v3, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 13430
    .local v16, "originalUserId":I
    :goto_26a
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v42, v0

    .line 13432
    .local v42, "sd":Lcom/android/server/wm/StartingData;
    if-eqz v42, :cond_34

    .line 13437
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_29e

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13440
    :cond_29e
    const/16 v56, 0x0

    .line 13443
    .local v56, "view":Landroid/view/View;
    const/4 v14, 0x0

    .line 13444
    .local v14, "resId":I
    const/4 v13, 0x0

    .line 13445
    .local v13, "tempStartingWindow":Landroid/graphics/Bitmap;
    :try_start_2a2
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-nez v2, :cond_2e2

    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_2e2

    .line 13451
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget v0, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v40, v0

    .line 13454
    .local v40, "rotation":I
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Lcom/android/server/wm/CustomStartingWindowData;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 13456
    if-nez v13, :cond_428

    .line 13457
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCustomStartingWindowManager:Lcom/android/server/wm/CustomStartingWindowManager;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/CustomStartingWindowManager;

    move-result-object v2

    if-eqz v2, :cond_2e2

    .line 13458
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCustomStartingWindowManager:Lcom/android/server/wm/CustomStartingWindowManager;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/CustomStartingWindowManager;

    move-result-object v2

    move-object/from16 v0, v60

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    move/from16 v0, v40

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/CustomStartingWindowManager;->getStartingWindowLayoutResId(Lcom/android/server/wm/CustomStartingWindowData;I)I

    move-result v14

    .line 13465
    .end local v40    # "rotation":I
    :cond_2e2
    :goto_2e2
    const-wide/16 v2, 0x20

    const-string v4, "addStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13466
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v60

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v42

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v42

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v42

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v42

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v42

    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    move-object/from16 v0, v42

    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    move-object/from16 v0, v60

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-interface/range {v2 .. v16}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Bitmap;III)Landroid/view/View;

    move-result-object v56

    .line 13473
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_320} :catch_431

    .line 13481
    :goto_320
    if-eqz v56, :cond_4c4

    .line 13482
    const/16 v18, 0x0

    .line 13484
    .local v18, "abort":Z
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13485
    :try_start_32b
    move-object/from16 v0, v60

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_337

    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_4bc

    .line 13488
    :cond_337
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_43d

    .line 13489
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_377

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": removed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13493
    :cond_377
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 13494
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13495
    const/16 v18, 0x1

    .line 13513
    :cond_383
    :goto_383
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_3bf

    if-nez v18, :cond_3bf

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13520
    :cond_3bf
    if-eqz v18, :cond_3ca

    .line 13521
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 13524
    :cond_3ca
    monitor-exit v3
    :try_end_3cb
    .catchall {:try_start_32b .. :try_end_3cb} :catchall_487

    .line 13526
    if-eqz v18, :cond_28

    .line 13528
    const-wide/16 v2, 0x20

    :try_start_3cf
    const-string/jumbo v4, "removeStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13529
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v60

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v56

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    .line 13530
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 13532
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_28

    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_28

    .line 13533
    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13534
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, removeMessages(I)V

    .line 13535
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, sendEmptyMessageDelayed(IJ)Z
    :try_end_416
    .catch Ljava/lang/Exception; {:try_start_3cf .. :try_end_416} :catch_418

    goto/16 :goto_28

    .line 13538
    :catch_418
    move-exception v27

    .line 13539
    .local v27, "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 13428
    .end local v13    # "tempStartingWindow":Landroid/graphics/Bitmap;
    .end local v14    # "resId":I
    .end local v16    # "originalUserId":I
    .end local v18    # "abort":Z
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v42    # "sd":Lcom/android/server/wm/StartingData;
    .end local v56    # "view":Landroid/view/View;
    :cond_424
    const/16 v16, 0x0

    goto/16 :goto_26a

    .line 13461
    .restart local v13    # "tempStartingWindow":Landroid/graphics/Bitmap;
    .restart local v14    # "resId":I
    .restart local v16    # "originalUserId":I
    .restart local v40    # "rotation":I
    .restart local v42    # "sd":Lcom/android/server/wm/StartingData;
    .restart local v56    # "view":Landroid/view/View;
    :cond_428
    :try_start_428
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z
    :try_end_42f
    .catch Ljava/lang/Exception; {:try_start_428 .. :try_end_42f} :catch_431

    goto/16 :goto_2e2

    .line 13477
    .end local v40    # "rotation":I
    :catch_431
    move-exception v27

    .line 13478
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_320

    .line 13498
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v18    # "abort":Z
    :cond_43d
    :try_start_43d
    move-object/from16 v0, v60

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-eqz v2, :cond_48a

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_48a

    .line 13499
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_471

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ensure that the startingView of moved starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13501
    :cond_471
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    move-object/from16 v0, v56

    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 13502
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1102(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_383

    .line 13524
    :catchall_487
    move-exception v2

    monitor-exit v3
    :try_end_489
    .catchall {:try_start_43d .. :try_end_489} :catchall_487

    throw v2

    .line 13504
    :cond_48a
    :try_start_48a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_383

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A view is not assigned to the startingView: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " next starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_383

    .line 13511
    :cond_4bc
    move-object/from16 v0, v56

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_4c2
    .catchall {:try_start_48a .. :try_end_4c2} :catchall_487

    goto/16 :goto_383

    .line 13546
    .end local v18    # "abort":Z
    :cond_4c4
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13547
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    goto/16 :goto_28

    .line 13553
    .end local v13    # "tempStartingWindow":Landroid/graphics/Bitmap;
    .end local v14    # "resId":I
    .end local v15    # "displayId":I
    .end local v16    # "originalUserId":I
    .end local v33    # "msgPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AppWindowToken;Ljava/lang/Integer;>;"
    .end local v42    # "sd":Lcom/android/server/wm/StartingData;
    .end local v55    # "userData":Landroid/os/Bundle;
    .end local v56    # "view":Landroid/view/View;
    .end local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_4d4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Lcom/android/server/wm/AppWindowToken;

    .line 13554
    .restart local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v51, 0x0

    .line 13555
    .local v51, "token":Landroid/os/IBinder;
    const/16 v56, 0x0

    .line 13556
    .restart local v56    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13557
    :try_start_4e7
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_521

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13561
    :cond_521
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_54c

    .line 13562
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v56, v0

    .line 13563
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v51, v0

    .line 13564
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13565
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 13566
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 13567
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 13568
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    .line 13572
    :cond_54c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 13574
    monitor-exit v3
    :try_end_556
    .catchall {:try_start_4e7 .. :try_end_556} :catchall_5ad

    .line 13575
    if-eqz v56, :cond_28

    .line 13577
    const-wide/16 v2, 0x20

    :try_start_55a
    const-string/jumbo v4, "removeStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13578
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v51

    move-object/from16 v1, v56

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    .line 13579
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 13581
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_28

    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_28

    .line 13582
    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13583
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, removeMessages(I)V

    .line 13584
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, sendEmptyMessageDelayed(IJ)Z
    :try_end_59f
    .catch Ljava/lang/Exception; {:try_start_55a .. :try_end_59f} :catch_5a1

    goto/16 :goto_28

    .line 13587
    :catch_5a1
    move-exception v27

    .line 13588
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 13574
    .end local v27    # "e":Ljava/lang/Exception;
    :catchall_5ad
    move-exception v2

    :try_start_5ae
    monitor-exit v3
    :try_end_5af
    .catchall {:try_start_5ae .. :try_end_5af} :catchall_5ad

    throw v2

    .line 13594
    .end local v51    # "token":Landroid/os/IBinder;
    .end local v56    # "view":Landroid/view/View;
    .end local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_5b0
    const/16 v51, 0x0

    .line 13595
    .restart local v51    # "token":Landroid/os/IBinder;
    const/16 v56, 0x0

    .line 13598
    .restart local v56    # "view":Landroid/view/View;
    :cond_5b4
    :goto_5b4
    const/16 v60, 0x0

    .line 13600
    .restart local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13601
    :try_start_5bd
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 13602
    .restart local v17    # "N":I
    if-gtz v17, :cond_5cf

    .line 13603
    monitor-exit v3

    goto/16 :goto_28

    .line 13630
    .end local v17    # "N":I
    :catchall_5cc
    move-exception v2

    monitor-exit v3
    :try_end_5ce
    .catchall {:try_start_5bd .. :try_end_5ce} :catchall_5cc

    throw v2

    .line 13607
    .restart local v17    # "N":I
    :cond_5cf
    :try_start_5cf
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v17, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v60, v0

    .line 13610
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_61a

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13615
    :cond_61a
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_622

    .line 13616
    monitor-exit v3

    goto :goto_5b4

    .line 13619
    :cond_622
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v56, v0

    .line 13620
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v51, v0

    .line 13621
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13622
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 13623
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 13624
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 13625
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    .line 13628
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 13630
    monitor-exit v3
    :try_end_651
    .catchall {:try_start_5cf .. :try_end_651} :catchall_5cc

    .line 13633
    const-wide/16 v2, 0x20

    :try_start_653
    const-string/jumbo v4, "removeStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13634
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v51

    move-object/from16 v1, v56

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    .line 13635
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 13637
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_5b4

    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_5b4

    .line 13638
    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13639
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, removeMessages(I)V

    .line 13640
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, sendEmptyMessageDelayed(IJ)Z
    :try_end_698
    .catch Ljava/lang/Exception; {:try_start_653 .. :try_end_698} :catch_69a

    goto/16 :goto_5b4

    .line 13643
    :catch_69a
    move-exception v27

    .line 13644
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b4

    .line 13650
    .end local v17    # "N":I
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v51    # "token":Landroid/os/IBinder;
    .end local v56    # "view":Landroid/view/View;
    .end local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_6a6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Lcom/android/server/wm/AppWindowToken;

    .line 13652
    .restart local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_6ae
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_6cc

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting drawn in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13654
    :cond_6cc
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_6d3
    .catch Landroid/os/RemoteException; {:try_start_6ae .. :try_end_6d3} :catch_6d5

    goto/16 :goto_28

    .line 13655
    :catch_6d5
    move-exception v2

    goto/16 :goto_28

    .line 13660
    .end local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_6d8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Lcom/android/server/wm/AppWindowToken;

    .line 13662
    .restart local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_734

    const/16 v37, 0x1

    .line 13663
    .local v37, "nowVisible":Z
    :goto_6e8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_737

    const/16 v36, 0x1

    .line 13666
    .local v36, "nowGone":Z
    :goto_6f0
    :try_start_6f0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_726

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting visible in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13670
    :cond_726
    if-eqz v37, :cond_73a

    .line 13671
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_28

    .line 13675
    :catch_731
    move-exception v2

    goto/16 :goto_28

    .line 13662
    .end local v36    # "nowGone":Z
    .end local v37    # "nowVisible":Z
    :cond_734
    const/16 v37, 0x0

    goto :goto_6e8

    .line 13663
    .restart local v37    # "nowVisible":Z
    :cond_737
    const/16 v36, 0x0

    goto :goto_6f0

    .line 13673
    .restart local v36    # "nowGone":Z
    :cond_73a
    move-object/from16 v0, v60

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_741
    .catch Landroid/os/RemoteException; {:try_start_6f0 .. :try_end_741} :catch_731

    goto/16 :goto_28

    .line 13681
    .end local v36    # "nowGone":Z
    .end local v37    # "nowVisible":Z
    .end local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_743
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13682
    :try_start_74a
    const-string v2, "WindowManager"

    const-string v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13683
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1202(Lcom/android/server/wm/WindowManagerService;I)I

    .line 13684
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v59

    .line 13685
    .local v59, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    .line 13686
    .restart local v29    # "i":I
    :goto_765
    if-lez v29, :cond_7af

    .line 13687
    add-int/lit8 v29, v29, -0x1

    .line 13688
    move-object/from16 v0, v59

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/server/wm/WindowState;

    .line 13689
    .local v57, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v57

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_7a8

    .line 13690
    const/4 v2, 0x0

    move-object/from16 v0, v57

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 13691
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    move-object/from16 v0, v57

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 13693
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13696
    :cond_7a8
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    goto :goto_765

    .line 13700
    .end local v29    # "i":I
    .end local v57    # "w":Lcom/android/server/wm/WindowState;
    .end local v59    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_7ac
    move-exception v2

    monitor-exit v3
    :try_end_7ae
    .catchall {:try_start_74a .. :try_end_7ae} :catchall_7ac

    throw v2

    .line 13699
    .restart local v29    # "i":I
    .restart local v59    # "windows":Lcom/android/server/wm/WindowList;
    :cond_7af
    :try_start_7af
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 13700
    monitor-exit v3
    :try_end_7b7
    .catchall {:try_start_7af .. :try_end_7b7} :catchall_7ac

    goto/16 :goto_28

    .line 13705
    .end local v29    # "i":I
    .end local v59    # "windows":Lcom/android/server/wm/WindowList;
    :sswitch_7b9
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13726
    :try_start_7c0
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_7e4

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7e4

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_842

    .line 13728
    :cond_7e4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_832

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** APP TRANSITION TIMEOUT. isTransitionSet()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOpeningApps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mClosingApps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13732
    :cond_832
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 13733
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 13738
    :cond_842
    monitor-exit v3

    goto/16 :goto_28

    :catchall_845
    move-exception v2

    monitor-exit v3
    :try_end_847
    .catchall {:try_start_7c0 .. :try_end_847} :catchall_845

    throw v2

    .line 13743
    :sswitch_848
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 13745
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 13748
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_28

    .line 13754
    :sswitch_88b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13757
    :try_start_892
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_8a4

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_8b3

    .line 13760
    :cond_8a4
    const/16 v2, 0xf

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, sendEmptyMessageDelayed(IJ)Z

    .line 13761
    monitor-exit v3

    goto/16 :goto_34

    .line 13768
    :catchall_8b0
    move-exception v2

    monitor-exit v3
    :try_end_8b2
    .catchall {:try_start_892 .. :try_end_8b2} :catchall_8b0

    throw v2

    .line 13765
    :cond_8b3
    :try_start_8b3
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_8be

    .line 13766
    monitor-exit v3

    goto/16 :goto_34

    .line 13768
    :cond_8be
    monitor-exit v3
    :try_end_8bf
    .catchall {:try_start_8b3 .. :try_end_8bf} :catchall_8b0

    .line 13769
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_28

    .line 13774
    :sswitch_8c8
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_28

    .line 13779
    :sswitch_8d1
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13780
    :try_start_8d8
    const-string v2, "WindowManager"

    const-string v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13781
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1202(Lcom/android/server/wm/WindowManagerService;I)I

    .line 13782
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v38

    .line 13783
    .local v38, "numStacks":I
    const/16 v46, 0x0

    .local v46, "stackNdx":I
    :goto_8f3
    move/from16 v0, v46

    move/from16 v1, v38

    if-ge v0, v1, :cond_969

    .line 13784
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/wm/TaskStack;

    .line 13785
    .local v44, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v49

    .line 13786
    .local v49, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v48, v2, -0x1

    .local v48, "taskNdx":I
    :goto_911
    if-ltz v48, :cond_966

    .line 13787
    move-object/from16 v0, v49

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v53, v0

    .line 13788
    .local v53, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v52, v2, -0x1

    .local v52, "tokenNdx":I
    :goto_927
    if-ltz v52, :cond_963

    .line 13789
    move-object/from16 v0, v53

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/wm/AppWindowToken;

    .line 13790
    .local v50, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v50

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_960

    .line 13791
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13792
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 13788
    :cond_960
    add-int/lit8 v52, v52, -0x1

    goto :goto_927

    .line 13786
    .end local v50    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_963
    add-int/lit8 v48, v48, -0x1

    goto :goto_911

    .line 13783
    .end local v52    # "tokenNdx":I
    .end local v53    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_966
    add-int/lit8 v46, v46, 0x1

    goto :goto_8f3

    .line 13797
    .end local v44    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v48    # "taskNdx":I
    .end local v49    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_969
    monitor-exit v3

    goto/16 :goto_28

    .end local v38    # "numStacks":I
    .end local v46    # "stackNdx":I
    :catchall_96c
    move-exception v2

    monitor-exit v3
    :try_end_96e
    .catchall {:try_start_8d8 .. :try_end_96e} :catchall_96c

    throw v2

    .line 13802
    :sswitch_96f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13803
    :try_start_976
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_994

    .line 13804
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 13805
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "client-timeout"

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 13806
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)V

    .line 13808
    :cond_994
    monitor-exit v3

    goto/16 :goto_28

    :catchall_997
    move-exception v2

    monitor-exit v3
    :try_end_999
    .catchall {:try_start_976 .. :try_end_999} :catchall_997

    throw v2

    .line 13813
    :sswitch_99a
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, removeMessages(I)V

    .line 13814
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_28

    .line 13819
    :sswitch_9aa
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 13820
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13821
    :try_start_9bb
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1402(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 13822
    monitor-exit v3
    :try_end_9c4
    .catchall {:try_start_9bb .. :try_end_9c4} :catchall_9cd

    .line 13823
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_28

    .line 13822
    :catchall_9cd
    move-exception v2

    :try_start_9ce
    monitor-exit v3
    :try_end_9cf
    .catchall {:try_start_9ce .. :try_end_9cf} :catchall_9cd

    throw v2

    .line 13829
    :sswitch_9d0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/IBinder;

    .line 13833
    .local v58, "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13835
    :try_start_9df
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_a0a

    .line 13836
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 13837
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 13838
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 13839
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 13841
    :cond_a0a
    monitor-exit v3

    goto/16 :goto_28

    :catchall_a0d
    move-exception v2

    monitor-exit v3
    :try_end_a0f
    .catchall {:try_start_9df .. :try_end_a0f} :catchall_a0d

    throw v2

    .line 13846
    .end local v58    # "win":Landroid/os/IBinder;
    :sswitch_a10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/IBinder;

    .line 13850
    .restart local v58    # "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13852
    :try_start_a1f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_a39

    .line 13853
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 13854
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 13856
    :cond_a39
    monitor-exit v3

    goto/16 :goto_28

    :catchall_a3c
    move-exception v2

    monitor-exit v3
    :try_end_a3e
    .catchall {:try_start_a1f .. :try_end_a3e} :catchall_a3c

    throw v2

    .line 13861
    .end local v58    # "win":Landroid/os/IBinder;
    :sswitch_a3f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_28

    .line 13866
    :sswitch_a48
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_28

    .line 13871
    :sswitch_a51
    const/16 v23, 0x0

    .line 13872
    .local v23, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13873
    :try_start_a5a
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13874
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 13875
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    .line 13876
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 13877
    monitor-exit v3
    :try_end_a91
    .catchall {:try_start_a5a .. :try_end_a91} :catchall_a98

    .line 13878
    if-eqz v23, :cond_28

    .line 13879
    invoke-interface/range {v23 .. v23}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_28

    .line 13877
    :catchall_a98
    move-exception v2

    :try_start_a99
    monitor-exit v3
    :try_end_a9a
    .catchall {:try_start_a99 .. :try_end_a9a} :catchall_a98

    throw v2

    .line 13885
    .end local v23    # "callback":Ljava/lang/Runnable;
    :sswitch_a9b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_28

    .line 13890
    :sswitch_aac
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_abd

    const/4 v2, 0x1

    :goto_ab8
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    goto/16 :goto_28

    :cond_abd
    const/4 v2, 0x0

    goto :goto_ab8

    .line 13895
    :sswitch_abf
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    goto/16 :goto_28

    .line 13901
    :sswitch_ac8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/util/Pair;

    .line 13907
    .local v39, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    :try_start_ad0
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_ae0

    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 13908
    :cond_ae0
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_28

    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_af0
    .catch Landroid/os/RemoteException; {:try_start_ad0 .. :try_end_af0} :catch_af2

    goto/16 :goto_28

    .line 13910
    :catch_af2
    move-exception v2

    goto/16 :goto_28

    .line 13916
    .end local v39    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    :sswitch_af5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto/16 :goto_28

    .line 13920
    :sswitch_b02
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13921
    :try_start_b09
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayRemovedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;I)V

    .line 13922
    monitor-exit v3

    goto/16 :goto_28

    :catchall_b17
    move-exception v2

    monitor-exit v3
    :try_end_b19
    .catchall {:try_start_b09 .. :try_end_b19} :catchall_b17

    throw v2

    .line 13926
    :sswitch_b1a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13927
    :try_start_b21
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayChangedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1800(Lcom/android/server/wm/WindowManagerService;I)V

    .line 13928
    monitor-exit v3

    goto/16 :goto_28

    :catchall_b2f
    move-exception v2

    monitor-exit v3
    :try_end_b31
    .catchall {:try_start_b21 .. :try_end_b31} :catchall_b2f

    throw v2

    .line 13933
    :sswitch_b32
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13934
    :try_start_b39
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->stackIdFromPoint(II)I

    move-result v45

    .line 13935
    .local v45, "stackId":I
    monitor-exit v3
    :try_end_b4c
    .catchall {:try_start_b39 .. :try_end_b4c} :catchall_b5f

    .line 13936
    if-ltz v45, :cond_28

    .line 13940
    :try_start_b4e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    move/from16 v0, v45

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->setFocusedStack(IZ)V
    :try_end_b5a
    .catch Landroid/os/RemoteException; {:try_start_b4e .. :try_end_b5a} :catch_b5c

    goto/16 :goto_28

    .line 13945
    :catch_b5c
    move-exception v2

    goto/16 :goto_28

    .line 13935
    .end local v45    # "stackId":I
    :catchall_b5f
    move-exception v2

    :try_start_b60
    monitor-exit v3
    :try_end_b61
    .catchall {:try_start_b60 .. :try_end_b61} :catchall_b5f

    throw v2

    .line 13952
    :sswitch_b62
    :try_start_b62
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_b71
    .catch Landroid/os/RemoteException; {:try_start_b62 .. :try_end_b71} :catch_ef6

    .line 13957
    :goto_b71
    const/16 v60, 0x0

    .line 13958
    .restart local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13959
    :try_start_b7a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v60

    .line 13960
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v60

    # invokes: Lcom/android/server/wm/WindowManagerService;->appTokenDrawnForMultiWindowLocked(Lcom/android/server/wm/AppWindowToken;)V
    invoke-static {v2, v0}, Lcom/android/server/wm/WindowManagerService;->access$1900(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;)V

    .line 13962
    if-eqz v60, :cond_bba

    move-object/from16 v0, v60

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mPendingMinimizeAnim:Z

    if-eqz v2, :cond_bba

    .line 13963
    const/16 v2, 0x68

    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, removeMessages(ILjava/lang/Object;)V

    .line 13964
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, v60

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 13965
    const/4 v2, 0x0

    move-object/from16 v0, v60

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mPendingMinimizeAnim:Z

    .line 13967
    :cond_bba
    monitor-exit v3

    goto/16 :goto_28

    :catchall_bbd
    move-exception v2

    monitor-exit v3
    :try_end_bbf
    .catchall {:try_start_b7a .. :try_end_bbf} :catchall_bbd

    throw v2

    .line 13974
    .end local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_bc0
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13975
    :try_start_bc7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackFrame(ZZ)V

    .line 13976
    monitor-exit v3

    goto/16 :goto_28

    :catchall_bd3
    move-exception v2

    monitor-exit v3
    :try_end_bd5
    .catchall {:try_start_bc7 .. :try_end_bd5} :catchall_bd3

    throw v2

    .line 13983
    :sswitch_bd6
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13984
    :try_start_bdd
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    .line 13985
    .restart local v23    # "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 13986
    monitor-exit v3
    :try_end_bed
    .catchall {:try_start_bdd .. :try_end_bed} :catchall_c15

    .line 13987
    if-eqz v23, :cond_bf2

    .line 13988
    invoke-interface/range {v23 .. v23}, Ljava/lang/Runnable;->run()V

    .line 13992
    .end local v23    # "callback":Ljava/lang/Runnable;
    :cond_bf2
    :sswitch_bf2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v41

    .line 13993
    .local v41, "scale":F
    invoke-static/range {v41 .. v41}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 13994
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/server/wm/Session;

    .line 13995
    .local v43, "session":Lcom/android/server/wm/Session;
    if-eqz v43, :cond_c18

    .line 13997
    :try_start_c07
    move-object/from16 v0, v43

    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move/from16 v0, v41

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_c10
    .catch Landroid/os/RemoteException; {:try_start_c07 .. :try_end_c10} :catch_c12

    goto/16 :goto_28

    .line 13998
    :catch_c12
    move-exception v2

    goto/16 :goto_28

    .line 13986
    .end local v41    # "scale":F
    .end local v43    # "session":Lcom/android/server/wm/Session;
    :catchall_c15
    move-exception v2

    :try_start_c16
    monitor-exit v3
    :try_end_c17
    .catchall {:try_start_c16 .. :try_end_c17} :catchall_c15

    throw v2

    .line 14001
    .restart local v41    # "scale":F
    .restart local v43    # "session":Lcom/android/server/wm/Session;
    :cond_c18
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 14003
    .local v24, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14004
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_c26
    :try_start_c26
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_c4c

    .line 14005
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14004
    add-int/lit8 v29, v29, 0x1

    goto :goto_c26

    .line 14008
    :cond_c4c
    monitor-exit v3
    :try_end_c4d
    .catchall {:try_start_c26 .. :try_end_c4d} :catchall_c69

    .line 14009
    const/16 v29, 0x0

    :goto_c4f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_28

    .line 14011
    :try_start_c57
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowSessionCallback;

    move/from16 v0, v41

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_c66
    .catch Landroid/os/RemoteException; {:try_start_c57 .. :try_end_c66} :catch_ef3

    .line 14009
    :goto_c66
    add-int/lit8 v29, v29, 0x1

    goto :goto_c4f

    .line 14008
    :catchall_c69
    move-exception v2

    :try_start_c6a
    monitor-exit v3
    :try_end_c6b
    .catchall {:try_start_c6a .. :try_end_c6b} :catchall_c69

    throw v2

    .line 14020
    .end local v24    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v29    # "i":I
    .end local v41    # "scale":F
    .end local v43    # "session":Lcom/android/server/wm/Session;
    :sswitch_c6c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14022
    :try_start_c73
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$2000(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v21

    .line 14023
    .local v21, "bootAnimationComplete":Z
    monitor-exit v3
    :try_end_c7c
    .catchall {:try_start_c73 .. :try_end_c7c} :catchall_c87

    .line 14024
    if-eqz v21, :cond_28

    .line 14025
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_28

    .line 14023
    .end local v21    # "bootAnimationComplete":Z
    :catchall_c87
    move-exception v2

    :try_start_c88
    monitor-exit v3
    :try_end_c89
    .catchall {:try_start_c88 .. :try_end_c89} :catchall_c87

    throw v2

    .line 14031
    :sswitch_c8a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14032
    :try_start_c91
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 14033
    monitor-exit v3

    goto/16 :goto_28

    :catchall_c9b
    move-exception v2

    monitor-exit v3
    :try_end_c9d
    .catchall {:try_start_c91 .. :try_end_c9d} :catchall_c9b

    throw v2

    .line 14037
    :sswitch_c9e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14038
    :try_start_ca5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ccb

    .line 14039
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    .line 14040
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_cbd

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_cc4

    :cond_cbd
    const-string v2, "WindowManager"

    const-string v4, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14042
    :cond_cc4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 14044
    :cond_ccb
    monitor-exit v3

    goto/16 :goto_28

    :catchall_cce
    move-exception v2

    monitor-exit v3
    :try_end_cd0
    .catchall {:try_start_ca5 .. :try_end_cd0} :catchall_cce

    throw v2

    .line 14050
    :sswitch_cd1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/samsung/android/cover/CoverState;

    .line 14051
    .local v25, "coverState":Lcom/samsung/android/cover/CoverState;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_ce9

    move-object/from16 v0, v25

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d08

    .line 14054
    :cond_ce9
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x15

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-nez v2, :cond_28

    .line 14055
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {v2, v4, v5, v3}, Landroid/view/WindowManagerPolicy;->notifyCoverSwitchStateChanged(JZ)V

    goto/16 :goto_28

    .line 14059
    :cond_d08
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14060
    :try_start_d0f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->setCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;)Z

    .line 14061
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    # invokes: Lcom/android/server/wm/WindowManagerService;->setCoverConfiguration(Z)Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2100(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 14062
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 14063
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 14064
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyCoverStateChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2200(Lcom/android/server/wm/WindowManagerService;Z)V

    .line 14065
    monitor-exit v3

    goto/16 :goto_28

    :catchall_d45
    move-exception v2

    monitor-exit v3
    :try_end_d47
    .catchall {:try_start_d0f .. :try_end_d47} :catchall_d45

    throw v2

    .line 14074
    .end local v25    # "coverState":Lcom/samsung/android/cover/CoverState;
    :sswitch_d48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Lcom/android/server/wm/AppWindowToken;

    .line 14075
    .restart local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v26

    .line 14076
    .local v26, "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    if-eqz v2, :cond_28

    .line 14078
    :try_start_d5e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_d65
    .catch Ljava/lang/Exception; {:try_start_d5e .. :try_end_d65} :catch_d79

    .line 14079
    :try_start_d65
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->canBeResizing(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_d86

    .line 14080
    monitor-exit v3

    goto/16 :goto_34

    .line 14082
    :catchall_d76
    move-exception v2

    monitor-exit v3
    :try_end_d78
    .catchall {:try_start_d65 .. :try_end_d78} :catchall_d76

    :try_start_d78
    throw v2
    :try_end_d79
    .catch Ljava/lang/Exception; {:try_start_d78 .. :try_end_d79} :catch_d79

    .line 14083
    :catch_d79
    move-exception v27

    .line 14084
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    .line 14086
    .end local v27    # "e":Ljava/lang/Exception;
    :goto_d7d
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showMultiWindowGestureHelp()V

    goto/16 :goto_28

    .line 14082
    :cond_d86
    :try_start_d86
    monitor-exit v3
    :try_end_d87
    .catchall {:try_start_d86 .. :try_end_d87} :catchall_d76

    goto :goto_d7d

    .line 14092
    .end local v26    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v60    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_d88
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14093
    :try_start_d8f
    const-string v2, "WindowManager"

    const-string v4, "MULTIWINDOW_TRANSACTION_TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14095
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 14097
    .restart local v15    # "displayId":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;

    move-result-object v54

    .line 14098
    .local v54, "transition":Lcom/android/server/wm/MultiWindowTransition;
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/wm/MultiWindowTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_dbe

    .line 14099
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_dbb

    const-string v2, "WindowManager"

    const-string v4, "*** MULTI WINDOW TRANSITION TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14100
    :cond_dbb
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/wm/MultiWindowTransition;->setTimeout()V

    .line 14102
    :cond_dbe
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowManagerService;->finishMultiWindowTransitionLocked(I)V

    .line 14103
    monitor-exit v3

    goto/16 :goto_28

    .end local v15    # "displayId":I
    .end local v54    # "transition":Lcom/android/server/wm/MultiWindowTransition;
    :catchall_dc8
    move-exception v2

    monitor-exit v3
    :try_end_dca
    .catchall {:try_start_d8f .. :try_end_dca} :catchall_dc8

    throw v2

    .line 14108
    :sswitch_dcb
    :try_start_dcb
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyMinimizeMultiWindow(Landroid/os/IBinder;)V

    .line 14110
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_de1
    .catch Landroid/os/RemoteException; {:try_start_dcb .. :try_end_de1} :catch_e2d

    .line 14111
    :try_start_de1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    .line 14112
    .local v20, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v20, :cond_e27

    .line 14113
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mMultiWindowStyleChanging:Z

    .line 14114
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x68

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v4, v5}, removeMessages(ILjava/lang/Object;)V

    .line 14115
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x68

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v4, v6, v7}, sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14116
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 14118
    :cond_e27
    monitor-exit v3

    goto/16 :goto_28

    .end local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :catchall_e2a
    move-exception v2

    monitor-exit v3
    :try_end_e2c
    .catchall {:try_start_de1 .. :try_end_e2c} :catchall_e2a

    :try_start_e2c
    throw v2
    :try_end_e2d
    .catch Landroid/os/RemoteException; {:try_start_e2c .. :try_end_e2d} :catch_e2d

    .line 14119
    :catch_e2d
    move-exception v2

    goto/16 :goto_28

    .line 14124
    :sswitch_e30
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14125
    :try_start_e37
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    .line 14126
    .restart local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v20, :cond_eb9

    .line 14127
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MULTIWINDOW_STYLE_CHANGING_TIMEOUT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14128
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mMultiWindowStyleChanging:Z

    .line 14129
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    .line 14130
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mPendingMinimizeAnim:Z

    .line 14131
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_e78
    :goto_e78
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb2

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/wm/WindowState;

    .line 14132
    .local v58, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v58

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-eqz v2, :cond_e78

    .line 14133
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_ea9

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mwStyle changing timeout, mMultiWindowStyleChanging = true->false, win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14134
    :cond_ea9
    const/4 v2, 0x0

    move-object/from16 v0, v58

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    goto :goto_e78

    .line 14139
    .end local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v58    # "win":Lcom/android/server/wm/WindowState;
    :catchall_eaf
    move-exception v2

    monitor-exit v3
    :try_end_eb1
    .catchall {:try_start_e37 .. :try_end_eb1} :catchall_eaf

    throw v2

    .line 14137
    .restart local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v30    # "i$":Ljava/util/Iterator;
    :cond_eb2
    :try_start_eb2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 14139
    .end local v30    # "i$":Ljava/util/Iterator;
    :cond_eb9
    monitor-exit v3
    :try_end_eba
    .catchall {:try_start_eb2 .. :try_end_eba} :catchall_eaf

    goto/16 :goto_28

    .line 14144
    .end local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_ebc
    const/16 v2, 0x6a

    :try_start_ebe
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, removeMessages(I)V

    .line 14145
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->notifyDisplayFreezeStopped()V
    :try_end_ecc
    .catch Landroid/os/RemoteException; {:try_start_ebe .. :try_end_ecc} :catch_ece

    goto/16 :goto_28

    .line 14146
    :catch_ece
    move-exception v2

    goto/16 :goto_28

    .line 14153
    :sswitch_ed1
    :try_start_ed1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    .line 14154
    .restart local v45    # "stackId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/graphics/Rect;

    .line 14155
    .local v22, "bounds":Landroid/graphics/Rect;
    if-eqz v22, :cond_28

    .line 14156
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move/from16 v0, v45

    move-object/from16 v1, v22

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->notifyCascadeStackRotated(ILandroid/graphics/Rect;)V
    :try_end_eee
    .catch Landroid/os/RemoteException; {:try_start_ed1 .. :try_end_eee} :catch_ef0

    goto/16 :goto_28

    .line 14158
    .end local v22    # "bounds":Landroid/graphics/Rect;
    .end local v45    # "stackId":I
    :catch_ef0
    move-exception v2

    goto/16 :goto_28

    .line 14012
    .restart local v24    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .restart local v29    # "i":I
    .restart local v41    # "scale":F
    .restart local v43    # "session":Lcom/android/server/wm/Session;
    :catch_ef3
    move-exception v2

    goto/16 :goto_c66

    .line 13953
    .end local v24    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v29    # "i":I
    .end local v41    # "scale":F
    .end local v43    # "session":Lcom/android/server/wm/Session;
    :catch_ef6
    move-exception v2

    goto/16 :goto_b71

    .line 13275
    nop

    :sswitch_data_efa
    .sparse-switch
        0x2 -> :sswitch_35
        0x3 -> :sswitch_1b1
        0x4 -> :sswitch_225
        0x5 -> :sswitch_240
        0x6 -> :sswitch_4d4
        0x7 -> :sswitch_5b0
        0x8 -> :sswitch_6d8
        0x9 -> :sswitch_6a6
        0xb -> :sswitch_743
        0xd -> :sswitch_7b9
        0xe -> :sswitch_848
        0xf -> :sswitch_88b
        0x10 -> :sswitch_8c8
        0x11 -> :sswitch_8d1
        0x12 -> :sswitch_99a
        0x13 -> :sswitch_9aa
        0x14 -> :sswitch_9d0
        0x15 -> :sswitch_a10
        0x16 -> :sswitch_a3f
        0x17 -> :sswitch_a48
        0x18 -> :sswitch_a51
        0x19 -> :sswitch_a9b
        0x1a -> :sswitch_ac8
        0x1b -> :sswitch_af5
        0x1c -> :sswitch_b02
        0x1d -> :sswitch_b1a
        0x1e -> :sswitch_96f
        0x1f -> :sswitch_b32
        0x20 -> :sswitch_b62
        0x21 -> :sswitch_bd6
        0x22 -> :sswitch_bf2
        0x23 -> :sswitch_aac
        0x24 -> :sswitch_abf
        0x25 -> :sswitch_c6c
        0x26 -> :sswitch_c8a
        0x27 -> :sswitch_c9e
        0x64 -> :sswitch_bc0
        0x65 -> :sswitch_d88
        0x66 -> :sswitch_d48
        0x67 -> :sswitch_dcb
        0x68 -> :sswitch_e30
        0x69 -> :sswitch_cd1
        0x6a -> :sswitch_ebc
        0x6b -> :sswitch_ed1
        0xc9 -> :sswitch_28
        0xca -> :sswitch_28
        0xcb -> :sswitch_28
        0xcc -> :sswitch_28
    .end sparse-switch
.end method
