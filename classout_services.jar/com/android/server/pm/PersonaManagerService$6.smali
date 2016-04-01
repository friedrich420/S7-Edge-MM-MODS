.class Lcom/android/server/pm/PersonaManagerService$6;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$personaHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 3

    .prologue
    .line 7021
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, val$personaHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 7024
    iget-object v0, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7025
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$8900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v2, p0, val$personaHandle:I

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 7026
    monitor-exit v1

    .line 7027
    return-void

    .line 7026
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method
