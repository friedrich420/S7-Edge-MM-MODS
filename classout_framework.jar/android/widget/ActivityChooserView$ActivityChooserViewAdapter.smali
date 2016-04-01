.class Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroid/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserView;)V
    .registers 3

    .prologue
    .line 675
    iput-object p1, p0, this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 689
    const/4 v0, 0x4

    iput v0, p0, mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ActivityChooserView;
    .param p2, "x1"    # Landroid/widget/ActivityChooserView$1;

    .prologue
    .line 675
    invoke-direct {p0, p1}, <init>(Landroid/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 724
    const/4 v1, 0x0

    .line 725
    .local v1, "count":I
    iget-object v2, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 726
    .local v0, "activityCount":I
    iget-boolean v2, p0, mShowDefaultActivity:Z

    if-nez v2, :cond_15

    iget-object v2, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 727
    add-int/lit8 v0, v0, -0x1

    .line 729
    :cond_15
    iget v2, p0, mMaxActivityCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 730
    iget-boolean v2, p0, mShowFooterView:Z

    if-eqz v2, :cond_21

    .line 731
    add-int/lit8 v1, v1, 0x1

    .line 733
    :cond_21
    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 2

    .prologue
    .line 825
    iget-object v0, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 737
    invoke-virtual {p0, p1}, getItemViewType(I)I

    move-result v0

    .line 738
    .local v0, "itemViewType":I
    packed-switch v0, :pswitch_data_24

    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 740
    :pswitch_d
    const/4 v1, 0x0

    .line 745
    :goto_e
    return-object v1

    .line 742
    :pswitch_f
    iget-boolean v1, p0, mShowDefaultActivity:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 743
    add-int/lit8 p1, p1, 0x1

    .line 745
    :cond_1d
    iget-object v1, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_e

    .line 738
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 752
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 711
    iget-boolean v0, p0, mShowFooterView:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_e

    .line 712
    const/4 v0, 0x1

    .line 714
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getShowDefaultActivity()Z
    .registers 2

    .prologue
    .line 858
    iget-boolean v0, p0, mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x1090022

    const v10, 0x1020016

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 756
    invoke-virtual {p0, p1}, getItemViewType(I)I

    move-result v3

    .line 757
    .local v3, "itemViewType":I
    packed-switch v3, :pswitch_data_a0

    .line 789
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 759
    :pswitch_15
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v9, :cond_44

    .line 760
    :cond_1d
    iget-object v6, p0, this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v11, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 762
    invoke-virtual {p2, v9}, Landroid/view/View;->setId(I)V

    .line 763
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 764
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v6, p0, this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1600(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x10404bb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5    # "titleView":Landroid/widget/TextView;
    :cond_44
    move-object v1, p2

    .line 787
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_45
    return-object v1

    .line 769
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :pswitch_46
    if-eqz p2, :cond_51

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x102035b

    if-eq v6, v7, :cond_5f

    .line 770
    :cond_51
    iget-object v6, p0, this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v11, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 773
    :cond_5f
    iget-object v6, p0, this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1700(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 775
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const v6, 0x1020006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 776
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 777
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 780
    .restart local v5    # "titleView":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-boolean v6, p0, mShowDefaultActivity:Z

    if-eqz v6, :cond_9b

    if-nez p1, :cond_9b

    iget-boolean v6, p0, mHighlightDefaultActivity:Z

    if-eqz v6, :cond_9b

    .line 783
    invoke-virtual {p2, v9}, Landroid/view/View;->setActivated(Z)V

    :goto_99
    move-object v1, p2

    .line 787
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_45

    .line 785
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_9b
    invoke-virtual {p2, v8}, Landroid/view/View;->setActivated(Z)V

    goto :goto_99

    .line 757
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_46
        :pswitch_15
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 720
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 796
    iget v5, p0, mMaxActivityCount:I

    .line 797
    .local v5, "oldMaxActivityCount":I
    const v7, 0x7fffffff

    iput v7, p0, mMaxActivityCount:I

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "contentWidth":I
    const/4 v4, 0x0

    .line 802
    .local v4, "itemView":Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 803
    .local v6, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 804
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, getCount()I

    move-result v1

    .line 806
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v1, :cond_2c

    .line 807
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 808
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    .line 809
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 806
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 812
    :cond_2c
    iput v5, p0, mMaxActivityCount:I

    .line 814
    return v0
.end method

.method public setDataModel(Landroid/widget/ActivityChooserModel;)V
    .registers 4
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 698
    iget-object v1, p0, this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 699
    .local v0, "oldDataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_1d

    iget-object v1, p0, this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 700
    iget-object v1, p0, this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1500(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 702
    :cond_1d
    iput-object p1, p0, mDataModel:Landroid/widget/ActivityChooserModel;

    .line 703
    if-eqz p1, :cond_32

    iget-object v1, p0, this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 704
    iget-object v1, p0, this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1500(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 706
    :cond_32
    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 707
    return-void
.end method

.method public setMaxActivityCount(I)V
    .registers 3
    .param p1, "maxActivityCount"    # I

    .prologue
    .line 818
    iget v0, p0, mMaxActivityCount:I

    if-eq v0, p1, :cond_9

    .line 819
    iput p1, p0, mMaxActivityCount:I

    .line 820
    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 822
    :cond_9
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .registers 4
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    .prologue
    .line 849
    iget-boolean v0, p0, mShowDefaultActivity:Z

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_f

    .line 851
    :cond_8
    iput-boolean p1, p0, mShowDefaultActivity:Z

    .line 852
    iput-boolean p2, p0, mHighlightDefaultActivity:Z

    .line 853
    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 855
    :cond_f
    return-void
.end method

.method public setShowFooterView(Z)V
    .registers 3
    .param p1, "showFooterView"    # Z

    .prologue
    .line 829
    iget-boolean v0, p0, mShowFooterView:Z

    if-eq v0, p1, :cond_9

    .line 830
    iput-boolean p1, p0, mShowFooterView:Z

    .line 831
    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 833
    :cond_9
    return-void
.end method
