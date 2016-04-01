.class final Lcom/android/server/input/InputManagerService$InputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .prologue
    .line 3314
    iput-object p1, p0, this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"    # Lcom/android/server/input/InputManagerService$1;

    .prologue
    .line 3314
    invoke-direct {p0, p1}, <init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .registers 2

    .prologue
    .line 3318
    const/4 v0, 0x1

    iput-boolean v0, p0, mDisconnected:Z

    .line 3319
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 3323
    if-nez p1, :cond_b

    .line 3324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3327
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v9, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3328
    :try_start_10
    iget-boolean v0, p0, mDisconnected:Z

    if-nez v0, :cond_27

    .line 3329
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v2, 0x4000000

    or-int v8, p2, v2

    move-object v2, p1

    # invokes: Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->access$1900(JLandroid/view/InputEvent;IIIIII)I

    .line 3333
    :cond_27
    monitor-exit v9

    .line 3334
    return-void

    .line 3333
    :catchall_29
    move-exception v0

    monitor-exit v9
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v0
.end method
