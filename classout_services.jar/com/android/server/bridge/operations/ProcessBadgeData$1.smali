.class Lcom/android/server/bridge/operations/ProcessBadgeData$1;
.super Landroid/database/ContentObserver;
.source "ProcessBadgeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/ProcessBadgeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 58
    iput-object p1, p0, this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 61
    const-string v0, "ProcessBadgeData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I
    invoke-static {v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I
    invoke-static {v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I

    move-result v1

    if-nez v1, :cond_3d

    .line 69
    iget-object v1, p0, this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # invokes: Lcom/android/server/bridge/operations/ProcessBadgeData;->getPersonaIds()[I
    invoke-static {v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$100(Lcom/android/server/bridge/operations/ProcessBadgeData;)[I

    move-result-object v0

    .line 71
    .local v0, "ids":[I
    iget-object v1, p0, this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # invokes: Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(Landroid/net/Uri;[I)V
    invoke-static {v1, p2, v0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$200(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;[I)V

    .line 75
    .end local v0    # "ids":[I
    :goto_3c
    return-void

    .line 73
    :cond_3d
    iget-object v1, p0, this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # invokes: Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverPersona(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$300(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;)V

    goto :goto_3c
.end method
