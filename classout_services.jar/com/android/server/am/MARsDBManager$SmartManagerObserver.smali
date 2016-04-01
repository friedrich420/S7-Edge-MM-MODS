.class Lcom/android/server/am/MARsDBManager$SmartManagerObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1512
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    .line 1513
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1514
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 1518
    if-nez p2, :cond_3

    .line 1530
    :cond_2
    :goto_2
    return-void

    .line 1521
    :cond_3
    iget-object v0, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_24

    .line 1522
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange - mSmartManagerObserver! Uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_24
    const-string v0, "MARs-self"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1529
    iget-object v0, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsDBManager;->access$1300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateManagedPackages(Ljava/util/ArrayList;)V

    goto :goto_2
.end method
