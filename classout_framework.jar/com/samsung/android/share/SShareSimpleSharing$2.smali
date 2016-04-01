.class Lcom/samsung/android/share/SShareSimpleSharing$2;
.super Landroid/content/BroadcastReceiver;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 150
    const-string v4, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 153
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # setter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I
    invoke-static {v4, v8}, Lcom/samsung/android/share/SShareSimpleSharing;->access$102(Lcom/samsung/android/share/SShareSimpleSharing;I)I

    .line 154
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 155
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 157
    :cond_2f
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 158
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 160
    :cond_4c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4d
    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->RECENT_CONTACTS_LIST_MAX_COUNT:I
    invoke-static {}, Lcom/samsung/android/share/SShareSimpleSharing;->access$400()I

    move-result v4

    if-ge v0, v4, :cond_6d

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recentgroupdataids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 194
    :cond_6d
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v4, v4, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    .end local v0    # "i":I
    :cond_76
    return-void

    .line 165
    .restart local v0    # "i":I
    :cond_77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recentgroupnamelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .local v2, "tmpGroupName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_170

    .line 167
    const-string v3, ""

    .line 169
    .local v3, "tmpName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_94
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_cf

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_cc

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 176
    :cond_cf
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v1    # "j":I
    .end local v3    # "tmpName":Ljava/lang/String;
    :goto_d8
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$600(Lcom/samsung/android/share/SShareSimpleSharing;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupdataids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 182
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$700(Lcom/samsung/android/share/SShareSimpleSharing;)[J

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupcontactids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 183
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$800(Lcom/samsung/android/share/SShareSimpleSharing;)[I

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupcount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v0

    .line 185
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupthumbnail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_167

    .line 191
    :cond_167
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # operator++ for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$108(Lcom/samsung/android/share/SShareSimpleSharing;)I

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4d

    .line 178
    :cond_170
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    const/4 v5, 0x1

    # setter for: Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z
    invoke-static {v4, v5}, Lcom/samsung/android/share/SShareSimpleSharing;->access$502(Lcom/samsung/android/share/SShareSimpleSharing;Z)Z

    .line 179
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/share/SShareSimpleSharing;->access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recentgroupnames"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8
.end method
