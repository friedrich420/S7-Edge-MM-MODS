.class Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;
.super Landroid/os/AsyncTask;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->queryWfcState()I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1500(Lcom/android/systemui/qs/tiles/WifiCallingTile;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 353
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v4, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1

    :cond_0
    move v0, v1

    .line 354
    .local v0, "isTransitioning":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 355
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1600(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    .line 364
    :goto_1
    return-void

    .line 353
    .end local v0    # "isTransitioning":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    .restart local v0    # "isTransitioning":Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 359
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1700(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->enableWifi()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1800(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    goto :goto_1

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->access$1900(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
