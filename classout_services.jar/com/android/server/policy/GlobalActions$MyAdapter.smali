.class Lcom/android/server/policy/GlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2

    .prologue
    .line 3473
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "x1"    # Lcom/android/server/policy/GlobalActions$1;

    .prologue
    .line 3473
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 3504
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 3476
    const/4 v1, 0x0

    .line 3478
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$5600(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 3479
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$5600(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    .line 3481
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$7200(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 3478
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3484
    :cond_2b
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$7300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3488
    :cond_39
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showConditional()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3492
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3494
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_42
    return v1
.end method

.method public getItem(I)Lcom/android/server/policy/GlobalActions$Action;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 3509
    const/4 v1, 0x0

    .line 3510
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$5600(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 3511
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$5600(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    .line 3512
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$7200(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 3510
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3515
    :cond_2b
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$7300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3519
    :cond_39
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showConditional()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3523
    if-ne v1, p1, :cond_42

    .line 3524
    return-object v0

    .line 3526
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3529
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range of showable actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$7200(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$7300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 3473
    invoke-virtual {p0, p1}, getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3538
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3542
    invoke-virtual {p0, p1}, getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    .line 3543
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 3499
    invoke-virtual {p0, p1}, getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
