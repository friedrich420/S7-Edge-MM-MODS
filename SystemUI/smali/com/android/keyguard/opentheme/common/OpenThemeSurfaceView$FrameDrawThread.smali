.class Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "OpenThemeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameDrawThread"
.end annotation


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field private mCount:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field private mTick:I

.field final synthetic this$0:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v0, 0x0

    .line 107
    iput-object p1, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 103
    iput v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 104
    iput v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 105
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 108
    iput-object p2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 110
    return-void
.end method


# virtual methods
.method public declared-synchronized resumeThread()V
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 119
    .local v12, "startTime":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    if-eqz v14, :cond_7

    .line 120
    const/4 v2, 0x0

    .line 122
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 123
    .local v10, "startT":J
    monitor-enter p0

    .line 125
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    if-lez v14, :cond_3

    .line 126
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 127
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 133
    :catch_0
    move-exception v14

    .line 135
    if-eqz v2, :cond_1

    .line 136
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 138
    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 140
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 141
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    const/16 v15, 0x3c

    if-ne v14, v15, :cond_2

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 143
    .local v6, "endTime":J
    const-wide v14, 0x42374876e8000000L    # 1.0E11

    sub-long v16, v6, v12

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v8, v14, v16

    .line 145
    .local v8, "fps":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;

    # getter for: Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->access$000(Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fps: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-wide v12, v6

    .line 148
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 151
    .end local v6    # "endTime":J
    .end local v8    # "fps":D
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 160
    .local v4, "endT":J
    sub-long v14, v4, v10

    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v14, v14

    add-long/2addr v14, v10

    sub-long/2addr v14, v4

    const-wide/16 v16, 0x96

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 164
    const-wide/16 v14, 0x64

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 170
    :catch_1
    move-exception v3

    .line 171
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 130
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "endT":J
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;

    invoke-virtual {v14, v2}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :cond_4
    if-eqz v2, :cond_1

    .line 136
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 138
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 135
    :catchall_1
    move-exception v14

    if-eqz v2, :cond_5

    .line 136
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v15, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    .restart local v4    # "endT":J
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v14, v14

    add-long/2addr v14, v10

    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 174
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v4    # "endT":J
    .end local v10    # "startT":J
    :cond_7
    return-void
.end method

.method public suspendThread()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 186
    return-void
.end method
