.class public Lcom/android/settings/motion/MotionViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MotionViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/motion/MotionViewPagerAdapter$Description;",
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
    .line 44
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    invoke-direct {p0}, Lcom/android/settings/motion/MotionViewPagerAdapter;->setDescriptions()V

    .line 49
    return-void
.end method

.method private setDescriptions()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    .line 125
    .local v0, "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "pick_up_to_call_out_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    .line 127
    .restart local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    const-string v1, "pick_up_to_call_out_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    const v1, 0x7f02025e

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    .line 133
    :goto_0
    const v1, 0x7f0e1243

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    .line 134
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    const v1, 0x7f0e1255

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    .line 139
    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "pick_up_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    .line 145
    .restart local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    const-string v1, "pick_up_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 146
    const v1, 0x7f02026b

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    .line 147
    const v1, 0x7f0e1244

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    .line 148
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    const v1, 0x7f0e1257

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    .line 153
    :goto_2
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "merged_mute_or_pause_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    .line 159
    .restart local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    const-string v1, "merged_mute_or_pause_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    const v1, 0x7f0200ed

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    .line 165
    :goto_3
    const v1, 0x7f0e1245

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    .line 166
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 167
    :cond_2
    const v1, 0x7f0e125f

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    .line 171
    :goto_4
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "palm_swipe_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    .line 177
    .restart local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    const-string v1, "palm_swipe_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 178
    const v1, 0x7f0200eb

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    .line 179
    const v1, 0x7f0e1247

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    .line 180
    const v1, 0x7f0e1258

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    .line 181
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "multi_window_setting_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    .line 187
    .restart local v0    # "description":Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    const-string v1, "multi_window_setting_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 188
    const v1, 0x7f020265

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    .line 189
    const v1, 0x7f0e1248

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    .line 190
    const v1, 0x7f0e1249

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    .line 191
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_5
    return-void

    .line 131
    :cond_6
    const v1, 0x7f02025d

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    goto/16 :goto_0

    .line 137
    :cond_7
    const v1, 0x7f0e1254

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    goto/16 :goto_1

    .line 151
    :cond_8
    const v1, 0x7f0e1256

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    goto/16 :goto_2

    .line 163
    :cond_9
    const v1, 0x7f0200ec

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    goto/16 :goto_3

    .line 169
    :cond_a
    const v1, 0x7f0e125d

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    goto :goto_4
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 107
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_1

    move v0, v3

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget-object v2, v2, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 118
    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10
    .param p1, "pager"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 63
    const/4 v4, 0x0

    .line 65
    .local v4, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040163

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    const v5, 0x7f0d03a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "mTitleView":Landroid/widget/TextView;
    const v5, 0x7f0d03a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, "mSummaryView":Landroid/widget/TextView;
    const v5, 0x7f0d03a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    .local v1, "mAnimationView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    if-nez v5, :cond_1

    .line 72
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_0
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    if-nez v5, :cond_2

    .line 79
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :goto_1
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    if-nez v5, :cond_3

    .line 86
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :cond_0
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/ViewGroup;
    invoke-virtual {p1, v4, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 97
    return-object v4

    .line 74
    .restart local p1    # "pager":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 91
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 58
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
