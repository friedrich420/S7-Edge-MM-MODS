.class public Lcom/android/systemui/volume/SpTexts;
.super Ljava/lang/Object;
.source "SpTexts.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateAll:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    .line 70
    new-instance v0, Lcom/android/systemui/volume/SpTexts$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SpTexts$2;-><init>(Lcom/android/systemui/volume/SpTexts;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mUpdateAll:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/volume/SpTexts;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/SpTexts;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SpTexts;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SpTexts;->setTextSizeH(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/SpTexts;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SpTexts;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private setTextSizeH(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "sp"    # I

    .prologue
    .line 67
    const/4 v0, 0x2

    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    return-void
.end method


# virtual methods
.method public add(Landroid/widget/TextView;)I
    .locals 7
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 41
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 58
    :goto_0
    return v4

    .line 42
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SpTexts;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 43
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 44
    .local v1, "fontScale":F
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 45
    .local v0, "density":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 46
    .local v2, "px":F
    div-float v5, v2, v1

    div-float/2addr v5, v0

    float-to-int v4, v5

    .line 47
    .local v4, "sp":I
    iget-object v5, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v5, Lcom/android/systemui/volume/SpTexts$1;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/systemui/volume/SpTexts$1;-><init>(Lcom/android/systemui/volume/SpTexts;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SpTexts;->mUpdateAll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
