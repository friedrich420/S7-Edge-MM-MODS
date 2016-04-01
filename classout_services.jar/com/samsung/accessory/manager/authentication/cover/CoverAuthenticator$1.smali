.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

.field final synthetic val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 3

    .prologue
    .line 169
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-object p2, p0, val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 172
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_10

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStarting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_10
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2b

    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-boolean v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v0, :cond_2b

    .line 174
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v0

    iget-object v1, p0, val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 177
    :goto_2a
    return-void

    .line 176
    :cond_2b
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, p0, val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    goto :goto_2a
.end method
