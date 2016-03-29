.class Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;
.super Landroid/preference/Preference;
.source "ToggleAccessControlPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 146
    const v2, 0x7f0d007a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 147
    .local v1, "interactionHelpImage":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 148
    const v2, 0x7f0201fb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 154
    .local v0, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 157
    :cond_0
    return-void

    .line 150
    .end local v0    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    const v2, 0x7f0201f7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
