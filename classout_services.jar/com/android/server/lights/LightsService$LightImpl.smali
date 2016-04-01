.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private final mIsIDUsingPatternLED:Z

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .registers 5
    .param p2, "id"    # I

    .prologue
    .line 166
    iput-object p1, p0, this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 167
    iput p2, p0, mId:I

    .line 168
    # getter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    iget v0, p0, mId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1d

    iget v0, p0, mId:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_21

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput-boolean v0, p0, mIsIDUsingPatternLED:Z

    .line 170
    return-void

    .line 168
    :cond_21
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    .line 164
    invoke-direct {p0}, stopFlashing()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 164
    invoke-direct/range {p0 .. p5}, setLightLocked(IIIII)V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .registers 16
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const-wide/32 v8, 0x20000

    .line 330
    iget v0, p0, mColor:I

    if-ne p1, v0, :cond_1b

    iget v0, p0, mMode:I

    if-ne p2, v0, :cond_1b

    iget v0, p0, mOnMS:I

    if-ne p3, v0, :cond_1b

    iget v0, p0, mOffMS:I

    if-ne p4, v0, :cond_1b

    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 331
    :cond_1b
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$1302(Lcom/android/server/lights/LightsService;Z)Z

    .line 334
    iput p1, p0, mColor:I

    .line 335
    iput p2, p0, mMode:I

    .line 336
    iput p3, p0, mOnMS:I

    .line 337
    iput p4, p0, mOffMS:I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 341
    :try_start_56
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1400(Lcom/android/server/lights/LightsService;)J

    move-result-wide v0

    iget v2, p0, mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_6a

    .line 343
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 346
    :cond_69
    return-void

    .line 343
    :catchall_6a
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private stopFlashing()V
    .registers 8

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    :try_start_1
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] stopFlashing! id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_32

    iget v0, p0, mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_29

    iget v0, p0, mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_32

    .line 306
    :cond_29
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    monitor-exit p0

    .line 327
    :goto_31
    return-void

    .line 309
    :cond_32
    iget-boolean v0, p0, mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_70

    .line 310
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_6a

    .line 312
    :try_start_3d
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)V

    .line 316
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    iget v2, p0, mId:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/lights/LightsService;->access$1100(Lcom/android/server/lights/LightsService;I)V

    .line 318
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 320
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3d .. :try_end_68} :catchall_6d

    .line 326
    .end local v6    # "msg":Landroid/os/Message;
    :goto_68
    :try_start_68
    monitor-exit p0

    goto :goto_31

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6a

    throw v0

    .line 322
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v0

    .line 324
    :cond_70
    iget v1, p0, mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setLightLocked(IIIII)V
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_6a

    goto :goto_68
.end method


# virtual methods
.method public pulse()V
    .registers 3

    .prologue
    .line 242
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, pulse(II)V

    .line 243
    return-void
.end method

.method public pulse(II)V
    .registers 9
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    .line 247
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] pulse :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_50

    iget v0, p0, mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_48

    iget v0, p0, mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_50

    .line 250
    :cond_48
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_4f
    return-void

    .line 253
    :cond_50
    monitor-enter p0

    .line 254
    :try_start_51
    iget-boolean v0, p0, mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_74

    .line 255
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] pulse::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_6f
    :goto_6f
    monitor-exit p0

    goto :goto_4f

    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_51 .. :try_end_73} :catchall_71

    throw v0

    .line 257
    :cond_74
    :try_start_74
    iget v0, p0, mColor:I

    if-nez v0, :cond_6f

    iget-boolean v0, p0, mFlashing:Z

    if-nez v0, :cond_6f

    .line 258
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, setLightLocked(IIIII)V

    .line 259
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9b
    .catchall {:try_start_74 .. :try_end_9b} :catchall_71

    goto :goto_6f
.end method

.method public setBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setBrightness(II)V

    .line 175
    return-void
.end method

.method public setBrightness(II)V
    .registers 9
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 179
    monitor-enter p0

    .line 180
    and-int/lit16 v1, p1, 0xff

    .line 181
    .local v1, "color":I
    const/high16 v0, -0x1000000

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 182
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_11
    invoke-direct/range {v0 .. v5}, setLightLocked(IIIII)V

    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setColor(I)V
    .registers 8
    .param p1, "color"    # I

    .prologue
    .line 188
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setColor :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_46

    iget v0, p0, mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3e

    iget v0, p0, mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_46

    .line 191
    :cond_3e
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_45
    return-void

    .line 194
    :cond_46
    monitor-enter p0

    .line 195
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_4d
    invoke-direct/range {v0 .. v5}, setLightLocked(IIIII)V

    .line 196
    monitor-exit p0

    goto :goto_45

    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw v0
.end method

.method public setFlashing(IIII)V
    .registers 14
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 201
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] setFlashing :: id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6f

    const-string v0, "Off"

    :goto_2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", onMS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", offMS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_74

    iget v0, p0, mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_67

    iget v0, p0, mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_74

    .line 205
    :cond_67
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_6e
    return-void

    .line 201
    :cond_6f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2c

    .line 210
    :cond_74
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8e

    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 211
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 216
    :cond_8e
    monitor-enter p0

    .line 218
    :try_start_8f
    iget-boolean v0, p0, mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_df

    .line 219
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v8

    monitor-enter v8
    :try_end_9a
    .catchall {:try_start_8f .. :try_end_9a} :catchall_d9

    .line 221
    :try_start_9a
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)V

    .line 225
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    iget v1, p0, mId:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;IIIIIZ)V

    .line 227
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;Z)V

    .line 229
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 231
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 233
    monitor-exit v8
    :try_end_d7
    .catchall {:try_start_9a .. :try_end_d7} :catchall_dc

    .line 237
    .end local v7    # "msg":Landroid/os/Message;
    :goto_d7
    :try_start_d7
    monitor-exit p0

    goto :goto_6e

    :catchall_d9
    move-exception v0

    monitor-exit p0
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_d9

    throw v0

    .line 233
    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit v8
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    :try_start_de
    throw v0

    .line 235
    :cond_df
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, setLightLocked(IIIII)V
    :try_end_e8
    .catchall {:try_start_de .. :try_end_e8} :catchall_d9

    goto :goto_d7
.end method

.method public turnOff()V
    .registers 8

    .prologue
    .line 267
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] turnOff:: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_38

    iget v0, p0, mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_30

    iget v0, p0, mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    .line 270
    :cond_30
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_37
    return-void

    .line 273
    :cond_38
    monitor-enter p0

    .line 274
    :try_start_39
    iget-boolean v0, p0, mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_a9

    .line 275
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_84

    .line 277
    :try_start_44
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)V

    .line 281
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    iget v2, p0, mId:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/lights/LightsService;->access$1100(Lcom/android/server/lights/LightsService;I)V

    .line 282
    # getter for: Lcom/android/server/lights/LightsService;->mSvcLedState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$1200()I

    move-result v0

    if-eqz v0, :cond_87

    .line 283
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;Z)V

    .line 285
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 287
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    iget-object v2, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 294
    :goto_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_44 .. :try_end_82} :catchall_a6

    .line 298
    .end local v6    # "msg":Landroid/os/Message;
    :goto_82
    :try_start_82
    monitor-exit p0

    goto :goto_37

    :catchall_84
    move-exception v0

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_84

    throw v0

    .line 289
    :cond_87
    :try_start_87
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 291
    .restart local v6    # "msg":Landroid/os/Message;
    iget-object v0, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_81

    .line 294
    .end local v6    # "msg":Landroid/os/Message;
    :catchall_a6
    move-exception v0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_87 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v0

    .line 296
    :cond_a9
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setLightLocked(IIIII)V
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_84

    goto :goto_82
.end method
