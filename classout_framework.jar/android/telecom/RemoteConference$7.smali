.class Landroid/telecom/RemoteConference$7;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConference;

.field final synthetic val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;

.field final synthetic val$disconnectCause:Landroid/telecom/DisconnectCause;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .registers 5

    .prologue
    .line 271
    iput-object p1, p0, this$0:Landroid/telecom/RemoteConference;

    iput-object p2, p0, val$callback:Landroid/telecom/RemoteConference$Callback;

    iput-object p3, p0, val$conference:Landroid/telecom/RemoteConference;

    iput-object p4, p0, val$disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 274
    iget-object v0, p0, val$callback:Landroid/telecom/RemoteConference$Callback;

    iget-object v1, p0, val$conference:Landroid/telecom/RemoteConference;

    iget-object v2, p0, val$disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConference$Callback;->onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    .line 275
    return-void
.end method
