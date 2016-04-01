.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, val$pkgs:Landroid/util/ArraySet;

    iput-object p4, p0, val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p5, p0, val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 82
    iget-object v2, p0, val$pkgs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, v2, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 85
    :cond_24
    iget-object v2, p0, this$0:Lcom/android/server/pm/BackgroundDexOptService;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    .line 100
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_2b
    return-void

    .line 88
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_2c
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 92
    iget-object v2, p0, val$pm:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 95
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 99
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_44
    iget-object v2, p0, this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v3, p0, val$jobParams:Landroid/app/job/JobParameters;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_2b
.end method
