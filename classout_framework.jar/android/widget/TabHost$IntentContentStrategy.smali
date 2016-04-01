.class Landroid/widget/TabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 755
    iput-object p1, p0, this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p2, p0, mTag:Ljava/lang/String;

    .line 757
    iput-object p3, p0, mIntent:Landroid/content/Intent;

    .line 758
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/widget/TabHost;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/content/Intent;
    .param p4, "x3"    # Landroid/widget/TabHost$1;

    .prologue
    .line 748
    invoke-direct {p0, p1, p2, p3}, <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .registers 6

    .prologue
    .line 761
    iget-object v2, p0, this$0:Landroid/widget/TabHost;

    iget-object v2, v2, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_e

    .line 762
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 764
    :cond_e
    iget-object v2, p0, this$0:Landroid/widget/TabHost;

    iget-object v2, v2, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, mTag:Ljava/lang/String;

    iget-object v4, p0, mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 766
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 767
    .local v1, "wd":Landroid/view/View;
    :goto_20
    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_3b

    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_3b

    .line 768
    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 769
    iget-object v2, p0, this$0:Landroid/widget/TabHost;

    # getter for: Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Landroid/widget/TabHost;->access$200(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 772
    :cond_3b
    iput-object v1, p0, mLaunchedView:Landroid/view/View;

    .line 780
    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_56

    .line 781
    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 782
    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 783
    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 786
    :cond_56
    iget-object v2, p0, mLaunchedView:Landroid/view/View;

    return-object v2

    .line 766
    .end local v1    # "wd":Landroid/view/View;
    :cond_59
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public tabClosed()V
    .registers 3

    .prologue
    .line 790
    iget-object v0, p0, mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 791
    iget-object v0, p0, mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 793
    :cond_b
    return-void
.end method
