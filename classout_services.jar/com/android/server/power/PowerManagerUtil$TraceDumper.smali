.class public Lcom/android/server/power/PowerManagerUtil$TraceDumper;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDumper"
.end annotation


# static fields
.field private static initialized:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mDelay:I

.field private final mDumpTraceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 232
    const/4 v0, 0x0

    sput-boolean v0, initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;-><init>(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)V

    iput-object v0, p0, mDumpTraceRunnable:Ljava/lang/Runnable;

    .line 239
    sget-boolean v0, initialized:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_30

    .line 240
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PmsTraceDumper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, mHandlerThread:Landroid/os/HandlerThread;

    .line 241
    sget-object v0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 242
    new-instance v0, Landroid/os/Handler;

    sget-object v1, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, mHandler:Landroid/os/Handler;

    .line 243
    const/4 v0, 0x1

    sput-boolean v0, initialized:Z

    .line 245
    :cond_30
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    .prologue
    .line 230
    iget v0, p0, mDelay:I

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 267
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_12

    .line 268
    const-string v0, "PowerManagerUtil"

    const-string v1, "Clear trace dumper jobs."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    :cond_12
    return-void
.end method

.method public dumpTrace()V
    .registers 3

    .prologue
    .line 250
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_19

    .line 251
    const-string v0, "PowerManagerUtil"

    const-string v1, "Scheduled to dump trace now!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    sget-object v0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_19
    return-void
.end method

.method public dumpTraceWithDelay(I)V
    .registers 6
    .param p1, "delay"    # I

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_17

    .line 259
    iput p1, p0, mDelay:I

    .line 260
    sget-object v0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    sget-object v0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mDumpTraceRunnable:Ljava/lang/Runnable;

    iget v2, p0, mDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    :cond_17
    return-void
.end method
