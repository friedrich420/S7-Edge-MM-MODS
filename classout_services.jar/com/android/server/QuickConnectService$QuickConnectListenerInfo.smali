.class Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
.super Ljava/lang/Object;
.source "QuickConnectService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QuickConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickConnectListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/QuickConnectService;

.field final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/QuickConnectService;Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 7
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 137
    iput-object p1, p0, this$0:Lcom/android/server/QuickConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 139
    iput-object p3, p0, component:Landroid/content/ComponentName;

    .line 140
    const-string v0, "QuickConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickConnectListenerInfo - token:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  component  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mListener:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/QuickConnectService;->access$100(Lcom/android/server/QuickConnectService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 164
    return-void
.end method

.method public callback()V
    .registers 5

    .prologue
    .line 145
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_c

    .line 146
    const-string v2, "QuickConnectService"

    const-string v3, "QuickConnectService - null listener received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_b
    :goto_b
    return-void

    .line 150
    :cond_c
    :try_start_c
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectCallback;

    move-result-object v0

    .line 151
    .local v0, "callback":Lcom/samsung/android/quickconnect/IQuickConnectCallback;
    if-eqz v0, :cond_b

    .line 152
    invoke-interface {v0}, Lcom/samsung/android/quickconnect/IQuickConnectCallback;->onQuickConnectCallback()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_b

    .line 154
    .end local v0    # "callback":Lcom/samsung/android/quickconnect/IQuickConnectCallback;
    :catch_18
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "QuickConnectService"

    const-string v3, "Failed BezelCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, this$0:Lcom/android/server/QuickConnectService;

    # invokes: Lcom/android/server/QuickConnectService;->startSconnect()V
    invoke-static {v2}, Lcom/android/server/QuickConnectService;->access$000(Lcom/android/server/QuickConnectService;)V

    goto :goto_b
.end method
