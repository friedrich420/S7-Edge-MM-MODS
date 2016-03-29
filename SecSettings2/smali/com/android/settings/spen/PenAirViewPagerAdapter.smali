.class public Lcom/android/settings/spen/PenAirViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PenAirViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirViewPagerAdapter;->setDescriptions()V

    .line 45
    return-void
.end method

.method private setDescriptions()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 95
    .local v0, "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    new-instance v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 96
    .restart local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    const v1, 0x7f0202de

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 97
    const v1, 0x7f0e158c

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 98
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 102
    .restart local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    const v1, 0x7f0202df

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 103
    const v1, 0x7f0e158d

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 104
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 108
    .restart local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    const v1, 0x7f0202e0

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 109
    const v1, 0x7f0e158e

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 110
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 114
    .restart local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    const v1, 0x7f0202e1

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 115
    const v1, 0x7f0e158f

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 116
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 120
    .restart local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    const v1, 0x7f0202e2

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 121
    const v1, 0x7f0e1590

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 122
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 127
    .restart local v0    # "description":Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;
    const v1, 0x7f0202e3

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 128
    const v1, 0x7f0e1591

    iput v1, v0, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 129
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .param p1, "pager"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 59
    const/4 v3, 0x0

    .line 61
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040163

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    const v4, 0x7f0d03a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "mTitleView":Landroid/widget/TextView;
    const v4, 0x7f0d03a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "mSummaryView":Landroid/widget/TextView;
    const v4, 0x7f0d03a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    .local v0, "mAnimationView":Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    if-nez v4, :cond_0

    .line 68
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    if-nez v4, :cond_1

    .line 75
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_1
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 82
    return-object v3

    .line 70
    .restart local p1    # "pager":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
