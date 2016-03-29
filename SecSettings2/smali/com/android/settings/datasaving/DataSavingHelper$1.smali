.class Lcom/android/settings/datasaving/DataSavingHelper$1;
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
    .line 91
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 94
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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.opera.max.sdk.saving.SavingService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-static {p2}, Lcom/opera/max/sdk/saving/ISavingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/opera/max/sdk/saving/ISavingService;

    move-result-object v3

    # setter for: Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;
    invoke-static {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper;->access$002(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/saving/ISavingService;)Lcom/opera/max/sdk/saving/ISavingService;

    .line 97
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    # getter for: Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->access$100(Lcom/android/settings/datasaving/DataSavingHelper;)Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    .line 98
    .local v1, "listener":Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    # getter for: Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;
    invoke-static {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->access$000(Lcom/android/settings/datasaving/DataSavingHelper;)Lcom/opera/max/sdk/saving/ISavingService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;->onConnected(Lcom/opera/max/sdk/saving/ISavingService;)V

    goto :goto_0

    .line 103
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceDisconnected name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.opera.max.sdk.saving.SavingService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    # getter for: Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->access$100(Lcom/android/settings/datasaving/DataSavingHelper;)Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    .line 110
    .local v1, "listener":Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;->onDisconnected()V

    goto :goto_0

    .line 114
    .end local v1    # "listener":Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    # getter for: Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z
    invoke-static {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->access$200(Lcom/android/settings/datasaving/DataSavingHelper;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-virtual {v2}, Lcom/android/settings/datasaving/DataSavingHelper;->bindSavingService()Z

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 120
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;
    invoke-static {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper;->access$002(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/saving/ISavingService;)Lcom/opera/max/sdk/saving/ISavingService;

    .line 121
    iget-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper$1;->this$0:Lcom/android/settings/datasaving/DataSavingHelper;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z
    invoke-static {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper;->access$202(Lcom/android/settings/datasaving/DataSavingHelper;Z)Z

    goto :goto_1
.end method
