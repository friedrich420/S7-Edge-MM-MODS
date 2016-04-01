.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveStateRunnable"
.end annotation


# instance fields
.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 3
    .param p2, "userId"    # I

    .prologue
    .line 4076
    iput-object p1, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4077
    iput p2, p0, mUserId:I

    .line 4078
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4082
    iget-object v0, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4083
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, mUserId:I

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4084
    iget-object v0, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, mUserId:I

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4085
    monitor-exit v1

    .line 4086
    return-void

    .line 4085
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method
