.class Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PriorityNotiAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/notification/PriorityNotiAppList$Row;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/PriorityNotiAppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/PriorityNotiAppList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-object p1, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    .line 361
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 362
    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 414
    if-eqz p2, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 416
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 419
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings/notification/PriorityNotiAppList$Row;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings/notification/PriorityNotiAppList$Row;
    .param p3, "animate"    # Z

    .prologue
    .line 425
    instance-of v3, p2, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    if-nez v3, :cond_0

    .line 427
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 428
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/android/settings/notification/PriorityNotiAppList$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    .end local v1    # "tv":Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 432
    check-cast v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    .line 433
    .local v0, "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;

    .line 434
    .local v2, "vh":Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;
    iget-object v3, v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p3}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 435
    iget-object v4, v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v3, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->first:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v3, v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;-><init>(Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;Lcom/android/settings/notification/PriorityNotiAppList$AppRow;Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 446
    iget-object v3, v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p3}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 447
    iget-object v3, v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v3, v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v4, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, v2, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mBackend:Lcom/android/settings/notification/NotificationBackend;
    invoke-static {v4}, Lcom/android/settings/notification/PriorityNotiAppList;->access$900(Lcom/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 435
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 371
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/PriorityNotiAppList$Row;

    .line 382
    .local v0, "r":Lcom/android/settings/notification/PriorityNotiAppList$Row;
    instance-of v1, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

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
    .line 386
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/PriorityNotiAppList$Row;

    .line 387
    .local v0, "r":Lcom/android/settings/notification/PriorityNotiAppList$Row;
    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/PriorityNotiAppList$Row;)Landroid/view/View;

    move-result-object v1

    .line 389
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/PriorityNotiAppList$Row;Z)V

    .line 390
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/PriorityNotiAppList$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings/notification/PriorityNotiAppList$Row;

    .prologue
    const/4 v4, 0x0

    .line 395
    instance-of v2, p2, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    if-nez v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1600(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040123

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1600(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040042

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;-><init>(Lcom/android/settings/notification/PriorityNotiAppList$1;)V

    .local v1, "vh":Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;
    move-object v2, v0

    .line 400
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 401
    iget-object v2, v1, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 402
    iget-object v2, v1, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 403
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 404
    const v2, 0x7f0d00da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->rowDivider:Landroid/view/View;

    .line 405
    const v2, 0x7f0d00c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v1, Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
