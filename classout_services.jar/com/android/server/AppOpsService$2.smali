.class Lcom/android/server/AppOpsService$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 346
    :cond_7
    :goto_7
    return v0

    .line 338
    :cond_8
    iget-object v1, p0, this$0:Lcom/android/server/AppOpsService;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 342
    iget-object v0, p0, this$0:Lcom/android/server/AppOpsService;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 344
    const/4 v0, 0x2

    goto :goto_7

    .line 346
    :cond_1e
    const/4 v0, 0x3

    goto :goto_7
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, getMountMode(ILjava/lang/String;)I

    move-result v0

    .line 352
    .local v0, "mountMode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method
