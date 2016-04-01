.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
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
    .line 198
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 201
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_11
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 203
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I
    invoke-static {v0, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$602(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 204
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 205
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v2, 0x0

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V
    invoke-static {v0, v4, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    .line 208
    :goto_2f
    return-void

    .line 207
    :cond_30
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v1, -0x1

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$802(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    goto :goto_2f
.end method
