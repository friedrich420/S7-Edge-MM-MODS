.class Lcom/android/settings/MultiLinePreference;
.super Landroid/preference/Preference;
.source "KnoxChooseLockTwoFactor.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MultiLinePreference;->mContext:Landroid/content/Context;

    .line 580
    iput-object p1, p0, Lcom/android/settings/MultiLinePreference;->mContext:Landroid/content/Context;

    .line 581
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 584
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MultiLinePreference;->mContext:Landroid/content/Context;

    .line 585
    iput-object p1, p0, Lcom/android/settings/MultiLinePreference;->mContext:Landroid/content/Context;

    .line 586
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 589
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MultiLinePreference;->mContext:Landroid/content/Context;

    .line 590
    iput-object p1, p0, Lcom/android/settings/MultiLinePreference;->mContext:Landroid/content/Context;

    .line 591
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 597
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 598
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 599
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 600
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 602
    :cond_0
    return-void
.end method
