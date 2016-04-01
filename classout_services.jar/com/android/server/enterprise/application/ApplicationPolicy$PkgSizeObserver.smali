.class Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field finished:Z

.field mPkgStats:Landroid/content/pm/PackageStats;

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 4958
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 4959
    iput-boolean v0, p0, finished:Z

    .line 4961
    iput-boolean v0, p0, result:Z

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 4
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 4964
    monitor-enter p0

    .line 4965
    :try_start_1
    iput-object p1, p0, mPkgStats:Landroid/content/pm/PackageStats;

    .line 4966
    iput-boolean p2, p0, result:Z

    .line 4967
    const/4 v0, 0x1

    iput-boolean v0, p0, finished:Z

    .line 4968
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 4969
    monitor-exit p0

    .line 4970
    return-void

    .line 4969
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
