.class public Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;
.super Landroid/widget/LinearLayout;
.source "SViewCoverPagerNavigation.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$1;,
        Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIndicatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "SViewCoverPagerNavigation"

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    .line 45
    return-void
.end method

.method private getNavigationImage(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;)I
    .locals 2
    .param p1, "page"    # Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    .prologue
    .line 57
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$1;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverPagerNavigation$PageType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_normal:I

    :goto_0
    return v0

    .line 59
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->page_indicator_camera:I

    goto :goto_0

    .line 61
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->page_indicator_camera_dim:I

    goto :goto_0

    .line 63
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_focus:I

    goto :goto_0

    .line 65
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->clear_page_indicator_normal:I

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPagesList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-nez v3, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 136
    :cond_0
    return-object v2

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    .line 121
    .local v1, "pageCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 125
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->current_camera:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->camera:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 130
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_4
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;->normal:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    const/4 v6, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->removeAllViews()V

    .line 105
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_navigation_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 107
    .local v2, "iconPadding":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 108
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 109
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "currentHomeImageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    invoke-virtual {v0, v2, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->addView(Landroid/view/View;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "currentHomeImageView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->invalidate()V

    .line 115
    return-void
.end method

.method private updateWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 101
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 94
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 95
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 96
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 98
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getNavigationImage(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageSwitched(Landroid/view/View;I)V
    .locals 0
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 146
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 0
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 141
    return-void
.end method

.method public setPager(Lcom/sec/android/cover/sviewcover/SViewCoverPager;)V
    .locals 2
    .param p1, "pager"    # Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    const-string v1, "setPager(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 23
    const/16 p1, 0x8

    .line 24
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    return-void
.end method

.method public updateLayout()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->getPagesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    .local v0, "newPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation$PageType;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 77
    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 78
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 85
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    goto :goto_0
.end method
