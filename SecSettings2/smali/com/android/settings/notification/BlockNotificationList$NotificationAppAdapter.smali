.class Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BlockNotificationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/notification/BlockNotificationList$Row;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/BlockNotificationList;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/BlockNotificationList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 422
    iput-object p1, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    .line 423
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 424
    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 476
    if-eqz p2, :cond_0

    .line 477
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 478
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 483
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 481
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings/notification/BlockNotificationList$Row;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings/notification/BlockNotificationList$Row;
    .param p3, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 487
    instance-of v3, p2, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    if-nez v3, :cond_0

    .line 489
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 490
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/android/settings/notification/BlockNotificationList$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    .end local v1    # "tv":Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 494
    check-cast v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    .line 495
    .local v0, "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;

    .line 496
    .local v2, "vh":Lcom/android/settings/notification/BlockNotificationList$ViewHolder;
    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p3}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 497
    iget-object v5, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v3, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->first:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;-><init>(Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;Lcom/android/settings/notification/BlockNotificationList$AppRow;Lcom/android/settings/notification/BlockNotificationList$ViewHolder;)V

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 508
    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p3}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 509
    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v5, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;
    invoke-static {v5}, Lcom/android/settings/notification/BlockNotificationList;->access$900(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 497
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 433
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/BlockNotificationList$Row;

    .line 444
    .local v0, "r":Lcom/android/settings/notification/BlockNotificationList$Row;
    instance-of v1, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/BlockNotificationList$Row;

    .line 449
    .local v0, "r":Lcom/android/settings/notification/BlockNotificationList$Row;
    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/BlockNotificationList$Row;)Landroid/view/View;

    move-result-object v1

    .line 451
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/BlockNotificationList$Row;Z)V

    .line 452
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/BlockNotificationList$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings/notification/BlockNotificationList$Row;

    .prologue
    const/4 v4, 0x0

    .line 457
    instance-of v2, p2, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    if-nez v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/BlockNotificationList;->access$1600(Lcom/android/settings/notification/BlockNotificationList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040123

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/BlockNotificationList;->access$1600(Lcom/android/settings/notification/BlockNotificationList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040042

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;-><init>(Lcom/android/settings/notification/BlockNotificationList$1;)V

    .local v1, "vh":Lcom/android/settings/notification/BlockNotificationList$ViewHolder;
    move-object v2, v0

    .line 462
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 463
    iget-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 464
    iget-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 465
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 466
    const v2, 0x7f0d00da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->rowDivider:Landroid/view/View;

    .line 467
    const v2, 0x7f0d00c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 470
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
