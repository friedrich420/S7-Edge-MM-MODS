.class public Lcom/android/server/enterprise/otp/PackageRemovalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageRemovalReceiver.java"


# instance fields
.field dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 24
    const-string v8, "PackageRemovalReceiver::onReceive Enter"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v8

    iput-object v8, p0, dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10e

    const-string v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_10e

    .line 29
    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 30
    .local v7, "userHandle":I
    const-string v8, "android.intent.extra.UID"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 31
    .local v6, "uid":I
    const/4 v2, 0x0

    .line 32
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "intentPackage":Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 34
    const-string/jumbo v8, "package:"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_41
    if-eqz v2, :cond_109

    if-eq v7, v10, :cond_109

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PackageRemovalReceiver::onReceive deleting token for Pkg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " container id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 40
    iget-object v8, p0, dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v8, v2, v7}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getVendorOtpTokenList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 41
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_10e

    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7b
    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 43
    .local v5, "tokenId":Ljava/lang/String;
    if-eqz v5, :cond_7b

    .line 44
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v4

    .line 45
    .local v4, "ret":I
    if-nez v4, :cond_d4

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OTPService::onReceive removed token = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in TZ"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 52
    :goto_af
    iget-object v8, p0, dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v4

    .line 53
    if-nez v4, :cond_f1

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OTPService::onReceive removed token = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in OTP DB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_7b

    .line 50
    :cond_d4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OTPService::onReceive remove failed token = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in TZ"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_af

    .line 58
    :cond_f1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OTPService::onReceive remove failed token = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ret":I
    .end local v5    # "tokenId":Ljava/lang/String;
    :cond_109
    const-string v8, "Unable to get Package Info of the deleted App"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 68
    .end local v1    # "intentPackage":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v7    # "userHandle":I
    :cond_10e
    return-void
.end method
