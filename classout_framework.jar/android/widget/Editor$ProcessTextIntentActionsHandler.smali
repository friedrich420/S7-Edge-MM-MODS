.class final Landroid/widget/Editor$ProcessTextIntentActionsHandler;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessTextIntentActionsHandler"
.end annotation


# instance fields
.field private final mAccessibilityActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditor:Landroid/widget/Editor;

.field private mMenuItemImgSize:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 4
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6252
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mAccessibilityIntents:Landroid/util/SparseArray;

    .line 6253
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mAccessibilityActions:Landroid/util/SparseArray;

    .line 6259
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, mEditor:Landroid/widget/Editor;

    .line 6260
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mTextView:Landroid/widget/TextView;

    .line 6261
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 6263
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080a16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, mMenuItemImgSize:I

    .line 6264
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 6247
    invoke-direct {p0, p1}, <init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 6378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 6372
    invoke-direct {p0}, createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private fireIntent(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 6357
    if-eqz p1, :cond_26

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6358
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6359
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v0, v1, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 6360
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    const/16 v2, 0x64

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6363
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 6384
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6367
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6368
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public initializeAccessibilityActions()V
    .registers 9

    .prologue
    .line 6321
    iget-object v5, p0, mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 6322
    iget-object v5, p0, mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 6323
    const/4 v1, 0x0

    .line 6324
    .local v1, "i":I
    invoke-direct {p0}, getSupportedActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 6325
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const v5, 0x10000100

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int v0, v5, v1

    .line 6326
    .local v0, "actionId":I
    iget-object v5, p0, mAccessibilityActions:Landroid/util/SparseArray;

    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, v4}, getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6330
    iget-object v5, p0, mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-direct {p0, v4}, createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    .line 6332
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_13

    .line 6333
    .end local v0    # "actionId":I
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 6341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 6342
    iget-object v1, p0, mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 6341
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6344
    :cond_17
    return-void
.end method

.method public onInitializeMenu(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 6270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, onInitializeMenu(Landroid/view/Menu;Z)V

    .line 6271
    return-void
.end method

.method public onInitializeMenu(Landroid/view/Menu;Z)V
    .registers 16
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "isDeviceDefault"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 6273
    const/4 v3, 0x0

    .line 6274
    .local v3, "i":I
    invoke-direct {p0}, getSupportedActivities()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 6275
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6276
    .local v8, "resolveInfoString":Ljava/lang/String;
    if-eqz v8, :cond_88

    if-eqz p2, :cond_88

    .line 6277
    iget-object v9, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 6278
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6279
    .local v0, "MenuIcon":Landroid/graphics/drawable/Drawable;
    const-string v9, "com.sec.android.app.translator"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3d

    const-string v9, "com.google.android.apps.translate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 6280
    :cond_3d
    iget-object v9, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080a18

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6289
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_88

    .line 6290
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    add-int/lit8 v9, v3, 0xa

    invoke-direct {p0, v7}, getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {p1, v11, v11, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-direct {p0, v7}, createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v3, v4

    .line 6296
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_b

    .line 6281
    :cond_6d
    if-eqz v0, :cond_4e

    .line 6282
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 6283
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 6284
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 6285
    .local v1, "cf":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6286
    iget v9, p0, mMenuItemImgSize:I

    iget v10, p0, mMenuItemImgSize:I

    invoke-virtual {v0, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4e

    .line 6299
    .end local v0    # "MenuIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cf":Landroid/graphics/ColorMatrixColorFilter;
    .end local v2    # "cm":Landroid/graphics/ColorMatrix;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_88
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    add-int/lit8 v9, v3, 0xa

    invoke-direct {p0, v7}, getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {p1, v11, v11, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-direct {p0, v7}, createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v3, v4

    .line 6304
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_b

    .line 6305
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "resolveInfoString":Ljava/lang/String;
    :cond_a2
    return-void
.end method

.method public performAccessibilityAction(I)Z
    .registers 3
    .param p1, "actionId"    # I

    .prologue
    .line 6353
    iget-object v0, p0, mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public performMenuItemAction(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 6314
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
