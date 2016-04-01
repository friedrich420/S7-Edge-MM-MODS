.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field pkgName:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 3

    .prologue
    .line 2190
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 2192
    const/4 v0, 0x0

    iput-object v0, p0, pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 2196
    monitor-enter p0

    .line 2197
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, finished:Z

    .line 2198
    iput-object p1, p0, pkgName:Ljava/lang/String;

    .line 2199
    iput p2, p0, result:I

    .line 2200
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2201
    monitor-exit p0

    .line 2202
    return-void

    .line 2201
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method
