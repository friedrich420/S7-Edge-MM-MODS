.class Landroid/telecom/RemoteConnection$15;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .registers 5

    .prologue
    .line 1269
    iput-object p1, p0, this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, val$connection:Landroid/telecom/RemoteConnection;

    iput-object p4, p0, val$conference:Landroid/telecom/RemoteConference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1272
    iget-object v0, p0, val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, val$connection:Landroid/telecom/RemoteConnection;

    iget-object v2, p0, val$conference:Landroid/telecom/RemoteConference;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    .line 1273
    return-void
.end method
