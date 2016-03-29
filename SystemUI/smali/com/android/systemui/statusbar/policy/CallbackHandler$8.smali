.class Lcom/android/systemui/statusbar/policy/CallbackHandler$8;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMPTCPIndicators(ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$gigaIcon:I

.field final synthetic val$typeIcon:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZIII)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$visible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$typeIcon:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$gigaIcon:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$activityIcon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    # getter for: Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->access$000(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 229
    .local v1, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$visible:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$typeIcon:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$gigaIcon:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$activityIcon:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMPTCPIndicators(ZIII)V

    goto :goto_0

    .line 231
    .end local v1    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    :cond_0
    return-void
.end method
