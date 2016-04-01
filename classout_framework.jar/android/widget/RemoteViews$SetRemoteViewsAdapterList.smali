.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterList"
.end annotation


# static fields
.field public static final TAG:I = 0xf


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V
    .registers 6
    .param p2, "id"    # I
    .param p4, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 614
    iput p2, p0, viewId:I

    .line 615
    iput-object p3, p0, list:Ljava/util/ArrayList;

    .line 616
    iput p4, p0, viewTypeCount:I

    .line 617
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 7
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 619
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, viewId:I

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, viewTypeCount:I

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 623
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, list:Ljava/util/ArrayList;

    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_30

    .line 626
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 627
    .local v2, "rv":Landroid/widget/RemoteViews;
    iget-object v3, p0, list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 629
    .end local v2    # "rv":Landroid/widget/RemoteViews;
    :cond_30
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 650
    iget v3, p0, viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 651
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_9

    .line 702
    :cond_8
    :goto_8
    return-void

    .line 654
    :cond_9
    instance-of v3, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v3, :cond_2e

    .line 655
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 662
    :cond_2e
    instance-of v3, v1, Landroid/widget/AbsListView;

    if-nez v3, :cond_5b

    instance-of v3, v1, Landroid/widget/AdapterViewAnimator;

    if-nez v3, :cond_5b

    instance-of v3, v1, Landroid/widget/AbsHorizontalListView;

    if-nez v3, :cond_5b

    .line 663
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 675
    :cond_5b
    instance-of v3, v1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_8c

    move-object v2, v1

    .line 676
    check-cast v2, Landroid/widget/AbsListView;

    .line 677
    .local v2, "v":Landroid/widget/AbsListView;
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 678
    .local v0, "a":Landroid/widget/Adapter;
    instance-of v3, v0, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v3, :cond_7a

    iget v3, p0, viewTypeCount:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    if-gt v3, v4, :cond_7a

    .line 679
    check-cast v0, Landroid/widget/RemoteViewsListAdapter;

    .end local v0    # "a":Landroid/widget/Adapter;
    iget-object v3, p0, list:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto :goto_8

    .line 681
    .restart local v0    # "a":Landroid/widget/Adapter;
    :cond_7a
    new-instance v3, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, list:Ljava/util/ArrayList;

    iget v6, p0, viewTypeCount:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_8

    .line 683
    .end local v0    # "a":Landroid/widget/Adapter;
    .end local v2    # "v":Landroid/widget/AbsListView;
    :cond_8c
    instance-of v3, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v3, :cond_be

    move-object v2, v1

    .line 684
    check-cast v2, Landroid/widget/AdapterViewAnimator;

    .line 685
    .local v2, "v":Landroid/widget/AdapterViewAnimator;
    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 686
    .restart local v0    # "a":Landroid/widget/Adapter;
    instance-of v3, v0, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v3, :cond_ac

    iget v3, p0, viewTypeCount:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    if-gt v3, v4, :cond_ac

    .line 687
    check-cast v0, Landroid/widget/RemoteViewsListAdapter;

    .end local v0    # "a":Landroid/widget/Adapter;
    iget-object v3, p0, list:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto/16 :goto_8

    .line 689
    .restart local v0    # "a":Landroid/widget/Adapter;
    :cond_ac
    new-instance v3, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, list:Ljava/util/ArrayList;

    iget v6, p0, viewTypeCount:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    goto/16 :goto_8

    .line 692
    .end local v0    # "a":Landroid/widget/Adapter;
    .end local v2    # "v":Landroid/widget/AdapterViewAnimator;
    :cond_be
    instance-of v3, v1, Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_8

    move-object v2, v1

    .line 693
    check-cast v2, Landroid/widget/AbsHorizontalListView;

    .line 694
    .local v2, "v":Landroid/widget/AbsHorizontalListView;
    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 695
    .restart local v0    # "a":Landroid/widget/Adapter;
    instance-of v3, v0, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v3, :cond_de

    iget v3, p0, viewTypeCount:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    if-gt v3, v4, :cond_de

    .line 696
    check-cast v0, Landroid/widget/RemoteViewsListAdapter;

    .end local v0    # "a":Landroid/widget/Adapter;
    iget-object v3, p0, list:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto/16 :goto_8

    .line 698
    .restart local v0    # "a":Landroid/widget/Adapter;
    :cond_de
    new-instance v3, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, list:Ljava/util/ArrayList;

    iget v6, p0, viewTypeCount:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_8
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 705
    const-string v0, "SetRemoteViewsAdapterList"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 632
    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget v3, p0, viewId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget v3, p0, viewTypeCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget-object v3, p0, list:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    iget-object v3, p0, list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_20

    .line 637
    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    :cond_1f
    return-void

    .line 639
    :cond_20
    iget-object v3, p0, list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 640
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    if-ge v1, v0, :cond_1f

    .line 642
    iget-object v3, p0, list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 643
    .local v2, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a
.end method
