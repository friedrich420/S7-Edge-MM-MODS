.class Lcom/android/settings/datasaving/DataSavingHelper$2;
.super Ljava/lang/Object;
.source "DataSavingHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datasaving/DataSavingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datasaving/DataSavingHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/datasaving/DataSavingHelper;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 129
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.opera.max.sdk.traffic.TrafficService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-static {p2}, Lcom/opera/max/sdk/traffic/ITrafficService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/opera/max/sdk/traffic/ITrafficService;

    move-result-object v3

    # setter for: Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;
    invoke-static {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper;->access$302(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/traffic/ITrafficService;)Lcom/opera/max/sdk/traffic/ITrafficService;

    .line 132
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-virtual {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->setIMSIForTrafficService()V

    .line 133
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    # getter for: Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->access$400(Lcom/android/settings/datasaving/DataSavingHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    .line 134
    .local v1, "listener":Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    # getter for: Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;
    invoke-static {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->access$300(Lcom/android/settings/datasaving/DataSavingHelper;)Lcom/opera/max/sdk/traffic/ITrafficService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;->onConnected(Lcom/opera/max/sdk/traffic/ITrafficService;)V

    goto :goto_0

    .line 139
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 143
    const-string v0, "DataSavingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.opera.max.sdk.traffic.TrafficService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    # getter for: Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z
    invoke-static {v0}, Lcom/android/settings/datasaving/DataSavingHelper;->access$500(Lcom/android/settings/datasaving/DataSavingHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-virtual {v0}, Lcom/android/settings/datasaving/DataSavingHelper;->bindTrafficService()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;
    invoke-static {v0, v1}, Lcom/android/settings/datasaving/DataSavingHelper;->access$302(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/traffic/ITrafficService;)Lcom/opera/max/sdk/traffic/ITrafficService;

    .line 152
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper$2;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z
    invoke-static {v0, v1}, Lcom/android/settings/datasaving/DataSavingHelper;->access$502(Lcom/android/settings/datasaving/DataSavingHelper;Z)Z

    goto :goto_0
.end method
