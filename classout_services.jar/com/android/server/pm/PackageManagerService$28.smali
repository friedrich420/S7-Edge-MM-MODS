.class Lcom/android/server/pm/PackageManagerService$28;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .prologue
    .line 21954
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 21957
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21958
    const/4 v0, 0x0

    .line 21969
    :cond_9
    :goto_9
    return v0

    .line 21960
    :cond_a
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 21963
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 21966
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 21967
    const/4 v0, 0x2

    goto :goto_9

    .line 21969
    :cond_2a
    const/4 v0, 0x3

    goto :goto_9
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 21974
    const/4 v0, 0x1

    return v0
.end method
