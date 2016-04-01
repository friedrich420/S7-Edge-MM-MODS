.class Landroid/widget/TabHost$ViewIndicatorStrategy;
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
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Landroid/view/View;)V
    .registers 3
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 682
    iput-object p1, p0, this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p2, p0, mView:Landroid/view/View;

    .line 684
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Landroid/view/View;Landroid/widget/TabHost$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/widget/TabHost;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/widget/TabHost$1;

    .prologue
    .line 678
    invoke-direct {p0, p1, p2}, <init>(Landroid/widget/TabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, mView:Landroid/view/View;

    return-object v0
.end method
