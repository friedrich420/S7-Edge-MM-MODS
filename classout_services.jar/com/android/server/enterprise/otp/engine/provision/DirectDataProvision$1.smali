.class Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision$1;
.super Ljava/lang/Thread;
.source "DirectDataProvision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->doProvisionInThread(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callerPackage:Ljava/lang/String;

.field final synthetic val$containerId:I

.field final synthetic val$tokenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 196
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    iput-object p2, p0, val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, val$tokenId:Ljava/lang/String;

    iput-object p4, p0, val$callerPackage:Ljava/lang/String;

    iput p5, p0, val$containerId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 199
    const/4 v0, 0x0

    .line 202
    .local v0, "ret":I
    if-nez v0, :cond_26

    .line 203
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    iget-object v3, p0, val$bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeOtpTokenData(Landroid/os/Bundle;)I

    move-result v0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDataProvision::doProvisionInThread - DBHandler.storeOtpTokenData() ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 208
    :cond_26
    if-nez v0, :cond_4a

    .line 209
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    iget-object v3, p0, val$bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setOtpTokenPolicies(Landroid/os/Bundle;)I

    move-result v0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDataProvision::doProvisionInThread - DBHandler.setOtpTokenPolicies() ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 215
    :cond_4a
    if-nez v0, :cond_54

    .line 216
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    iget-object v3, p0, val$bundle:Landroid/os/Bundle;

    # invokes: Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->prepareDataForSecureStorage(Landroid/os/Bundle;Z)I
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->access$100(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;Landroid/os/Bundle;Z)I

    move-result v0

    .line 219
    :cond_54
    if-nez v0, :cond_5c

    .line 220
    iget-object v2, p0, val$bundle:Landroid/os/Bundle;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->checkSecureStorageData(Landroid/os/Bundle;Z)I

    move-result v0

    .line 223
    :cond_5c
    if-nez v0, :cond_82

    iget-object v2, p0, val$bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_82

    .line 224
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    iget-object v3, p0, val$bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->createToken(Landroid/os/Bundle;)I

    move-result v0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDataProvision::doProvisionInThread - TlcHandler.createToken() ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 230
    :cond_82
    if-nez v0, :cond_ae

    .line 231
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    iget-object v3, p0, val$tokenId:Ljava/lang/String;

    const/16 v4, 0x301

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I

    move-result v0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSKCProvision::doProvisionInThread - Token Activated. [ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 237
    :cond_ae
    if-eqz v0, :cond_103

    .line 238
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    iget-object v3, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    iget-object v3, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    iget-object v2, v2, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    const-string v3, "OTP Token creation failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDataProvision::doProvisionInThread - Token Creation Failed. [ tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 249
    :goto_eb
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    iget-object v3, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getVendorTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "vendorTokenId":Ljava/lang/String;
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    iget-object v2, v2, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    iget-object v3, p0, val$callerPackage:Ljava/lang/String;

    iget v4, p0, val$containerId:I

    invoke-static {v2, v1, v3, v4, v0}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 251
    return-void

    .line 244
    .end local v1    # "vendorTokenId":Ljava/lang/String;
    :cond_103
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    iget-object v2, v2, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->mContext:Landroid/content/Context;

    const-string v3, "OTP Token created successfully"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDataProvision::doProvisionInThread - Token Created Successfully. [ tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_eb
.end method
