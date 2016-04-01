.class Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IPackageInstallerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1137
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1142
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1130
    invoke-direct {p0, p1, p2}, notifySessionCreated(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1130
    invoke-direct {p0, p1, p2}, notifySessionBadgingChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 1130
    invoke-direct {p0, p1, p2, p3}, notifySessionActiveChanged(IIZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F

    .prologue
    .line 1130
    invoke-direct {p0, p1, p2, p3}, notifySessionProgressChanged(IIF)V

    return-void
.end method

.method private invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1172
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 1173
    .local v0, "sessionId":I
    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_34

    .line 1190
    :goto_7
    return-void

    .line 1175
    :pswitch_8
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    goto :goto_7

    .line 1178
    :pswitch_c
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    goto :goto_7

    .line 1181
    :pswitch_10
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    goto :goto_7

    .line 1184
    :pswitch_1c
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    goto :goto_7

    .line 1187
    :pswitch_28
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    goto :goto_7

    .line 1173
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_1c
        :pswitch_28
    .end packed-switch
.end method

.method private notifySessionActiveChanged(IIZ)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "active"    # Z

    .prologue
    .line 1201
    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1202
    return-void
.end method

.method private notifySessionBadgingChanged(II)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1197
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1198
    return-void
.end method

.method private notifySessionCreated(II)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1193
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1194
    return-void
.end method

.method private notifySessionProgressChanged(IIF)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "progress"    # F

    .prologue
    .line 1205
    const/4 v0, 0x4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1154
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1155
    .local v4, "userId":I
    iget-object v5, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1156
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_27

    .line 1157
    iget-object v5, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageInstallerCallback;

    .line 1158
    .local v0, "callback":Landroid/content/pm/IPackageInstallerCallback;
    iget-object v5, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1160
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne v4, v5, :cond_24

    .line 1162
    :try_start_21
    invoke-direct {p0, v0, p1}, invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_2d

    .line 1156
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1167
    .end local v0    # "callback":Landroid/content/pm/IPackageInstallerCallback;
    .end local v3    # "user":Landroid/os/UserHandle;
    :cond_27
    iget-object v5, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1168
    return-void

    .line 1163
    .restart local v0    # "callback":Landroid/content/pm/IPackageInstallerCallback;
    .restart local v3    # "user":Landroid/os/UserHandle;
    :catch_2d
    move-exception v5

    goto :goto_24
.end method

.method public notifySessionFinished(IIZ)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "success"    # Z

    .prologue
    .line 1209
    const/4 v0, 0x5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1210
    return-void
.end method

.method public register(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 1145
    iget-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1146
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    .prologue
    .line 1149
    iget-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1150
    return-void
.end method
