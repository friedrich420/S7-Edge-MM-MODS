.class public Lcom/android/settings/OneHandViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OneHandViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OneHandViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/OneHandViewPagerAdapter$Description;",
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
    .line 56
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/android/settings/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/OneHandViewPagerAdapter;->setDescriptions()V

    .line 61
    return-void
.end method

.method private setDescriptions()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/OneHandViewPagerAdapter$Description;-><init>()V

    .line 133
    .local v0, "description":Lcom/android/settings/OneHandViewPagerAdapter$Description;
    new-instance v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/OneHandViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/OneHandViewPagerAdapter$Description;-><init>()V

    .line 134
    .restart local v0    # "description":Lcom/android/settings/OneHandViewPagerAdapter$Description;
    const-string v1, "reduce_screen_size"

    iput-object v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 135
    const v1, 0x7f020273

    iput v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    .line 136
    const v1, 0x7f0e0a47

    iput v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->title:I

    .line 137
    const v1, 0x7f0e1194

    iput v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    .line 138
    iget-object v1, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/OneHandViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/OneHandViewPagerAdapter$Description;-><init>()V

    .line 143
    .restart local v0    # "description":Lcom/android/settings/OneHandViewPagerAdapter$Description;
    const-string v1, "one_handed_input"

    iput-object v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 144
    const v1, 0x7f020272

    iput v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    .line 145
    const v1, 0x7f0e1195

    iput v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->title:I

    .line 146
    const v1, 0x7f0e119a

    iput v1, v0, Lcom/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    .line 147
    iget-object v1, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 115
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_1

    move v0, v3

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    iget-object v2, v2, Lcom/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 126
    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .param p1, "pager"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 75
    const/4 v3, 0x0

    .line 77
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040163

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    const v4, 0x7f0d03a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, "mTitleView":Landroid/widget/TextView;
    const v4, 0x7f0d03a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "mSummaryView":Landroid/widget/TextView;
    const v4, 0x7f0d03a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, "mAnimationView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;->title:I

    if-nez v4, :cond_0

    .line 84
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_0
    iget-object v4, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    if-nez v4, :cond_1

    .line 91
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_1
    iget-object v4, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    if-nez v4, :cond_2

    .line 98
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 105
    return-object v3

    .line 86
    .restart local p1    # "pager":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v4, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;->title:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v4, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v4, p0, Lcom/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;

    iget v4, v4, Lcom/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 70
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
