.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;
.super Landroid/widget/ArrayAdapter;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->createOverflowListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;Landroid/content/Context;ILandroid/content/Context;)V
    .registers 5
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 1837
    iput-object p1, p0, this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    iput-object p4, p0, val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getIconOnlyView(ILandroid/view/View;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 1875
    if-eqz p2, :cond_23

    .line 1876
    move-object v0, p2

    .line 1881
    .local v0, "menuButton":Landroid/view/View;
    :goto_3
    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 1882
    .local v1, "menuItem":Landroid/view/MenuItem;
    const v2, 0x1020054

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1885
    iget-object v2, p0, this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$3300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1886
    return-object v0

    .line 1878
    .end local v0    # "menuButton":Landroid/view/View;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_23
    iget-object v2, p0, val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090061

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "menuButton":Landroid/view/View;
    goto :goto_3
.end method

.method private getStringTitleView(ILandroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 1861
    if-eqz p2, :cond_23

    move-object v0, p2

    .line 1862
    check-cast v0, Landroid/widget/TextView;

    .line 1866
    .local v0, "menuButton":Landroid/widget/TextView;
    :goto_5
    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 1867
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1869
    iget-object v2, p0, this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$3300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1870
    return-object v0

    .line 1864
    .end local v0    # "menuButton":Landroid/widget/TextView;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_23
    iget-object v2, p0, val$context:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar;->access$3100(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    .restart local v0    # "menuButton":Landroid/widget/TextView;
    goto :goto_5
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1845
    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->access$2700(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1846
    const/4 v0, 0x1

    .line 1848
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1853
    invoke-virtual {p0, p1}, getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1854
    invoke-direct {p0, p1, p2}, getIconOnlyView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1856
    :goto_b
    return-object v0

    :cond_c
    invoke-direct {p0, p1, p2}, getStringTitleView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_b
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 1840
    const/4 v0, 0x2

    return v0
.end method
