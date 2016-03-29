.class public Lcom/android/setupwizardlib/view/NavigationBar$NavButton;
.super Landroid/widget/Button;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavButton"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->setCompoundDrawablePadding(I)V

    .line 170
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$dimen;->suw_navbar_button_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    if-eqz p1, :cond_1

    const/16 v0, 0xff

    .line 147
    .local v0, "alpha":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 150
    .local v6, "relativeDrawables":[Landroid/graphics/drawable/Drawable;
    move-object v1, v6

    .local v1, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 151
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "alpha":I
    .end local v1    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "relativeDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v0, 0x3b

    goto :goto_0

    .line 156
    .restart local v0    # "alpha":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar$NavButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    .local v2, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .restart local v1    # "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v3, v1, v4

    .line 158
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 159
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method
