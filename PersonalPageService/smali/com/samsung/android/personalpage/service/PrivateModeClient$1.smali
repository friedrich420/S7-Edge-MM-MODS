.class Lcom/samsung/android/personalpage/service/PrivateModeClient$1;
.super Landroid/os/RemoteCallbackList;
.source "PrivateModeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/PrivateModeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/samsung/android/privatemode/IPrivateModeClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PrivateModeClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeClient;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeClient;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IInterface;

    .prologue
    .line 38
    check-cast p1, Lcom/samsung/android/privatemode/IPrivateModeClient;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;->onCallbackDied(Lcom/samsung/android/privatemode/IPrivateModeClient;)V

    return-void
.end method

.method public onCallbackDied(Lcom/samsung/android/privatemode/IPrivateModeClient;)V
    .locals 3
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    .line 41
    const-string v0, "PrivateModeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallbackDied: client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;->unregister(Landroid/os/IInterface;)Z

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeClient;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeClient;->mService:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->access$100(Lcom/samsung/android/personalpage/service/PrivateModeClient;)Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeClient;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeClient;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->access$000(Lcom/samsung/android/personalpage/service/PrivateModeClient;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeClient;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->onClientDied(Landroid/os/IBinder;Lcom/samsung/android/personalpage/service/PrivateModeClient;)V

    .line 46
    :cond_0
    return-void
.end method
