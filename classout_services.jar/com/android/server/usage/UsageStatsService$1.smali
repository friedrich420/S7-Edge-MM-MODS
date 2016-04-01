.class Lcom/android/server/usage/UsageStatsService$1;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 272
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 278
    if-nez p1, :cond_f

    .line 279
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$400(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 280
    :try_start_9
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->updateDisplayLocked()V

    .line 281
    monitor-exit v1

    .line 283
    :cond_f
    return-void

    .line 281
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 275
    return-void
.end method
