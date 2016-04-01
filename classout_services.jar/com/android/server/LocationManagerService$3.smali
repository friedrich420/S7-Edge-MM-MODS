.class Lcom/android/server/LocationManagerService$3;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .prologue
    .line 347
    iput-object p1, p0, this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 350
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 351
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)V

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
