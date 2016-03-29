.class public Lcom/android/settings/wifi/AccessPointListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessPointListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointListAdapter$1;,
        Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_GIGA_NONE:[I

.field private static final STATE_GIGA_SECURED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field mApList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field mContext:Landroid/content/Context;

.field private mCounter:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field private mNotifyOnChange:Z

.field private mPreviousSummary:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mTypedArray:Landroid/content/res/TypedArray;

.field private mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-array v0, v3, [I

    const v1, 0x7f01011a

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_SECURED:[I

    .line 67
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_NONE:[I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_GIGA_SECURED:[I

    .line 71
    new-array v0, v3, [I

    const v1, 0x7f01011b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_GIGA_NONE:[I

    .line 75
    new-array v0, v3, [I

    const v1, 0x7f01014e

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPointListAdapter;->wifi_signal_attributes:[I

    return-void

    .line 68
    :array_0
    .array-data 4
        0x7f01011b
        0x7f01011a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 55
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    .line 57
    const v1, 0x10900bb

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mLayoutResId:I

    .line 58
    iput v5, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mCounter:I

    .line 60
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mPreviousSummary:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    .line 78
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 80
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const v3, 0x101008e

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mLayoutResId:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/AccessPointListAdapter;->wifi_signal_attributes:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->setId(I)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mCounter:I

    .line 91
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateIcon(Landroid/widget/ImageView;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "ap"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 425
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPoint;->getApIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 426
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 427
    .local v2, "level":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 428
    const/4 v2, 0x5

    .line 430
    :cond_0
    if-nez v1, :cond_6

    .line 431
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_2

    .line 432
    const-string v3, "KTT"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/Utils;->PREFERRED_BAND:Ljava/lang/String;

    const-string v4, "11AC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p2, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    if-eqz v3, :cond_4

    .line 433
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_GIGA_SECURED:[I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 438
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 439
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 441
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    return-void

    .line 433
    :cond_3
    sget-object v3, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_GIGA_NONE:[I

    goto :goto_0

    .line 435
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_SECURED:[I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/android/settings/wifi/AccessPointListAdapter;->STATE_NONE:[I

    goto :goto_3

    .line 444
    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private updatetext(Landroid/content/Context;Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;
    .param p3, "ap"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 248
    invoke-virtual {p3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 249
    invoke-virtual {p3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 252
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#ff"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "color":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/settings/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .end local v0    # "color":Ljava/lang/String;
    :goto_0
    iget-object v1, p2, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, p2, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/settings/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v2, p2, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-boolean v1, p3, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    .line 257
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#ff"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "color":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/settings/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    .end local v0    # "color":Ljava/lang/String;
    :cond_3
    iget-object v1, p2, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/settings/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public append(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 2
    .param p1, "ap"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mCounter:I

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/AccessPoint;->setId(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 214
    :cond_1
    return-void
.end method

.method public getAccessPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 113
    .local v0, "ap":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getId()I

    move-result v1

    int-to-long v2, v1

    .line 117
    .end local v0    # "ap":Lcom/android/settings/wifi/AccessPoint;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 127
    move-object v3, p2

    .line 130
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_3

    .line 131
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mLayoutResId:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 132
    new-instance v1, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;

    invoke-direct {v1, v7}, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;-><init>(Lcom/android/settings/wifi/AccessPointListAdapter$1;)V

    .line 133
    .local v1, "holder":Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 134
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 135
    const v5, 0x1020010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 136
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 143
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_2

    .line 148
    iget-object v5, v1, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->updateIcon(Landroid/widget/ImageView;Lcom/android/settings/wifi/AccessPoint;)V

    .line 149
    iget-object v5, v1, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 150
    .local v4, "viewdrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 152
    .local v2, "level":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 153
    const/4 v2, 0x5

    .line 155
    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 158
    .end local v2    # "level":I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v1, v0}, Lcom/android/settings/wifi/AccessPointListAdapter;->updatetext(Landroid/content/Context;Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;Lcom/android/settings/wifi/AccessPoint;)V

    .line 163
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v4    # "viewdrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v3

    .line 138
    .end local v1    # "holder":Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/settings/wifi/AccessPointListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Lcom/android/settings/wifi/AccessPoint;I)V
    .locals 2
    .param p1, "objects"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "index"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 196
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mCounter:I

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/AccessPoint;->setId(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 201
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 202
    :cond_1
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    .line 189
    return-void
.end method

.method public remove(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 4
    .param p1, "ap"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 217
    if-eqz p1, :cond_1

    .line 218
    const/4 v1, -0x1

    .line 219
    .local v1, "foundIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 221
    .local v0, "curAp":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    move v1, v2

    .line 229
    .end local v0    # "curAp":Lcom/android/settings/wifi/AccessPoint;
    :cond_0
    if-ltz v1, :cond_1

    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "foundIndex":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 238
    :cond_2
    return-void

    .line 219
    .restart local v0    # "curAp":Lcom/android/settings/wifi/AccessPoint;
    .restart local v1    # "foundIndex":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "curAp":Lcom/android/settings/wifi/AccessPoint;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public removeall()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_0
    return-void
.end method

.method public setAccessPointList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    if-nez p1, :cond_2

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 180
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 181
    :cond_1
    return-void

    .line 174
    :cond_2
    const/4 v2, 0x0

    .line 175
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 176
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/AccessPointListAdapter;->insert(Lcom/android/settings/wifi/AccessPoint;I)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 178
    goto :goto_0
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .param p1, "notifyOnChange"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    .line 184
    return-void
.end method
