.class Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;
.super Ljava/lang/Object;
.source "DonutGraphEffect.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLineCallbackListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;->this$0:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineFinished()V
    .locals 2

    .prologue
    .line 633
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "Callback at DonutGraphEffect"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;->this$0:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    # invokes: Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLineFinishedCallback()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->access$000(Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;)V

    .line 637
    return-void
.end method
