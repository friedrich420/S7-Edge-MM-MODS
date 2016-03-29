.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
.super Ljava/lang/Object;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteViewInfo"
.end annotation


# instance fields
.field public final mCount:I

.field public final mIntent:Landroid/content/Intent;

.field public final mIsPlaying:Z

.field public final mNonSecureOnly:Z

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public mRemoteViews:Landroid/widget/RemoteViews;

.field public mSecureModeRemoteViews:Landroid/widget/RemoteViews;

.field public final mTime:J

.field public final mType:Ljava/lang/String;

.field public final mVisibility:Z

.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V
    .locals 5
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 492
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const-string v0, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    .line 494
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 495
    const-string v0, "visibility"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    .line 496
    const-string v0, "non_secure_only"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mNonSecureOnly:Z

    .line 498
    const-string v0, "remote"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 501
    const-string v0, "secure_mode_remote"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    .line 503
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    .line 507
    :cond_0
    const-string v0, "count"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 508
    const-string v0, "contentIntent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 510
    const-string v0, "isPlaying"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    .line 512
    iput-object p2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIntent:Landroid/content/Intent;

    .line 513
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 517
    const-string v0, "type=%s / time=%s / visible=%s / non secure only=%s / remote view=%s / secure remote view=%s / isPlaying=%s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mNonSecureOnly:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
