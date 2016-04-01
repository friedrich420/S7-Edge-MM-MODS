.class Lcom/android/server/trust/TrustManagerService$1$1;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/trust/TrustManagerService$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/trust/TrustManagerService$1;

.field final synthetic val$fout:Ljava/io/PrintWriter;

.field final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 710
    iput-object p1, p0, this$1:Lcom/android/server/trust/TrustManagerService$1;

    iput-object p2, p0, val$fout:Ljava/io/PrintWriter;

    iput-object p3, p0, val$userInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 713
    iget-object v2, p0, val$fout:Ljava/io/PrintWriter;

    const-string v3, "Trust manager state:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, val$userInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 715
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, this$1:Lcom/android/server/trust/TrustManagerService$1;

    iget-object v4, p0, val$fout:Ljava/io/PrintWriter;

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, this$1:Lcom/android/server/trust/TrustManagerService$1;

    iget-object v5, v5, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I
    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->access$700(Lcom/android/server/trust/TrustManagerService;)I

    move-result v5

    if-ne v2, v5, :cond_2e

    const/4 v2, 0x1

    :goto_2a
    # invokes: Lcom/android/server/trust/TrustManagerService$1;->dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/trust/TrustManagerService$1;->access$800(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    goto :goto_d

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2a

    .line 717
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_30
    return-void
.end method
