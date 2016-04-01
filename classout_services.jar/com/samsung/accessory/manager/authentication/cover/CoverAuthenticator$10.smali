.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCertBlacklistChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 2

    .prologue
    .line 810
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 813
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 814
    .local v0, "reault":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 817
    :cond_2e
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    .line 822
    :goto_38
    return-void

    .line 820
    :cond_39
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    goto :goto_38
.end method
