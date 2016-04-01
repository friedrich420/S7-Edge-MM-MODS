.class Lcom/android/server/pm/PackageManagerService$19;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V
    .registers 6

    .prologue
    .line 19086
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, val$userId:I

    iput-object p3, p0, val$packageName:Ljava/lang/String;

    iput p4, p0, val$flags:I

    iput-object p5, p0, val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 19088
    const-string v6, "PackageManager"

    const-string v7, "MSG"

    const-string v8, "DELETE_PACKAGE_AS_USER"

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19089
    iget-object v6, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v6, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19090
    const/4 v3, 0x1

    .line 19092
    .local v3, "returnCode":I
    const-string v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 19093
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    iget v2, p0, val$userId:I

    .line 19094
    .local v2, "edmUserid":I
    const-string v6, "PackageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deletePackage- pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, val$packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", edmuserId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19095
    iget v6, p0, val$flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4d

    .line 19096
    const/4 v2, -0x1

    .line 19098
    :cond_4d
    const-string v6, "PackageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deletePackage- pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, val$packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", edmuserId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19099
    if-eqz v0, :cond_d3

    iget-object v6, p0, val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 19101
    const-string v6, "PackageManager"

    const-string v7, "This app uninstallation is not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19102
    const/4 v3, -0x1

    .line 19110
    :cond_84
    :goto_84
    iget-object v6, p0, val$packageName:Ljava/lang/String;

    if-ltz v3, :cond_89

    move v4, v5

    :cond_89
    iget v7, p0, val$userId:I

    invoke-static {v6, v4, v7}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    .line 19111
    iget-object v4, p0, val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v4, :cond_cb

    .line 19113
    :try_start_92
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result of delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19115
    iget-object v4, p0, val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v6, p0, val$packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v3, v7}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_cb} :catch_f6

    .line 19120
    :cond_cb
    :goto_cb
    iget-object v4, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 19121
    return-void

    .line 19105
    :cond_d3
    iget-object v6, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, val$packageName:Ljava/lang/String;

    iget v8, p0, val$userId:I

    iget v9, p0, val$flags:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;II)I
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v3

    .line 19106
    iget-object v6, p0, val$packageName:Ljava/lang/String;

    const-string/jumbo v7, "jp.co.mmbi.app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 19107
    iget-object v6, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v7, "android.uid.mmbi"

    const/16 v8, 0x2392

    invoke-virtual {v6, v7, v8, v5, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    goto :goto_84

    .line 19116
    :catch_f6
    move-exception v1

    .line 19117
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v6, "Observer no longer exists."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb
.end method
