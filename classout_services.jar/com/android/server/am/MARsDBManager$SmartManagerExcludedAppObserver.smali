.class Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerExcludedAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1548
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    .line 1549
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1550
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 1554
    iget-object v0, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_10

    .line 1555
    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "onChange - mSmartManagerExcludedAppObserver!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_10
    iget-object v0, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V
    invoke-static {v0}, Lcom/android/server/am/MARsDBManager;->access$1200(Lcom/android/server/am/MARsDBManager;)V

    .line 1557
    return-void
.end method
