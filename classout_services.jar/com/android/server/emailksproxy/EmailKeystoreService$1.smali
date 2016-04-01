.class Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/emailksproxy/EmailKeystoreService;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 230
    iput-object p1, p0, this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    iput p2, p0, val$uidscep:I

    iput-object p3, p0, val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "keyChainConnection":Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    :try_start_1
    iget-object v3, p0, this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    # getter for: Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/emailksproxy/EmailKeystoreService;->access$000(Lcom/android/server/emailksproxy/EmailKeystoreService;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, val$uidscep:I

    invoke-static {v3, v4}, Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 236
    .local v2, "keyChainService":Landroid/security/IKeyChainService;
    const-string v3, "EmailKeystoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "grantAccessForAKS call setGrant : uidscep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, val$uidscep:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alias = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, val$alias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v3, p0, val$uidscep:I

    iget-object v4, p0, val$alias:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_40} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_40} :catch_50
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_40} :catch_5a
    .catchall {:try_start_1 .. :try_end_40} :catchall_64

    .line 247
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    .line 249
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_45
    :goto_45
    return-void

    .line 238
    :catch_46
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_47
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_64

    .line 247
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_45

    .line 241
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_50
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_51
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_64

    .line 247
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_45

    .line 244
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5a
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/AssertionError;
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/AssertionError;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    .line 247
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_45

    .end local v0    # "e":Ljava/lang/AssertionError;
    :catchall_64
    move-exception v3

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    :cond_6a
    throw v3
.end method
