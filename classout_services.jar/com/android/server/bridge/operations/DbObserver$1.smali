.class Lcom/android/server/bridge/operations/DbObserver$1;
.super Ljava/lang/Object;
.source "DbObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 60
    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # invokes: Lcom/android/server/bridge/operations/DbObserver;->getRecentlyUpdateRawContactIDList()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$000(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, "mRawConatctIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # invokes: Lcom/android/server/bridge/operations/DbObserver;->getNoOfRawContacts()I
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$100(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v1

    .line 62
    .local v1, "present_no_of_contacts":I
    # getter for: Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/operations/DbObserver;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mContactRunnable , no_of_contact_last_synced :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->no_of_contact_last_synced:I
    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->access$300(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,present_no_of_contacts :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_47

    :cond_3f
    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->no_of_contact_last_synced:I
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$300(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v2

    if-eq v1, v2, :cond_a7

    .line 66
    :cond_47
    # getter for: Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/operations/DbObserver;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling doSyncForSyncer for CONTACTS , UserID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mUserId:I
    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->access$400(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Landroid/os/RCPManager;
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$500(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/RCPManager;

    move-result-object v2

    const-string v3, "Contacts"

    iget-object v4, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mUserId:I
    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->access$400(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->doSyncForSyncer(Ljava/lang/String;I)V

    .line 68
    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J
    invoke-static {v2, v4, v5}, Lcom/android/server/bridge/operations/DbObserver;->access$602(Lcom/android/server/bridge/operations/DbObserver;J)J

    .line 69
    # getter for: Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/operations/DbObserver;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mContactRunnable , contact_last_synced_timeStamp :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J
    invoke-static {v4}, Lcom/android/server/bridge/operations/DbObserver;->access$600(Lcom/android/server/bridge/operations/DbObserver;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # setter for: Lcom/android/server/bridge/operations/DbObserver;->no_of_contact_last_synced:I
    invoke-static {v2, v1}, Lcom/android/server/bridge/operations/DbObserver;->access$302(Lcom/android/server/bridge/operations/DbObserver;I)I

    .line 73
    :cond_a7
    return-void
.end method
