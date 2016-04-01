.class Lcom/android/server/VRManagerService$VRRecord;
.super Ljava/lang/Object;
.source "VRManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRRecord"
.end annotation


# instance fields
.field private iVRManagerService:Lcom/android/internal/app/IVRManagerService;

.field private mBinder:Landroid/os/IBinder;

.field public mBound:Z

.field public mConnected:Z

.field public q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/internal/app/IVRManagerService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/VRManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/VRManagerService;)V
    .registers 4

    .prologue
    .line 184
    iput-object p1, p0, this$0:Lcom/android/server/VRManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, q:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/VRManagerService;
    .param p2, "x1"    # Lcom/android/server/VRManagerService$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, <init>(Lcom/android/server/VRManagerService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService$VRRecord;

    .prologue
    .line 184
    iget-object v0, p0, iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService$VRRecord;
    .param p1, "x1"    # Lcom/android/internal/app/IVRManagerService;

    .prologue
    .line 184
    iput-object p1, p0, iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/VRManagerService$VRRecord;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService$VRRecord;

    .prologue
    .line 184
    iget-object v0, p0, mBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string v0, "VRManagerService"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    .line 199
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;

    move-result-object v0

    if-ne v0, p0, :cond_27

    .line 200
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    :cond_27
    return-void
.end method

.method public getService()Lcom/android/internal/app/IVRManagerService;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 207
    const-string v0, "VRManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected() mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {v2}, Lcom/android/server/VRManagerService;->access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;

    move-result-object v0

    if-ne v0, p0, :cond_5c

    iget-object v0, p0, iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_5c

    .line 214
    const/4 v0, 0x1

    :try_start_4e
    iput-boolean v0, p0, mConnected:Z

    .line 215
    iput-object p2, p0, mBinder:Landroid/os/IBinder;

    .line 216
    iget-object v0, p0, q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_5b} :catch_65

    .line 222
    :goto_5b
    return-void

    .line 220
    :cond_5c
    const-string v0, "VRManagerService"

    const-string/jumbo v1, "onServiceConnected() ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 217
    :catch_65
    move-exception v0

    goto :goto_5b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 226
    const-string v0, "VRManagerService"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    .line 228
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;

    move-result-object v0

    if-ne v0, p0, :cond_28

    .line 229
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 232
    :cond_28
    return-void
.end method
