.class Landroid/telecom/Connection$2;
.super Landroid/telecom/Conference$Listener;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Connection;


# direct methods
.method constructor <init>(Landroid/telecom/Connection;)V
    .registers 2

    .prologue
    .line 1104
    iput-object p1, p0, this$0:Landroid/telecom/Connection;

    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Conference;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;

    .prologue
    .line 1107
    iget-object v0, p0, this$0:Landroid/telecom/Connection;

    # getter for: Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;
    invoke-static {v0}, Landroid/telecom/Connection;->access$300(Landroid/telecom/Connection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1108
    iget-object v0, p0, this$0:Landroid/telecom/Connection;

    # invokes: Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V
    invoke-static {v0}, Landroid/telecom/Connection;->access$400(Landroid/telecom/Connection;)V

    .line 1110
    :cond_11
    return-void
.end method
