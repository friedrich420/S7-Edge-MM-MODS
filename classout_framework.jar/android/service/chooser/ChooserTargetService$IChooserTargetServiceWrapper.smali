.class Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
.super Landroid/service/chooser/IChooserTargetService$Stub;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IChooserTargetServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/chooser/ChooserTargetService;


# direct methods
.method private constructor <init>(Landroid/service/chooser/ChooserTargetService;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/chooser/ChooserTargetService;
    .param p2, "x1"    # Landroid/service/chooser/ChooserTargetService$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, <init>(Landroid/service/chooser/ChooserTargetService;)V

    return-void
.end method


# virtual methods
.method public getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    .registers 6
    .param p1, "targetComponentName"    # Landroid/content/ComponentName;
    .param p2, "matchedFilter"    # Landroid/content/IntentFilter;
    .param p3, "result"    # Landroid/service/chooser/IChooserTargetResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 147
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    :try_start_1
    iget-object v1, p0, this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {v1, p1, p2}, Landroid/service/chooser/ChooserTargetService;->onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_b

    move-result-object v0

    .line 149
    invoke-interface {p3, v0}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    .line 152
    return-void

    .line 149
    :catchall_b
    move-exception v1

    invoke-interface {p3, v0}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    throw v1
.end method
