.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# static fields
.field static final LISTEN:Z = false

.field static final REQUEST:Z = true


# instance fields
.field final isRequest:Z

.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Z)V
    .registers 6
    .param p2, "r"    # Landroid/net/NetworkRequest;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "isRequest"    # Z

    .prologue
    const/4 v0, 0x0

    .line 6133
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6134
    iput-object p2, p0, request:Landroid/net/NetworkRequest;

    .line 6135
    iput-object p3, p0, mPendingIntent:Landroid/app/PendingIntent;

    .line 6136
    iput-object v0, p0, messenger:Landroid/os/Messenger;

    .line 6137
    iput-object v0, p0, mBinder:Landroid/os/IBinder;

    .line 6138
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, mPid:I

    .line 6139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, mUid:I

    .line 6140
    iput-boolean p4, p0, isRequest:Z

    .line 6141
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V
    .registers 9
    .param p2, "m"    # Landroid/os/Messenger;
    .param p3, "r"    # Landroid/net/NetworkRequest;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "isRequest"    # Z

    .prologue
    .line 6143
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    .line 6144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6145
    iput-object p2, p0, messenger:Landroid/os/Messenger;

    .line 6146
    iput-object p3, p0, request:Landroid/net/NetworkRequest;

    .line 6147
    iput-object p4, p0, mBinder:Landroid/os/IBinder;

    .line 6148
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, mPid:I

    .line 6149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, mUid:I

    .line 6150
    iput-boolean p5, p0, isRequest:Z

    .line 6151
    const/4 v1, 0x0

    iput-object v1, p0, mPendingIntent:Landroid/app/PendingIntent;

    .line 6154
    :try_start_1c
    iget-object v1, p0, mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    .line 6158
    :goto_22
    return-void

    .line 6155
    :catch_23
    move-exception v0

    .line 6156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, binderDied()V

    goto :goto_22
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 6171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService NetworkRequestInfo binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 6173
    iget-object v0, p0, this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 6174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, isRequest:Z

    if-eqz v0, :cond_42

    const-string v0, "Request"

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_45

    const-string v0, ""

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    const-string v0, "Listen"

    goto :goto_b

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " to trigger "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method unlinkDeathRecipient()V
    .registers 4

    .prologue
    .line 6161
    iget-object v1, p0, mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_a

    .line 6163
    :try_start_4
    iget-object v1, p0, mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_a} :catch_b

    .line 6168
    :cond_a
    :goto_a
    return-void

    .line 6164
    :catch_b
    move-exception v0

    .line 6165
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "Unable to unlink deathRecipient"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_a
.end method
