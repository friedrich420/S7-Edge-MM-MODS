.class public Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;
.super Landroid/preference/Preference;
.source "AssistantMenuPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AssistantMenuPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagnifierImageView"
.end annotation


# instance fields
.field public currentMag:I

.field public img:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private mIcon:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setValue"    # I

    .prologue
    .line 549
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 539
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mIcon:[I

    .line 550
    iput-object p1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    .line 551
    const v0, 0x7f04012f

    invoke-virtual {p0, v0}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setLayoutResource(I)V

    .line 552
    iput p2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setSelectable(Z)V

    .line 554
    return-void

    .line 539
    nop

    :array_0
    .array-data 4
        0x7f02024a
        0x7f02024b
        0x7f02024c
        0x7f02024d
        0x7f02024e
        0x7f02024f
        0x7f020250
        0x7f020251
    .end array-data
.end method


# virtual methods
.method public ImageChange(I)V
    .locals 3
    .param p1, "zoomvalue"    # I

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 572
    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 573
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 574
    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 577
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 564
    const v0, 0x7f0d0333

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    .line 565
    iget v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    .line 566
    const-string v0, "AssistantMenuPreferenceFragment"

    const-string v1, "Magnifier image"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void
.end method

.method public setHoverZoomImageLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    .line 558
    iget v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    .line 559
    return-void
.end method
