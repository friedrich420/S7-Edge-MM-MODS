.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onAuthenticationStarted()V
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
    .line 183
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 186
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_10

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_10
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-boolean v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 189
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 190
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v2, 0x2710

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V
    invoke-static {v0, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    .line 192
    :cond_2f
    return-void
.end method
