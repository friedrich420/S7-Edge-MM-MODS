.class Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/audio/PlayerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/audio/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .registers 4
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 161
    iput-object p1, p0, this$0:Lcom/android/server/audio/PlayerRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, mCb:Landroid/os/IBinder;

    .line 163
    iput-object p3, p0, mMediaIntent:Landroid/app/PendingIntent;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    .prologue
    .line 156
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 167
    const-string v0, "MediaFocusControl"

    const-string v1, "  RemoteControlClient died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p0, mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemote()V

    .line 173
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    return-object v0
.end method
