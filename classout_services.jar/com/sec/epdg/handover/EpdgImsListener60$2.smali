.class Lcom/sec/epdg/handover/EpdgImsListener60$2;
.super Ljava/lang/Object;
.source "EpdgImsListener60.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;->registerCallStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 179
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "onServiceConnected: Connected to Volte service."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p2}, Lcom/sec/ims/volte2/IVolteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    # setter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mService:Lcom/sec/ims/volte2/IVolteService;
    invoke-static {v1}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$202(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 183
    :try_start_f
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mService:Lcom/sec/ims/volte2/IVolteService;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$200()Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    new-instance v2, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgCallEventListener;

    iget-object v3, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgCallEventListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/epdg/handover/EpdgImsListener60$1;)V

    invoke-interface {v1, v2}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    .line 187
    :goto_1e
    return-void

    .line 184
    :catch_1f
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 172
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onServiceDisconnected: Disconnected."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    # setter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mService:Lcom/sec/ims/volte2/IVolteService;
    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$202(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 174
    iget-object v0, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener60;->resetCallList()V
    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$300(Lcom/sec/epdg/handover/EpdgImsListener60;)V

    .line 175
    return-void
.end method
