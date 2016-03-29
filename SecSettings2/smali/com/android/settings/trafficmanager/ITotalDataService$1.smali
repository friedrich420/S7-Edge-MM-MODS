.class Lcom/android/settings/trafficmanager/ITotalDataService$1;
.super Lcom/samsung/android/trafficmanager/ITotalData$Stub;
.source "ITotalDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/trafficmanager/ITotalDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/ITotalDataService;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/ITotalDataService;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/trafficmanager/ITotalDataService$1;->this$0:Lcom/android/settings/trafficmanager/ITotalDataService;

    invoke-direct {p0}, Lcom/samsung/android/trafficmanager/ITotalData$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalUsedBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "ITotalDataService"

    const-string v1, "getTotalUsedBytes in Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService$1;->this$0:Lcom/android/settings/trafficmanager/ITotalDataService;

    # invokes: Lcom/android/settings/trafficmanager/ITotalDataService;->getTotalUsedData()J
    invoke-static {v0}, Lcom/android/settings/trafficmanager/ITotalDataService;->access$000(Lcom/android/settings/trafficmanager/ITotalDataService;)J

    move-result-wide v0

    return-wide v0
.end method
