.class Lcom/android/server/bridge/operations/DbObserver$5;
.super Landroid/database/ContentObserver;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 131
    iput-object p1, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, onChange(ZLandroid/net/Uri;)V

    .line 139
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 147
    # getter for: Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/operations/DbObserver;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange Calendar tasks UserID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$400(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # invokes: Lcom/android/server/bridge/operations/DbObserver;->startCalendarSync()V
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$800(Lcom/android/server/bridge/operations/DbObserver;)V

    .line 149
    return-void
.end method
