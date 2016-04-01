.class Landroid/widget/TabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V
    .registers 3
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 605
    iput-object p1, p0, this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p2, p0, mLabel:Ljava/lang/CharSequence;

    .line 607
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/widget/TabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Landroid/widget/TabHost$1;

    .prologue
    .line 601
    invoke-direct {p0, p1, p2}, <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .registers 8

    .prologue
    .line 610
    iget-object v4, p0, this$0:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 611
    .local v0, "context":Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 613
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, this$0:Landroid/widget/TabHost;

    # getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v4}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)I

    move-result v4

    iget-object v5, p0, this$0:Landroid/widget/TabHost;

    # getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v5}, Landroid/widget/TabHost;->access$100(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 617
    .local v2, "tabIndicator":Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 618
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_46

    .line 622
    const v4, 0x1080814

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 623
    const v4, 0x10601e9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 626
    :cond_46
    return-object v2
.end method
