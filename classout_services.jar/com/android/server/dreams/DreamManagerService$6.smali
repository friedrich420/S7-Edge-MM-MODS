.class Lcom/android/server/dreams/DreamManagerService$6;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .prologue
    .line 643
    iput-object p1, p0, this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 647
    iget-object v0, p0, this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$200(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 648
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$2200(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$2300(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$2200(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$2400(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 651
    iget-object v0, p0, this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$2500(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.server.dreams:SYSPROP"

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 654
    :cond_38
    monitor-exit v1

    .line 655
    return-void

    .line 654
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v0
.end method
