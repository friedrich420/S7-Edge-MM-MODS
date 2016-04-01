.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UcsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UcsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UcsReceiver intent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.samsung.knox.usm.plugin.CONFIG_STATUS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_123

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_124

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 240
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_11a

    .line 241
    const-string/jumbo v11, "request_id"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 242
    .local v8, "requestId":I
    const-string v11, "adminUid"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "adminUid":I
    const-string/jumbo v11, "status_code"

    const/4 v12, -0x1

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 244
    .local v10, "statusCode":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UcsReceiver requestId -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", adminUid-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v0, :cond_123

    if-eqz v8, :cond_123

    const/4 v11, -0x1

    if-eq v10, v11, :cond_123

    .line 246
    iget-object v11, p0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "pkgs":[Ljava/lang/String;
    if-eqz v7, :cond_123

    .line 248
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_87
    if-ge v3, v4, :cond_123

    aget-object v6, v1, v3

    .line 249
    .local v6, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sending config update to package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v5, Landroid/content/Intent;

    const-string v11, "com.samsung.knox.ucm.CONFIG_STATUS"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v5, "notifyIntent":Landroid/content/Intent;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    :try_start_b2
    iget-object v11, p0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v11, v12, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_e0

    .line 255
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Package has UCSM ESE permission. Sending intent..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v11, p0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v13, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v11, v5, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 248
    :goto_dd
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 259
    :cond_e0
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Sending intent with UCSM Other permission..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v11, p0, this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v13, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v11, v5, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_fd} :catch_fe

    goto :goto_dd

    .line 263
    :catch_fe
    move-exception v9

    .line 264
    .local v9, "se":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Exception se-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 271
    .end local v0    # "adminUid":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "notifyIntent":Landroid/content/Intent;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pkgs":[Ljava/lang/String;
    .end local v8    # "requestId":I
    .end local v9    # "se":Ljava/lang/Exception;
    .end local v10    # "statusCode":I
    :cond_11a
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UcsReceiver no bundle extras received from plugin"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v2    # "data":Landroid/os/Bundle;
    :cond_123
    :goto_123
    return-void

    .line 274
    :cond_124
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UcsReceiver no extras received from plugin...."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123
.end method
