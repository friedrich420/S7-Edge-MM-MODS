.class Lcom/android/systemui/statusbar/policy/CallbackHandler$6;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setBtTetherVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$btTetherVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;->val$btTetherVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

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

    .line 201
    .local v1, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;->val$btTetherVisible:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setBtTetherVisible(Z)V

    goto :goto_0

    .line 203
    .end local v1    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    :cond_0
    return-void
.end method
