.class Lcom/android/server/enterprise/application/ApplicationPolicy$6$1;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$6;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$6;)V
    .registers 2

    .prologue
    .line 6275
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 6277
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$6;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->adjustMyKNOX()V
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2900(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 6278
    return-void
.end method
