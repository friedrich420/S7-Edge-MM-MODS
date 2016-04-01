.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;
.super Ljava/lang/Thread;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->doSelfUninstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field final synthetic val$callingUid:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 4354
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iput-object p2, p0, val$packageName:Ljava/lang/String;

    iput p3, p0, val$callingUid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4359
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, val$packageName:Ljava/lang/String;

    iget v2, p0, val$callingUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 4362
    const-wide/16 v0, 0x1f4

    :try_start_13
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_2b

    .line 4365
    :goto_16
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iget-object v1, p0, val$packageName:Ljava/lang/String;

    iget v2, p0, val$callingUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z

    .line 4368
    return-void

    .line 4363
    :catch_2b
    move-exception v0

    goto :goto_16
.end method
