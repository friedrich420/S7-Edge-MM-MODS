.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$1;,
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, RULES_VERTICAL:[I

    .line 196
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, RULES_HORIZONTAL:[I

    return-void

    .line 192
    :array_12
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data

    .line 196
    :array_20
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 205
    iput-object v1, p0, mBaselineView:Landroid/view/View;

    .line 207
    const v0, 0x800033

    iput v0, p0, mGravity:I

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentBounds:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSelfBounds:Landroid/graphics/Rect;

    .line 212
    iput-object v1, p0, mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 222
    iput-boolean v2, p0, mAllowBrokenMeasureSpecs:Z

    .line 226
    iput-boolean v2, p0, mMeasureVerticalWithPaddingMargin:Z

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    invoke-direct {p0, p1}, queryCompatibilityModes(Landroid/content/Context;)V

    .line 252
    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .registers 11
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 894
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 895
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 897
    invoke-direct {p0, p3, v2}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 898
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_73

    .line 899
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 907
    :cond_1f
    :goto_1f
    invoke-direct {p0, p3, v4}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_88

    .line 909
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 915
    :cond_32
    :goto_32
    invoke-direct {p0, p3, v5}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_99

    .line 917
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 922
    :cond_42
    :goto_42
    invoke-direct {p0, p3, v6}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_aa

    .line 924
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 931
    :cond_52
    :goto_52
    const/16 v1, 0x9

    aget v1, p3, v1

    if-eqz v1, :cond_60

    .line 932
    iget v1, p0, mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 935
    :cond_60
    const/16 v1, 0xb

    aget v1, p3, v1

    if-eqz v1, :cond_72

    .line 936
    if-ltz p2, :cond_72

    .line 937
    iget v1, p0, mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 940
    :cond_72
    return-void

    .line 901
    :cond_73
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1f

    aget v1, p3, v2

    if-eqz v1, :cond_1f

    .line 902
    if-ltz p2, :cond_1f

    .line 903
    iget v1, p0, mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1f

    .line 911
    :cond_88
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_32

    aget v1, p3, v4

    if-eqz v1, :cond_32

    .line 912
    iget v1, p0, mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_32

    .line 918
    :cond_99
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_42

    aget v1, p3, v5

    if-eqz v1, :cond_42

    .line 919
    iget v1, p0, mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_42

    .line 925
    :cond_aa
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_52

    aget v1, p3, v6

    if-eqz v1, :cond_52

    .line 926
    if-ltz p2, :cond_52

    .line 927
    iget v1, p0, mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_52
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 12
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    .line 943
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 946
    .local v2, "rules":[I
    invoke-direct {p0, v2}, getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 947
    .local v1, "baselineOffset":I
    if-eq v1, v4, :cond_1a

    .line 948
    if-eq p3, v4, :cond_13

    .line 949
    sub-int/2addr v1, p3

    .line 951
    :cond_13
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 952
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1004
    :cond_19
    :goto_19
    return-void

    .line 958
    :cond_1a
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 959
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 961
    invoke-direct {p0, v2, v5}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 962
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_89

    .line 963
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 971
    :cond_33
    :goto_33
    invoke-direct {p0, v2, v6}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 972
    if-eqz v0, :cond_9e

    .line 973
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 979
    :cond_46
    :goto_46
    invoke-direct {p0, v2, v7}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_af

    .line 981
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 986
    :cond_56
    :goto_56
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_c0

    .line 988
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 995
    :cond_68
    :goto_68
    const/16 v3, 0xa

    aget v3, v2, v3

    if-eqz v3, :cond_76

    .line 996
    iget v3, p0, mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 999
    :cond_76
    const/16 v3, 0xc

    aget v3, v2, v3

    if-eqz v3, :cond_19

    .line 1000
    if-ltz p2, :cond_19

    .line 1001
    iget v3, p0, mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_19

    .line 965
    :cond_89
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_33

    aget v3, v2, v5

    if-eqz v3, :cond_33

    .line 966
    if-ltz p2, :cond_33

    .line 967
    iget v3, p0, mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_33

    .line 975
    :cond_9e
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_46

    aget v3, v2, v6

    if-eqz v3, :cond_46

    .line 976
    iget v3, p0, mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_46

    .line 982
    :cond_af
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_56

    aget v3, v2, v7

    if-eqz v3, :cond_56

    .line 983
    iget v3, p0, mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_56

    .line 989
    :cond_c0
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_68

    const/16 v3, 0x8

    aget v3, v2, v3

    if-eqz v3, :cond_68

    .line 990
    if-ltz p2, :cond_68

    .line 991
    iget v3, p0, mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_68
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .prologue
    .line 1054
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1055
    .local v0, "childWidth":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1057
    .local v1, "left":I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1058
    add-int v2, v1, v0

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1059
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1063
    .local v0, "childHeight":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1065
    .local v1, "top":I
    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1066
    add-int v2, v1, v0

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1067
    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 6
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 649
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int v0, v1, v2

    .line 650
    .local v0, "topDiff":I
    if-eqz v0, :cond_d

    .line 653
    .end local v0    # "topDiff":I
    :goto_c
    return v0

    .restart local v0    # "topDiff":I
    :cond_d
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_c
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .registers 17
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "childSpecMode":I
    const/4 v1, 0x0

    .line 744
    .local v1, "childSpecSize":I
    if-gez p8, :cond_21

    const/4 v2, 0x1

    .line 745
    .local v2, "isUnspecified":Z
    :goto_5
    if-eqz v2, :cond_2c

    iget-boolean v6, p0, mAllowBrokenMeasureSpecs:Z

    if-nez v6, :cond_2c

    .line 746
    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_23

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_23

    .line 748
    const/4 v6, 0x0

    sub-int v7, p2, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 749
    const/high16 v0, 0x40000000    # 2.0f

    .line 760
    :goto_1c
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 816
    :goto_20
    return v6

    .line 744
    .end local v2    # "isUnspecified":Z
    :cond_21
    const/4 v2, 0x0

    goto :goto_5

    .line 750
    .restart local v2    # "isUnspecified":Z
    :cond_23
    if-ltz p3, :cond_29

    .line 752
    move v1, p3

    .line 753
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1c

    .line 756
    :cond_29
    const/4 v1, 0x0

    .line 757
    const/4 v0, 0x0

    goto :goto_1c

    .line 764
    :cond_2c
    move v5, p1

    .line 765
    .local v5, "tempStart":I
    move v4, p2

    .line 769
    .local v4, "tempEnd":I
    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_34

    .line 770
    add-int v5, p6, p4

    .line 772
    :cond_34
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_3c

    .line 773
    sub-int v6, p8, p7

    sub-int v4, v6, p5

    .line 777
    :cond_3c
    sub-int v3, v4, v5

    .line 779
    .local v3, "maxAvailable":I
    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_56

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_56

    .line 781
    if-eqz v2, :cond_53

    const/4 v0, 0x0

    .line 782
    :goto_49
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 816
    :cond_4e
    :goto_4e
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_20

    .line 781
    :cond_53
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_49

    .line 784
    :cond_56
    if-ltz p3, :cond_63

    .line 786
    const/high16 v0, 0x40000000    # 2.0f

    .line 788
    if-ltz v3, :cond_61

    .line 790
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4e

    .line 793
    :cond_61
    move v1, p3

    goto :goto_4e

    .line 795
    :cond_63
    const/4 v6, -0x1

    if-ne p3, v6, :cond_72

    .line 798
    if-eqz v2, :cond_6f

    const/4 v0, 0x0

    .line 799
    :goto_69
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4e

    .line 798
    :cond_6f
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_69

    .line 800
    :cond_72
    const/4 v6, -0x2

    if-ne p3, v6, :cond_4e

    .line 803
    if-ltz v3, :cond_7b

    .line 805
    const/high16 v0, -0x80000000

    .line 806
    move v1, v3

    goto :goto_4e

    .line 810
    :cond_7b
    const/4 v0, 0x0

    .line 811
    const/4 v1, 0x0

    goto :goto_4e
.end method

.method private getRelatedView([II)Landroid/view/View;
    .registers 9
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    const/4 v4, 0x0

    .line 1007
    aget v0, p1, p2

    .line 1008
    .local v0, "id":I
    if-eqz v0, :cond_42

    .line 1009
    iget-object v3, p0, mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    # getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1010
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_15

    move-object v2, v4

    .line 1024
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_14
    :goto_14
    return-object v2

    .line 1011
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_15
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1014
    .local v2, "v":Landroid/view/View;
    :goto_17
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_14

    .line 1015
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1016
    iget-object v3, p0, mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    # getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v5, p1, p2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1017
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_3f

    move-object v2, v4

    goto :goto_14

    .line 1018
    :cond_3f
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_17

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2    # "v":Landroid/view/View;
    :cond_42
    move-object v2, v4

    .line 1024
    goto :goto_14
.end method

.method private getRelatedViewBaselineOffset([I)I
    .registers 8
    .param p1, "rules"    # [I

    .prologue
    const/4 v4, -0x1

    .line 1039
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5}, getRelatedView([II)Landroid/view/View;

    move-result-object v3

    .line 1040
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_21

    .line 1041
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1042
    .local v1, "baseline":I
    if-eq v1, v4, :cond_21

    .line 1043
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1044
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_21

    .line 1045
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1046
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v1

    .line 1050
    .end local v0    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "baseline":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_21
    return v4
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    .line 1028
    invoke-direct {p0, p1, p2}, getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 1029
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_15

    .line 1030
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1031
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_15

    .line 1032
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1035
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 256
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, mIgnoreGravity:I

    .line 259
    const/4 v1, 0x0

    iget v2, p0, mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, mGravity:I

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 667
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, mPaddingLeft:I

    iget v7, p0, mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 672
    .local v10, "childWidthMeasureSpec":I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, mPaddingTop:I

    iget v7, p0, mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 677
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 678
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 682
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    move-object/from16 v0, p2

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v7, p0, mPaddingLeft:I

    iget v8, p0, mPaddingRight:I

    move-object v1, p0

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, getChildMeasureSpec(IIIIIIII)I

    move-result v11

    .line 687
    .local v11, "childWidthMeasureSpec":I
    if-gez p4, :cond_40

    iget-boolean v1, p0, mAllowBrokenMeasureSpecs:Z

    if-nez v1, :cond_40

    .line 688
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v1, :cond_39

    .line 689
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 716
    .local v10, "childHeightMeasureSpec":I
    :goto_35
    invoke-virtual {p1, v11, v10}, Landroid/view/View;->measure(II)V

    .line 717
    return-void

    .line 696
    .end local v10    # "childHeightMeasureSpec":I
    :cond_39
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_35

    .line 700
    .end local v10    # "childHeightMeasureSpec":I
    :cond_40
    iget-boolean v1, p0, mMeasureVerticalWithPaddingMargin:Z

    if-eqz v1, :cond_68

    .line 701
    const/4 v1, 0x0

    iget v2, p0, mPaddingTop:I

    sub-int v2, p4, v2

    iget v3, p0, mPaddingBottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 708
    .local v13, "maxHeight":I
    :goto_5a
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_70

    .line 709
    const/high16 v12, 0x40000000    # 2.0f

    .line 713
    .local v12, "heightMode":I
    :goto_63
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_35

    .line 704
    .end local v10    # "childHeightMeasureSpec":I
    .end local v12    # "heightMode":I
    .end local v13    # "maxHeight":I
    :cond_68
    const/4 v1, 0x0

    move/from16 v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .restart local v13    # "maxHeight":I
    goto :goto_5a

    .line 711
    :cond_70
    const/high16 v12, -0x80000000

    .restart local v12    # "heightMode":I
    goto :goto_63
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v2, 0x1

    const/high16 v4, -0x80000000

    .line 822
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    .line 823
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 825
    .local v1, "rules":[I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_2a

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_2a

    .line 827
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 853
    :cond_23
    :goto_23
    const/16 v3, 0x15

    aget v3, v1, v3

    if-eqz v3, :cond_a9

    :goto_29
    return v2

    .line 828
    :cond_2a
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_43

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_43

    .line 830
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_23

    .line 831
    :cond_43
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_23

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_23

    .line 833
    const/16 v3, 0xd

    aget v3, v1, v3

    if-nez v3, :cond_5b

    const/16 v3, 0xe

    aget v3, v1, v3

    if-eqz v3, :cond_76

    .line 834
    :cond_5b
    if-nez p4, :cond_61

    .line 835
    invoke-static {p1, p2, p3}, centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_29

    .line 837
    :cond_61
    iget v3, p0, mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 838
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_29

    .line 844
    :cond_76
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 845
    iget v3, p0, mPaddingRight:I

    sub-int v3, p3, v3

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 846
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_23

    .line 848
    :cond_93
    iget v3, p0, mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 849
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto/16 :goto_23

    .line 853
    :cond_a9
    const/4 v2, 0x0

    goto/16 :goto_29
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v1, 0x1

    const/high16 v3, -0x80000000

    .line 859
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 861
    .local v0, "rules":[I
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_26

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v3, :cond_26

    .line 863
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 882
    :cond_1f
    :goto_1f
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_87

    :goto_25
    return v1

    .line 864
    :cond_26
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v3, :cond_3f

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_3f

    .line 866
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1f

    .line 867
    :cond_3f
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_1f

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v3, :cond_1f

    .line 869
    const/16 v2, 0xd

    aget v2, v0, v2

    if-nez v2, :cond_57

    const/16 v2, 0xf

    aget v2, v0, v2

    if-eqz v2, :cond_72

    .line 870
    :cond_57
    if-nez p4, :cond_5d

    .line 871
    invoke-static {p1, p2, p3}, centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_25

    .line 873
    :cond_5d
    iget v2, p0, mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 874
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_25

    .line 878
    :cond_72
    iget v2, p0, mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 879
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1f

    .line 882
    :cond_87
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 265
    .local v0, "version":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_16

    move v1, v2

    :goto_d
    iput-boolean v1, p0, mAllowBrokenMeasureSpecs:Z

    .line 266
    const/16 v1, 0x12

    if-lt v0, v1, :cond_18

    :goto_13
    iput-boolean v2, p0, mMeasureVerticalWithPaddingMargin:Z

    .line 267
    return-void

    :cond_16
    move v1, v3

    .line 265
    goto :goto_d

    :cond_18
    move v2, v3

    .line 266
    goto :goto_13
.end method

.method private sortChildren()V
    .registers 6

    .prologue
    .line 366
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 367
    .local v0, "count":I
    iget-object v3, p0, mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v3, :cond_d

    iget-object v3, p0, mSortedVerticalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_11

    .line 368
    :cond_d
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, mSortedVerticalChildren:[Landroid/view/View;

    .line 371
    :cond_11
    iget-object v3, p0, mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v3, :cond_1a

    iget-object v3, p0, mSortedHorizontalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_1e

    .line 372
    :cond_1a
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, mSortedHorizontalChildren:[Landroid/view/View;

    .line 375
    :cond_1e
    iget-object v1, p0, mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 376
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 378
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v0, :cond_30

    .line 379
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 382
    :cond_30
    iget-object v3, p0, mSortedVerticalChildren:[Landroid/view/View;

    sget-object v4, RULES_VERTICAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 383
    iget-object v3, p0, mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v4, RULES_HORIZONTAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 384
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1103
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1114
    iget-object v4, p0, mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_11

    .line 1115
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1119
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_16
    if-ge v1, v0, :cond_24

    .line 1120
    iget-object v4, p0, mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1123
    :cond_24
    iget-object v4, p0, mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1124
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1126
    iget-object v4, p0, mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1127
    const/4 v4, 0x1

    .line 1132
    .end local v3    # "view":Landroid/view/View;
    :goto_48
    return v4

    .line 1131
    :cond_49
    iget-object v4, p0, mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1132
    const/4 v4, 0x0

    goto :goto_48
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 1097
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1108
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1087
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1137
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_a
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1073
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 1075
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_31

    .line 1076
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1077
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2e

    .line 1078
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1080
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1075
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1083
    .end local v0    # "child":Landroid/view/View;
    :cond_31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-boolean v4, v0, mDirtyHierarchy:Z

    if-eqz v4, :cond_e

    .line 389
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mDirtyHierarchy:Z

    .line 390
    invoke-direct/range {p0 .. p0}, sortChildren()V

    .line 393
    :cond_e
    const/16 v30, -0x1

    .line 394
    .local v30, "myWidth":I
    const/16 v29, -0x1

    .line 396
    .local v29, "myHeight":I
    const/16 v42, 0x0

    .line 397
    .local v42, "width":I
    const/16 v19, 0x0

    .line 399
    .local v19, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 400
    .local v43, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 401
    .local v20, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    .line 402
    .local v44, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 405
    .local v21, "heightSize":I
    if-eqz v43, :cond_2a

    .line 406
    move/from16 v30, v44

    .line 409
    :cond_2a
    if-eqz v20, :cond_2e

    .line 410
    move/from16 v29, v21

    .line 413
    :cond_2e
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-ne v0, v4, :cond_36

    .line 414
    move/from16 v42, v30

    .line 417
    :cond_36
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v0, v4, :cond_3e

    .line 418
    move/from16 v19, v29

    .line 421
    :cond_3e
    const/16 v25, 0x0

    .line 422
    .local v25, "ignore":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, mGravity:I

    const v5, 0x800007

    and-int v18, v4, v5

    .line 423
    .local v18, "gravity":I
    const v4, 0x800003

    move/from16 v0, v18

    if-eq v0, v4, :cond_fa

    if-eqz v18, :cond_fa

    const/16 v22, 0x1

    .line 424
    .local v22, "horizontalGravity":Z
    :goto_54
    move-object/from16 v0, p0

    iget v4, v0, mGravity:I

    and-int/lit8 v18, v4, 0x70

    .line 425
    const/16 v4, 0x30

    move/from16 v0, v18

    if-eq v0, v4, :cond_fe

    if-eqz v18, :cond_fe

    const/16 v39, 0x1

    .line 427
    .local v39, "verticalGravity":Z
    :goto_64
    const v28, 0x7fffffff

    .line 428
    .local v28, "left":I
    const v38, 0x7fffffff

    .line 429
    .local v38, "top":I
    const/high16 v35, -0x80000000

    .line 430
    .local v35, "right":I
    const/high16 v12, -0x80000000

    .line 432
    .local v12, "bottom":I
    const/16 v31, 0x0

    .line 433
    .local v31, "offsetHorizontalAxis":Z
    const/16 v32, 0x0

    .line 435
    .local v32, "offsetVerticalAxis":Z
    if-nez v22, :cond_76

    if-eqz v39, :cond_87

    :cond_76
    move-object/from16 v0, p0

    iget v4, v0, mIgnoreGravity:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_87

    .line 436
    move-object/from16 v0, p0

    iget v4, v0, mIgnoreGravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 439
    :cond_87
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-eq v0, v4, :cond_102

    const/16 v27, 0x1

    .line 440
    .local v27, "isWrapContentWidth":Z
    :goto_8f
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v0, v4, :cond_105

    const/16 v26, 0x1

    .line 447
    .local v26, "isWrapContentHeight":Z
    :goto_97
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v9

    .line 448
    .local v9, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_a8

    const/4 v4, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_a8

    .line 449
    const/high16 v30, 0x10000

    .line 452
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 453
    .local v41, "views":[Landroid/view/View;
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 455
    .local v17, "count":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_b5
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_108

    .line 456
    aget-object v13, v41, v24

    .line 457
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f7

    .line 458
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 459
    .local v34, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 461
    .local v36, "rules":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v27

    invoke-direct {v0, v13, v1, v2, v3}, positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 465
    const/16 v31, 0x1

    .line 455
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_f7
    add-int/lit8 v24, v24, 0x1

    goto :goto_b5

    .line 423
    .end local v9    # "layoutDirection":I
    .end local v12    # "bottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "count":I
    .end local v22    # "horizontalGravity":Z
    .end local v24    # "i":I
    .end local v26    # "isWrapContentHeight":Z
    .end local v27    # "isWrapContentWidth":Z
    .end local v28    # "left":I
    .end local v31    # "offsetHorizontalAxis":Z
    .end local v32    # "offsetVerticalAxis":Z
    .end local v35    # "right":I
    .end local v38    # "top":I
    .end local v39    # "verticalGravity":Z
    .end local v41    # "views":[Landroid/view/View;
    :cond_fa
    const/16 v22, 0x0

    goto/16 :goto_54

    .line 425
    .restart local v22    # "horizontalGravity":Z
    :cond_fe
    const/16 v39, 0x0

    goto/16 :goto_64

    .line 439
    .restart local v12    # "bottom":I
    .restart local v28    # "left":I
    .restart local v31    # "offsetHorizontalAxis":Z
    .restart local v32    # "offsetVerticalAxis":Z
    .restart local v35    # "right":I
    .restart local v38    # "top":I
    .restart local v39    # "verticalGravity":Z
    :cond_102
    const/16 v27, 0x0

    goto :goto_8f

    .line 440
    .restart local v27    # "isWrapContentWidth":Z
    :cond_105
    const/16 v26, 0x0

    goto :goto_97

    .line 470
    .restart local v9    # "layoutDirection":I
    .restart local v17    # "count":I
    .restart local v24    # "i":I
    .restart local v26    # "isWrapContentHeight":Z
    .restart local v41    # "views":[Landroid/view/View;
    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 471
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 472
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v37, v0

    .line 474
    .local v37, "targetSdkVersion":I
    const/16 v24, 0x0

    :goto_121
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_21a

    .line 475
    aget-object v13, v41, v24

    .line 476
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1d1

    .line 477
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 479
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-direct {v0, v13, v1, v2, v3}, positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 482
    const/16 v32, 0x1

    .line 485
    :cond_15f
    if-eqz v27, :cond_179

    .line 486
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 487
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_1d5

    .line 488
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 501
    :cond_179
    :goto_179
    if-eqz v26, :cond_18b

    .line 502
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_209

    .line 503
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 509
    :cond_18b
    :goto_18b
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_191

    if-eqz v39, :cond_1af

    .line 510
    :cond_191
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 511
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v38

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 514
    :cond_1af
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_1b5

    if-eqz v22, :cond_1d1

    .line 515
    :cond_1b5
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 516
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 474
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d1
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_121

    .line 490
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d5
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_179

    .line 493
    :cond_1e7
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_1f8

    .line 494
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_179

    .line 496
    :cond_1f8
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto/16 :goto_179

    .line 505
    :cond_209
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_18b

    .line 523
    .end local v13    # "child":Landroid/view/View;
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_21a
    const/4 v11, 0x0

    .line 524
    .local v11, "baselineView":Landroid/view/View;
    const/4 v10, 0x0

    .line 525
    .local v10, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x0

    :goto_21e
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_245

    .line 526
    aget-object v13, v41, v24

    .line 527
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_242

    .line 528
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 529
    .local v15, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v11, :cond_240

    if-eqz v10, :cond_240

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-gez v4, :cond_242

    .line 531
    :cond_240
    move-object v11, v13

    .line 532
    move-object v10, v15

    .line 525
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_242
    add-int/lit8 v24, v24, 0x1

    goto :goto_21e

    .line 536
    .end local v13    # "child":Landroid/view/View;
    :cond_245
    move-object/from16 v0, p0

    iput-object v11, v0, mBaselineView:Landroid/view/View;

    .line 538
    if-eqz v27, :cond_2d6

    .line 541
    move-object/from16 v0, p0

    iget v4, v0, mPaddingRight:I

    add-int v42, v42, v4

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_26b

    move-object/from16 v0, p0

    iget-object v4, v0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_26b

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 547
    :cond_26b
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 548
    move/from16 v0, v42

    move/from16 v1, p1

    invoke-static {v0, v1}, resolveSize(II)I

    move-result v42

    .line 550
    if-eqz v31, :cond_2d6

    .line 551
    const/16 v24, 0x0

    :goto_281
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2d6

    .line 552
    aget-object v13, v41, v24

    .line 553
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2b0

    .line 554
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 555
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 556
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_2a9

    const/16 v4, 0xe

    aget v4, v36, v4

    if-eqz v4, :cond_2b3

    .line 557
    :cond_2a9
    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 551
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_2b0
    :goto_2b0
    add-int/lit8 v24, v24, 0x1

    goto :goto_281

    .line 558
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_2b3
    const/16 v4, 0xb

    aget v4, v36, v4

    if-eqz v4, :cond_2b0

    .line 559
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 560
    .local v16, "childWidth":I
    move-object/from16 v0, p0

    iget v4, v0, mPaddingRight:I

    sub-int v4, v42, v4

    sub-int v4, v4, v16

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 561
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v16

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2b0

    .line 568
    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "childWidth":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_2d6
    if-eqz v26, :cond_361

    .line 571
    move-object/from16 v0, p0

    iget v4, v0, mPaddingBottom:I

    add-int v19, v19, v4

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_2f8

    move-object/from16 v0, p0

    iget-object v4, v0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_2f8

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 577
    :cond_2f8
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 578
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, resolveSize(II)I

    move-result v19

    .line 580
    if-eqz v32, :cond_361

    .line 581
    const/16 v24, 0x0

    :goto_30e
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_361

    .line 582
    aget-object v13, v41, v24

    .line 583
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_33d

    .line 584
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 585
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 586
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_336

    const/16 v4, 0xf

    aget v4, v36, v4

    if-eqz v4, :cond_340

    .line 587
    :cond_336
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 581
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_33d
    :goto_33d
    add-int/lit8 v24, v24, 0x1

    goto :goto_30e

    .line 588
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_340
    const/16 v4, 0xc

    aget v4, v36, v4

    if-eqz v4, :cond_33d

    .line 589
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 590
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v4, v0, mPaddingBottom:I

    sub-int v4, v19, v4

    sub-int/2addr v4, v14

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 591
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, v34

    # setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_33d

    .line 598
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "childHeight":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_361
    if-nez v22, :cond_365

    if-eqz v39, :cond_3de

    .line 599
    :cond_365
    move-object/from16 v0, p0

    iget-object v7, v0, mSelfBounds:Landroid/graphics/Rect;

    .line 600
    .local v7, "selfBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingRight:I

    sub-int v6, v42, v6

    move-object/from16 v0, p0

    iget v0, v0, mPaddingBottom:I

    move/from16 v45, v0

    sub-int v45, v19, v45

    move/from16 v0, v45

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 603
    move-object/from16 v0, p0

    iget-object v8, v0, mContentBounds:Landroid/graphics/Rect;

    .line 604
    .local v8, "contentBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, mGravity:I

    sub-int v5, v35, v28

    sub-int v6, v12, v38

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 607
    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v23, v4, v28

    .line 608
    .local v23, "horizontalOffset":I
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v40, v4, v38

    .line 609
    .local v40, "verticalOffset":I
    if-nez v23, :cond_39f

    if-eqz v40, :cond_3de

    .line 610
    :cond_39f
    const/16 v24, 0x0

    :goto_3a1
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_3de

    .line 611
    aget-object v13, v41, v24

    .line 612
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3db

    move-object/from16 v0, v25

    if-eq v13, v0, :cond_3db

    .line 613
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 614
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v22, :cond_3cb

    .line 615
    move-object/from16 v0, v34

    move/from16 v1, v23

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 616
    move-object/from16 v0, v34

    move/from16 v1, v23

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 618
    :cond_3cb
    if-eqz v39, :cond_3db

    .line 619
    move-object/from16 v0, v34

    move/from16 v1, v40

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 620
    move-object/from16 v0, v34

    move/from16 v1, v40

    # += operator for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 610
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3db
    add-int/lit8 v24, v24, 0x1

    goto :goto_3a1

    .line 627
    .end local v7    # "selfBounds":Landroid/graphics/Rect;
    .end local v8    # "contentBounds":Landroid/graphics/Rect;
    .end local v13    # "child":Landroid/view/View;
    .end local v23    # "horizontalOffset":I
    .end local v40    # "verticalOffset":I
    :cond_3de
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_40f

    .line 628
    sub-int v33, v30, v42

    .line 629
    .local v33, "offsetWidth":I
    const/16 v24, 0x0

    :goto_3e8
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_40f

    .line 630
    aget-object v13, v41, v24

    .line 631
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_40c

    .line 632
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 633
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    move/from16 v1, v33

    # -= operator for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 634
    move-object/from16 v0, v34

    move/from16 v1, v33

    # -= operator for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 629
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_40c
    add-int/lit8 v24, v24, 0x1

    goto :goto_3e8

    .line 639
    .end local v13    # "child":Landroid/view/View;
    .end local v33    # "offsetWidth":I
    :cond_40f
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, setMeasuredDimension(II)V

    .line 640
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, mDirtyHierarchy:Z

    .line 363
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 322
    iget v0, p0, mGravity:I

    if-eq v0, p1, :cond_19

    .line 323
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 324
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 327
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 328
    or-int/lit8 p1, p1, 0x30

    .line 331
    :cond_14
    iput p1, p0, mGravity:I

    .line 332
    invoke-virtual {p0}, requestLayout()V

    .line 334
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 338
    and-int v0, p1, v2

    .line 339
    .local v0, "gravity":I
    iget v1, p0, mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    .line 340
    iget v1, p0, mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, mGravity:I

    .line 341
    invoke-virtual {p0}, requestLayout()V

    .line 343
    :cond_16
    return-void
.end method

.method public setIgnoreGravity(I)V
    .registers 2
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 287
    iput p1, p0, mIgnoreGravity:I

    .line 288
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 347
    and-int/lit8 v0, p1, 0x70

    .line 348
    .local v0, "gravity":I
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 349
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, mGravity:I

    .line 350
    invoke-virtual {p0}, requestLayout()V

    .line 352
    :cond_12
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method
