.class Lcom/android/server/pm/UserManagerService$5;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->unhideAllInstalledAppsForUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .registers 3

    .prologue
    .line 2100
    iput-object p1, p0, this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 2103
    iget-object v3, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    const/16 v6, 0x2000

    iget v7, p0, val$userHandle:I

    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 2106
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2108
    .local v4, "ident":J
    :try_start_16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2109
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v3, v6

    if-eqz v3, :cond_1a

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a

    .line 2112
    iget-object v3, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, val$userHandle:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_42

    goto :goto_1a

    .line 2117
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_42
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_47
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    return-void
.end method
