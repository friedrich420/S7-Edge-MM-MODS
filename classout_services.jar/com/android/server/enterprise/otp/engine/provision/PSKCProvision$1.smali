.class Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;
.super Ljava/lang/Thread;
.source "PSKCProvision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->doProvisionInThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

.field final synthetic val$callerPackage:Ljava/lang/String;

.field final synthetic val$configData:Landroid/os/Bundle;

.field final synthetic val$containerId:I

.field final synthetic val$pskcBuffer:Ljava/lang/String;

.field final synthetic val$tokenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 202
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    iput-object p2, p0, val$pskcBuffer:Ljava/lang/String;

    iput-object p3, p0, val$tokenId:Ljava/lang/String;

    iput-object p4, p0, val$configData:Landroid/os/Bundle;

    iput-object p5, p0, val$callerPackage:Ljava/lang/String;

    iput p6, p0, val$containerId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 205
    const-string v5, "PSKCProvision::doProvisionInThread New thread started"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "ret":I
    const/4 v0, 0x0

    .line 208
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 210
    .local v1, "kp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$100(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, val$pskcBuffer:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parsePskc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 211
    .local v2, "listKP":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    if-eqz v2, :cond_161

    .line 212
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "kp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    check-cast v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .line 213
    .restart local v1    # "kp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_2f

    .line 214
    const-string v5, "PSKCProvision::doProvisionInThread - Multiple Keypackages are present in PSKC, only first one will be used."

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 217
    :cond_2f
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    iget-object v6, p0, val$tokenId:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->prepareDataForDbStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {v5, v1, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$200(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 218
    if-nez v0, :cond_40

    .line 219
    const/16 v3, 0x4ff

    .line 220
    const-string v5, "PSKCProvision::doProvisionInThread - mDBHandler.storeOtpTokenData bundle creation failed"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 229
    :cond_40
    :goto_40
    if-nez v3, :cond_62

    .line 230
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$300(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeOtpTokenData(Landroid/os/Bundle;)I

    move-result v3

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSKCProvision::doProvisionInThread - DBHandler.storeOtpTokenData() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 235
    :cond_62
    if-nez v3, :cond_bc

    .line 236
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    if-eqz v5, :cond_9a

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    if-eqz v5, :cond_9a

    .line 237
    iget-object v5, p0, val$configData:Landroid/os/Bundle;

    const-string v6, "NUM_TRANSACTIONS"

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    iget-object v5, p0, val$configData:Landroid/os/Bundle;

    const-string v6, "TOKEN_EXPIRY"

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_9a
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$300(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, val$configData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setOtpTokenPolicies(Landroid/os/Bundle;)I

    move-result v3

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSKCProvision::doProvisionInThread - DBHandler.setOtpTokenPolicies() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 248
    :cond_bc
    if-nez v3, :cond_c6

    .line 249
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    iget-object v6, p0, val$tokenId:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->prepareDataForSecureStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {v5, v1, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$400(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 250
    :cond_c6
    if-nez v0, :cond_cf

    .line 251
    const/16 v3, 0x4ff

    .line 252
    const-string v5, "PSKCProvision::doProvisionInThread - TlcHandler.createToken() bundle creation failed"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 256
    :cond_cf
    if-nez v3, :cond_d5

    .line 257
    invoke-static {v0, v8}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->checkSecureStorageData(Landroid/os/Bundle;Z)I

    move-result v3

    .line 260
    :cond_d5
    if-nez v3, :cond_f5

    .line 261
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->createToken(Landroid/os/Bundle;)I

    move-result v3

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSKCProvision::doProvisionInThread - TlcHandler.createToken() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 267
    :cond_f5
    if-nez v3, :cond_121

    .line 268
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$300(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, val$tokenId:Ljava/lang/String;

    const/16 v7, 0x301

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I

    move-result v3

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSKCProvision::doProvisionInThread - Token Activated. [ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 274
    :cond_121
    if-eqz v3, :cond_16a

    .line 275
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v5

    iget-object v6, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    .line 276
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$300(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    .line 277
    const-string v5, "PSKCProvision::doProvisionInThread - Token Creation Failed"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "OTP Token creation failed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    :goto_147
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$300(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getVendorTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "vendorTokenId":Ljava/lang/String;
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, val$callerPackage:Ljava/lang/String;

    iget v7, p0, val$containerId:I

    invoke-static {v5, v4, v6, v7, v3}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 287
    return-void

    .line 224
    .end local v4    # "vendorTokenId":Ljava/lang/String;
    :cond_161
    const-string v5, "PSKCProvision::doProvisionInThread - Invalid PSKC"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 225
    const/16 v3, 0x401

    goto/16 :goto_40

    .line 280
    :cond_16a
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    # getter for: Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->access$000(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "OTP Token created successfully"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSKCProvision::doProvisionInThread - Token Created Successfully. [ tokenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_147
.end method
