.class Lcom/android/server/pm/PackageManagerService$33;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackage(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 23418
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$packageName:Ljava/lang/String;

    iput-object p3, p0, val$volumeUuid:Ljava/lang/String;

    iput p4, p0, val$moveId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 23422
    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, val$packageName:Ljava/lang/String;

    iget-object v3, p0, val$volumeUuid:Ljava/lang/String;

    iget v4, p0, val$moveId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_b} :catch_c

    .line 23428
    :goto_b
    return-void

    .line 23423
    :catch_c
    move-exception v0

    .line 23424
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23425
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, val$moveId:I

    const/4 v3, -0x6

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_b
.end method
