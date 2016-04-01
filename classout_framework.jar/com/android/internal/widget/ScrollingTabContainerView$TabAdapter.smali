.class Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field private mDropDownContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 626
    iput-object p1, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 627
    invoke-virtual {p0, p2}, setDropDownViewContext(Landroid/content/Context;)V

    .line 628
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$400(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 661
    if-nez p2, :cond_12

    .line 662
    iget-object v1, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v2, p0, mDropDownContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    # invokes: Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$600(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 667
    :goto_11
    return-object p2

    :cond_12
    move-object v0, p2

    .line 665
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_11
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 641
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$400(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 646
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 651
    if-nez p2, :cond_17

    .line 652
    iget-object v1, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$500(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$600(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 656
    :goto_16
    return-object p2

    :cond_17
    move-object v0, p2

    .line 654
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_16
.end method

.method public setDropDownViewContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 631
    iput-object p1, p0, mDropDownContext:Landroid/content/Context;

    .line 632
    return-void
.end method
