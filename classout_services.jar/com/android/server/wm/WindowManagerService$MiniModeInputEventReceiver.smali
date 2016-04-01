.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniModeInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1246
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1247
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1248
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 35
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1252
    const/4 v6, 0x0

    .line 1254
    .local v6, "handled":Z
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v29, v0

    if-eqz v29, :cond_2d1

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v29

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_2d1

    .line 1256
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v12, v0

    .line 1257
    .local v12, "motionEvent":Landroid/view/MotionEvent;
    const/4 v6, 0x1

    .line 1260
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getRawX()F

    move-result v27

    .line 1261
    .local v27, "x":F
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getRawY()F

    move-result v28

    .line 1263
    .local v28, "y":F
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v27

    .line 1264
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v28

    .line 1266
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_165

    move-result v5

    .line 1268
    .local v5, "action":I
    if-eqz v5, :cond_35

    .line 1420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1422
    .end local v5    # "action":I
    .end local v12    # "motionEvent":Landroid/view/MotionEvent;
    .end local v27    # "x":F
    .end local v28    # "y":F
    :goto_34
    return-void

    .line 1272
    .restart local v5    # "action":I
    .restart local v12    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v27    # "x":F
    .restart local v28    # "y":F
    :cond_35
    :try_start_35
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_165

    .line 1273
    :try_start_42
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_59

    .line 1274
    monitor-exit v30
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_162

    .line 1420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_34

    .line 1277
    :cond_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v26

    .line 1278
    .local v26, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v29

    if-eqz v29, :cond_90

    const/16 v29, 0x1

    :goto_77
    move-object/from16 v0, v31

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v32

    move/from16 v4, v29

    # invokes: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$200(Lcom/android/server/wm/WindowManagerService;FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v22

    .line 1279
    .local v22, "targetWin":Lcom/android/server/wm/WindowState;
    if-nez v22, :cond_93

    .line 1280
    monitor-exit v30
    :try_end_88
    .catchall {:try_start_59 .. :try_end_88} :catchall_162

    .line 1420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_34

    .line 1278
    .end local v22    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_90
    const/16 v29, 0x0

    goto :goto_77

    .line 1283
    .restart local v22    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_93
    :try_start_93
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x834

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_bb

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x836

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_31a

    .line 1285
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1286
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1289
    .local v7, "i":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v16, "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v13, "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v14, Ljava/util/Stack;

    invoke-direct {v14}, Ljava/util/Stack;-><init>()V

    .line 1292
    .local v14, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    const/16 v24, 0x0

    .line 1293
    .local v24, "topWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v18, 0x0

    .line 1294
    .local v18, "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v17, 0x0

    .line 1295
    .local v17, "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/4 v15, 0x0

    .line 1296
    .local v15, "subTargetWin":Lcom/android/server/wm/WindowState;
    const/16 v25, 0x0

    .line 1297
    .local v25, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    add-int/lit8 v10, v29, -0x1

    .local v10, "j":I
    :goto_ef
    if-ltz v10, :cond_2d0

    .line 1298
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    check-cast v25, Lcom/android/server/wm/WindowState;

    .line 1300
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_316

    .line 1302
    move-object/from16 v24, v25

    .line 1306
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2da

    .line 1307
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1308
    .local v8, "id":I
    if-gez v8, :cond_16e

    .line 1309
    const-string v29, "WindowManager"

    const-string v31, "    no targetWin in mWindows!!"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/16 v24, 0x0

    .line 1316
    :goto_136
    if-eqz v24, :cond_2d0

    .line 1320
    add-int/lit8 v19, v8, -0x1

    .line 1321
    .local v19, "subUnderWinIndex":I
    :goto_13a
    if-ltz v19, :cond_150

    .line 1322
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 1323
    .restart local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_174

    .line 1331
    :cond_150
    :goto_150
    invoke-virtual {v14}, Ljava/util/Stack;->empty()Z

    move-result v29

    if-nez v29, :cond_181

    .line 1332
    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 1333
    .restart local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 1417
    .end local v7    # "i":I
    .end local v8    # "id":I
    .end local v10    # "j":I
    .end local v13    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v14    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v16    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v18    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subUnderWinIndex":I
    .end local v22    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v24    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    .end local v26    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_162
    move-exception v29

    monitor-exit v30
    :try_end_164
    .catchall {:try_start_93 .. :try_end_164} :catchall_162

    :try_start_164
    throw v29
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_165

    .line 1420
    .end local v5    # "action":I
    .end local v12    # "motionEvent":Landroid/view/MotionEvent;
    .end local v27    # "x":F
    .end local v28    # "y":F
    :catchall_165
    move-exception v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v29

    .line 1313
    .restart local v5    # "action":I
    .restart local v7    # "i":I
    .restart local v8    # "id":I
    .restart local v10    # "j":I
    .restart local v12    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v13    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v14    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v16    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v17    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v18    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v22    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v24    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    .restart local v26    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v27    # "x":F
    .restart local v28    # "y":F
    :cond_16e
    :try_start_16e
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    goto :goto_136

    .line 1326
    .restart local v19    # "subUnderWinIndex":I
    :cond_174
    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1329
    add-int/lit8 v19, v19, -0x1

    goto :goto_13a

    .line 1335
    :cond_181
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v20, v8, v29

    .line 1338
    .local v20, "subUpperWinIndex":I
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    :goto_18e
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_1ac

    .line 1342
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 1343
    .restart local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1ee

    .line 1352
    :cond_1ac
    const-string v29, "WindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "subTargetWinList = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_1ce
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_1fb

    .line 1354
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v29, v29, v11

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 1355
    .restart local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    add-int/lit8 v11, v11, 0x1

    goto :goto_1ce

    .line 1346
    .end local v11    # "k":I
    :cond_1ee
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1347
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18e

    .line 1359
    .restart local v11    # "k":I
    :cond_1fb
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    .line 1360
    .local v23, "topIndex":I
    :goto_203
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_22e

    .line 1361
    add-int/lit8 v29, v23, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1362
    .restart local v18    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    if-eqz v18, :cond_22e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22e

    .line 1363
    move-object/from16 v17, v18

    .line 1364
    add-int/lit8 v23, v23, 0x1

    goto :goto_203

    .line 1369
    :cond_22e
    if-eqz v17, :cond_232

    .line 1370
    move-object/from16 v24, v17

    .line 1374
    :cond_232
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_27f

    .line 1375
    const-string v29, "WindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "revSubTargetWinList.size() = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1377
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_263
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_28e

    .line 1378
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    .line 1379
    .local v21, "subWinAtList":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_263

    .line 1382
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v21    # "subWinAtList":Lcom/android/server/wm/WindowState;
    :cond_27f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1386
    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowList;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 1417
    .end local v7    # "i":I
    .end local v8    # "id":I
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v13    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v14    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v16    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v18    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subUnderWinIndex":I
    .end local v20    # "subUpperWinIndex":I
    .end local v23    # "topIndex":I
    .end local v24    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    :cond_2d0
    :goto_2d0
    monitor-exit v30
    :try_end_2d1
    .catchall {:try_start_16e .. :try_end_2d1} :catchall_162

    .line 1420
    .end local v5    # "action":I
    .end local v12    # "motionEvent":Landroid/view/MotionEvent;
    .end local v22    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v26    # "windows":Lcom/android/server/wm/WindowList;
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_2d1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_34

    .line 1396
    .restart local v5    # "action":I
    .restart local v7    # "i":I
    .restart local v10    # "j":I
    .restart local v12    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v13    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v14    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v16    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v17    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v18    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v22    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v24    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    .restart local v26    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v27    # "x":F
    .restart local v28    # "y":F
    :cond_2da
    :try_start_2da
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2d0

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_2d0

    .line 1297
    :cond_316
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_ef

    .line 1409
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v13    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v14    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v15    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v16    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v18    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v24    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    :cond_31a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2d0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_2d0

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_381
    .catchall {:try_start_2da .. :try_end_381} :catchall_162

    goto/16 :goto_2d0
.end method
