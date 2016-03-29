.class public Lcom/android/settings/UnlockEffect;
.super Landroid/app/Activity;
.source "UnlockEffect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UnlockEffect$RadioAdapter;
    }
.end annotation


# static fields
.field static final EffectName:[I

.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

.field backgroundImage:[I

.field dbValues:[Ljava/lang/String;

.field private mDefaultUnlock:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsTablet:Z

.field private mListView:Landroid/widget/ListView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTabletView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/UnlockEffect;->EffectName:[I

    return-void

    :array_0
    .array-data 4
        0x7f0e14c1
        0x7f0e14ca
        0x7f0e1155
        0x7f0e14c6
        0x7f0e14c9
        0x7f0e1155
        0x7f0e1155
        0x7f0e14c8
        0x7f0e14c5
        0x7f0e1155
        0x7f0e14c2
        0x7f0e14c3
        0x7f0e14c4
        0x7f0e14cb
        0x7f0e14c7
        0x7f0e14cc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    .line 54
    iput v0, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UnlockEffect;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UnlockEffect;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    return v0
.end method

.method private createDialogforTablet()V
    .locals 5

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04021f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    .line 162
    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->initViewforTablet()V

    .line 163
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v2, 0x7f0e1155

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 166
    const v2, 0x7f0e0f72

    new-instance v3, Lcom/android/settings/UnlockEffect$1;

    invoke-direct {v3, p0}, Lcom/android/settings/UnlockEffect$1;-><init>(Lcom/android/settings/UnlockEffect;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/UnlockEffect$2;

    invoke-direct {v3, p0}, Lcom/android/settings/UnlockEffect$2;-><init>(Lcom/android/settings/UnlockEffect;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/UnlockEffect$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/UnlockEffect$3;-><init>(Lcom/android/settings/UnlockEffect;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 191
    return-void
.end method

.method private initViewforTablet()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 196
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    .line 197
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mTabletView:Landroid/view/View;

    const v1, 0x7f0d0276

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->populateUnlockEffectsOptions()V

    .line 201
    new-instance v0, Lcom/android/settings/UnlockEffect$RadioAdapter;

    const v1, 0x7f040125

    sget-object v2, Lcom/android/settings/UnlockEffect;->mModeItem:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/UnlockEffect$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    .line 203
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->updateImageResource()V

    .line 209
    return-void
.end method

.method private updateImageResource()V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    if-ne v1, v2, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->recreate()V

    .line 252
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->createDialogforTablet()V

    .line 158
    :goto_0
    return-void

    .line 111
    :cond_0
    const v1, 0x7f04012d

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 118
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    .line 121
    const v1, 0x7f0d0276

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    .line 122
    invoke-static {p0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const v1, 0x7f0d0331

    invoke-virtual {p0, v1}, Lcom/android/settings/UnlockEffect;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 124
    .local v11, "imageViewforkeyboard":Landroid/widget/ImageView;
    if-eqz v11, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iput-object v11, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    .line 127
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    .end local v11    # "imageViewforkeyboard":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->populateUnlockEffectsOptions()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 134
    .local v12, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0c00b0

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0c00aa

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    .line 139
    .local v4, "divider_inset_size":I
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 142
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_1
    new-instance v1, Lcom/android/settings/UnlockEffect$RadioAdapter;

    const v3, 0x7f040124

    sget-object v5, Lcom/android/settings/UnlockEffect;->mModeItem:[Ljava/lang/String;

    invoke-direct {v1, p0, v3, v5}, Lcom/android/settings/UnlockEffect$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    .line 151
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/UnlockEffect;->adapter:Lcom/android/settings/UnlockEffect$RadioAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/UnlockEffect;->updateImageResource()V

    goto/16 :goto_0

    .line 144
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 146
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-boolean v0, p0, Lcom/android/settings/UnlockEffect;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I

    .line 262
    :goto_0
    const-string v0, "UnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockscreen_ripple_effect DB Value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->finish()V

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v2, "selected_idx"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "idx":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/UnlockEffect;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "UnlockEffect"

    const-string v3, "ArrayIndexOutOfBoundsException Occured.  set to Popping Colour."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "SavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string v0, "selected_idx"

    iget-object v1, p0, Lcom/android/settings/UnlockEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method populateUnlockEffectsOptions()V
    .locals 8

    .prologue
    const v7, 0x7f0202ac

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "ctr":I
    const-string v4, "ONLYFORSHORTCUTS"

    .line 269
    .local v4, "mEffectType":Ljava/lang/String;
    const-string v5, "ONLYFORSHORTCUTS"

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "aChangedEffectEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "aChangedEffectEntryValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x10

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    .line 291
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v5, "0"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .local v3, "ctr":I
    const v6, 0x7f0202ae

    aput v6, v5, v2

    move v2, v3

    .line 297
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_0
    const-string v5, "com.sec.android.app.montblanc"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v5, "10"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202ad

    aput v6, v5, v2

    move v2, v3

    .line 303
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_1
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "COLOURDROPLET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    const-string v5, "15"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    aput v7, v5, v2

    move v2, v3

    .line 309
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_2
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "WATERDROPLET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v5, "13"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    aput v7, v5, v2

    move v2, v3

    .line 315
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_3
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "SPARKLINGBUBBLES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v5, "14"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202af

    aput v6, v5, v2

    move v2, v3

    .line 321
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_4
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "ABSTRACTTILES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v5, "11"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202a9

    aput v6, v5, v2

    move v2, v3

    .line 327
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_5
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "GEOMETRICMOSAIC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v5, "12"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202ab

    aput v6, v5, v2

    move v2, v3

    .line 333
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_6
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "BRILLIANTRING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v5, "8"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202aa

    aput v6, v5, v2

    move v2, v3

    .line 339
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_7
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "POPPINGCOLOURS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v5, "3"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202b0

    aput v6, v5, v2

    move v2, v3

    .line 345
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_8
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "STONESKIPPING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v5, "7"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202b2

    aput v6, v5, v2

    move v2, v3

    .line 350
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_9
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "WATERCOLOUR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v5, "4"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202b3

    aput v6, v5, v2

    move v2, v3

    .line 355
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_a
    const-string v5, "ONLYFORSHORTCUTS"

    const-string v6, "RIPPLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/UnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e14ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v5, "1"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v5, p0, Lcom/android/settings/UnlockEffect;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v6, 0x7f0202b1

    aput v6, v5, v2

    move v2, v3

    .line 362
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    sput-object v5, Lcom/android/settings/UnlockEffect;->mModeItem:[Ljava/lang/String;

    .line 363
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/UnlockEffect;->dbValues:[Ljava/lang/String;

    .line 365
    .end local v0    # "aChangedEffectEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aChangedEffectEntryValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    return-void
.end method
