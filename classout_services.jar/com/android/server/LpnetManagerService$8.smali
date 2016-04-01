.class Lcom/android/server/LpnetManagerService$8;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService;->runFreezeBasedOnLRU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService;)V
    .registers 2

    .prologue
    .line 2555
    iput-object p1, p0, this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2558
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1800(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2559
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->freezeBasedOnLRU(Z)V
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$5200(Lcom/android/server/LpnetManagerService;Z)V

    .line 2561
    :cond_e
    return-void
.end method
