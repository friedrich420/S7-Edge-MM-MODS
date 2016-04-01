.class final Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionsListenerRecord"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mListener:Landroid/media/session/IActiveSessionsListener;

.field private final mPid:I

.field private final mUid:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    .registers 7
    .param p2, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .prologue
    .line 634
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p2, p0, mListener:Landroid/media/session/IActiveSessionsListener;

    .line 636
    iput-object p3, p0, mComponentName:Landroid/content/ComponentName;

    .line 637
    iput p4, p0, mUserId:I

    .line 638
    iput p5, p0, mPid:I

    .line 639
    iput p6, p0, mUid:I

    .line 640
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .prologue
    .line 625
    iget-object v0, p0, mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .prologue
    .line 625
    iget v0, p0, mPid:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .prologue
    .line 625
    iget v0, p0, mUid:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .prologue
    .line 625
    iget v0, p0, mUserId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .prologue
    .line 625
    iget-object v0, p0, mListener:Landroid/media/session/IActiveSessionsListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 644
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 645
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 646
    monitor-exit v1

    .line 647
    return-void

    .line 646
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method
