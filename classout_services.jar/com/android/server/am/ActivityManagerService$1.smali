.class Lcom/android/server/am/ActivityManagerService$1;
.super Lcom/android/server/IntentResolver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/am/BroadcastFilter;",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 1262
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addFilter(Landroid/content/IntentFilter;)V
    .registers 2
    .param p1, "x0"    # Landroid/content/IntentFilter;

    .prologue
    .line 1262
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, addFilter(Lcom/android/server/am/BroadcastFilter;)V

    return-void
.end method

.method public addFilter(Lcom/android/server/am/BroadcastFilter;)V
    .registers 3
    .param p1, "f"    # Lcom/android/server/am/BroadcastFilter;

    .prologue
    .line 1298
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/BroadcastFilter;->added:Z

    .line 1300
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .param p1, "x0"    # Landroid/content/IntentFilter;
    .param p2, "x1"    # Ljava/util/List;

    .prologue
    .line 1262
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .registers 6
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1266
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    iget-object v2, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1267
    .local v1, "target":Landroid/os/IBinder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_25

    .line 1268
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    iget-object v2, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, v1, :cond_22

    .line 1269
    const/4 v2, 0x0

    .line 1272
    :goto_21
    return v2

    .line 1267
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1272
    :cond_25
    const/4 v2, 0x1

    goto :goto_21
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 1262
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    .end local p2    # "x1":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .prologue
    .line 1291
    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 1262
    invoke-virtual {p0, p1}, newArray(I)[Lcom/android/server/am/BroadcastFilter;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/am/BroadcastFilter;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1286
    new-array v0, p1, [Lcom/android/server/am/BroadcastFilter;

    return-object v0
.end method

.method protected newResult(Lcom/android/server/am/BroadcastFilter;II)Lcom/android/server/am/BroadcastFilter;
    .registers 6
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 1277
    if-eq p3, v1, :cond_b

    iget v0, p1, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-eq v0, v1, :cond_b

    iget v0, p1, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-ne p3, v0, :cond_12

    .line 1279
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1281
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Landroid/content/IntentFilter;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 1262
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, newResult(Lcom/android/server/am/BroadcastFilter;II)Lcom/android/server/am/BroadcastFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeFilter(Landroid/content/IntentFilter;)V
    .registers 2
    .param p1, "x0"    # Landroid/content/IntentFilter;

    .prologue
    .line 1262
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .end local p1    # "x0":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, removeFilter(Lcom/android/server/am/BroadcastFilter;)V

    return-void
.end method

.method public removeFilter(Lcom/android/server/am/BroadcastFilter;)V
    .registers 3
    .param p1, "f"    # Lcom/android/server/am/BroadcastFilter;

    .prologue
    .line 1304
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 1305
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/BroadcastFilter;->added:Z

    .line 1306
    return-void
.end method
