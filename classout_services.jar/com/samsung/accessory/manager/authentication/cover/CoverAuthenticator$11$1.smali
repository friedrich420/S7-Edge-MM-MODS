.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11$1;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$requestPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 965
    iput-object p1, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iput-object p2, p0, val$action:Ljava/lang/String;

    iput-object p3, p0, val$requestPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 968
    iget-object v0, p0, val$action:Ljava/lang/String;

    const-string v1, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 969
    iget-object v0, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 970
    iget-object v0, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iget-object v1, p0, val$requestPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    iget-object v0, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 978
    :cond_29
    :goto_29
    return-void

    .line 972
    :cond_2a
    iget-object v0, p0, val$action:Ljava/lang/String;

    const-string v1, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 973
    iget-object v0, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 974
    iget-object v0, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iget-object v1, p0, val$requestPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    iget-object v0, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 976
    iget-object v0, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    goto :goto_29
.end method
