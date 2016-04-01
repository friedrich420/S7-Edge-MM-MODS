.class Lcom/android/server/enterprise/application/ApplicationPolicy$3;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->onAdminRemoved(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .registers 3

    .prologue
    .line 633
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, val$userId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, val$userId:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$300(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    .line 636
    return-void
.end method
