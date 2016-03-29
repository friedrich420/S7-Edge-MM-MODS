.class Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;
.super Landroid/os/AsyncTask;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProvisionedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 324
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcProvisioned()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWfcProvisioned:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$902(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    .line 328
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWfcProvisioned:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$900(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    const-string v2, "com.sec.sprint.wfc.WFC_AIR_PLANE_MODE"

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-object v3

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->updateWfcState(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)V

    goto :goto_0

    .line 336
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    const-string v2, "com.sec.sprint.wfc.WIFI_CALLING"

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1400(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot find WfcStartupActivity!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
