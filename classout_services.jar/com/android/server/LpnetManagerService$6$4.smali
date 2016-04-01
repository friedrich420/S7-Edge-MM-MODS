.class Lcom/android/server/LpnetManagerService$6$4;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$6;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$6;)V
    .registers 2

    .prologue
    .line 1013
    iput-object p1, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->idleAction()V
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3900(Lcom/android/server/LpnetManagerService;)V

    .line 1017
    return-void
.end method
