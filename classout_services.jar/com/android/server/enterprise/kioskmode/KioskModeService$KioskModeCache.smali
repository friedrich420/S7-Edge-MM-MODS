.class Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;
.super Lcom/android/server/enterprise/EdmCache;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KioskModeCache"
.end annotation


# instance fields
.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 3

    .prologue
    .line 1866
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Lcom/android/server/enterprise/EdmCache;-><init>()V

    .line 1867
    const/4 v0, 0x0

    iput-object v0, p0, mBlockedHwKeys:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p2, "x1"    # Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    .prologue
    .line 1866
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .prologue
    .line 1866
    iget-object v0, p0, mBlockedHwKeys:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public updateCache()Z
    .registers 7

    .prologue
    .line 1871
    const/4 v1, 0x0

    .line 1872
    .local v1, "isBootCompleted":Z
    iget-object v4, p0, mBlockedHwKeys:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 1873
    const/4 v1, 0x1

    .line 1875
    :cond_6
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, mBlockedHwKeys:Ljava/util/Map;

    .line 1876
    if-eqz v1, :cond_2f

    .line 1877
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1878
    .local v0, "intentNotification":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1880
    .local v2, "token":J
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1600(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1881
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1883
    .end local v0    # "intentNotification":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_2f
    const/4 v4, 0x1

    return v4
.end method
