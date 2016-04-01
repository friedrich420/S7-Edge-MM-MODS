.class Landroid/widget/SuggestionsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mDefaultSpannableColor:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private mIsDeviceDefault:Z

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchManager:Landroid/app/SearchManager;

.field private final mSearchView:Landroid/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mSpannableTextColor:I

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchView"    # Landroid/widget/SearchView;
    .param p3, "searchable"    # Landroid/app/SearchableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "outsideDrawablesCache":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 108
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionRowLayout()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5, v8}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 77
    iput-boolean v7, p0, mClosed:Z

    .line 78
    iput v8, p0, mQueryRefinement:I

    .line 79
    const v4, -0xff5f32

    iput v4, p0, mDefaultSpannableColor:I

    .line 80
    iget v4, p0, mDefaultSpannableColor:I

    iput v4, p0, mSpannableTextColor:I

    .line 81
    iput-boolean v7, p0, mIsDeviceDefault:Z

    .line 90
    iput v6, p0, mText1Col:I

    .line 91
    iput v6, p0, mText2Col:I

    .line 92
    iput v6, p0, mText2UrlCol:I

    .line 93
    iput v6, p0, mIconName1Col:I

    .line 94
    iput v6, p0, mIconName2Col:I

    .line 95
    iput v6, p0, mFlagsCol:I

    .line 111
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    iput-object v4, p0, mSearchManager:Landroid/app/SearchManager;

    .line 112
    iput-object p2, p0, mSearchView:Landroid/widget/SearchView;

    .line 113
    iput-object p3, p0, mSearchable:Landroid/app/SearchableInfo;

    .line 114
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result v4

    iput v4, p0, mCommitIconResId:I

    .line 116
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 117
    .local v2, "outValue":Landroid/util/TypedValue;
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_80

    .line 118
    .local v3, "twAttr":[I
    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, mIsDeviceDefault:Z

    .line 120
    iget v4, p0, mDefaultSpannableColor:I

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, mSpannableTextColor:I

    .line 123
    iget-object v4, p0, mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 124
    .local v1, "activityContext":Landroid/content/Context;
    iget-object v4, p0, mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, mProviderContext:Landroid/content/Context;

    .line 126
    iput-object p4, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 141
    invoke-virtual {p0}, getFilter()Landroid/widget/Filter;

    move-result-object v4

    new-instance v5, Landroid/widget/SuggestionsAdapter$1;

    invoke-direct {v5, p0}, Landroid/widget/SuggestionsAdapter$1;-><init>(Landroid/widget/SuggestionsAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    return-void

    .line 117
    :array_80
    .array-data 4
        0x1010434
        0x11600bd
    .end array-data
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "resourceUri"    # Ljava/lang/String;

    .prologue
    .line 713
    iget-object v1, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 714
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_c

    .line 715
    const/4 v1, 0x0

    .line 718
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_b
.end method

.method private formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1e

    .line 467
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 468
    .local v6, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1160003

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 469
    iget v0, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, mUrlColor:Landroid/content/res/ColorStateList;

    .line 472
    .end local v6    # "colorValue":Landroid/util/TypedValue;
    :cond_1e
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 473
    .local v7, "text":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 476
    return-object v7
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    .line 777
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 780
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    :try_start_9
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_15

    move-result-object v0

    .line 785
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 786
    .local v3, "iconId":I
    if-nez v3, :cond_21

    move-object v1, v6

    .line 794
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "iconId":I
    :cond_14
    :goto_14
    return-object v1

    .line 781
    :catch_15
    move-exception v2

    .line 782
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 783
    goto :goto_14

    .line 787
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "iconId":I
    :cond_21
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "pkg":Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v3, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 789
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_14

    .line 790
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid icon resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 792
    goto :goto_14
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 755
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "componentIconKey":Ljava/lang/String;
    iget-object v5, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 758
    iget-object v5, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 759
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_18

    .line 766
    .end local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_17
    return-object v4

    .line 759
    .restart local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_18
    iget-object v4, p0, mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_17

    .line 762
    .end local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_23
    invoke-direct {p0, p1}, getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 764
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_31

    move-object v3, v4

    .line 765
    .local v3, "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2a
    iget-object v4, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 766
    goto :goto_17

    .line 764
    .end local v3    # "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_31
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    goto :goto_2a
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 806
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 807
    .local v0, "col":I
    invoke-static {p0, v0}, getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 736
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 737
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    .line 742
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_c
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_d
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 680
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "scheme":Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 683
    iget-object v5, p0, mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_16} :catch_40

    move-result-object v2

    .line 686
    .local v2, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_17
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v8, p0, mProviderContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_24} :catch_26
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_24} :catch_40

    move-result-object v5

    .line 708
    .end local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3    # "scheme":Ljava/lang/String;
    :goto_25
    return-object v5

    .line 687
    .restart local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .restart local v3    # "scheme":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 688
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    :try_start_27
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_40} :catch_40

    .line 706
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3    # "scheme":Ljava/lang/String;
    :catch_40
    move-exception v1

    .line 707
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 708
    goto :goto_25

    .line 692
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v3    # "scheme":Ljava/lang/String;
    :cond_69
    :try_start_69
    iget-object v5, p0, mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 693
    .local v4, "stream":Ljava/io/InputStream;
    if-nez v4, :cond_8e

    .line 694
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_8e} :catch_40

    .line 697
    :cond_8e
    const/4 v5, 0x0

    :try_start_8f
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_b2

    move-result-object v5

    .line 700
    :try_start_93
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97
    .catch Ljava/io/FileNotFoundException; {:try_start_93 .. :try_end_96} :catch_40

    goto :goto_25

    .line 701
    :catch_97
    move-exception v0

    .line 702
    .local v0, "ex":Ljava/io/IOException;
    :try_start_98
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_b0} :catch_40

    goto/16 :goto_25

    .line 699
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_b2
    move-exception v5

    .line 700
    :try_start_b3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_b6} :catch_40

    .line 703
    :goto_b6
    :try_start_b6
    throw v5

    .line 701
    :catch_b7
    move-exception v0

    .line 702
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_d0} :catch_40

    goto :goto_b6
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 637
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_11
    move-object v0, v5

    .line 669
    :cond_12
    :goto_12
    return-object v0

    .line 642
    :cond_13
    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 644
    .local v3, "resourceId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "drawableUri":Ljava/lang/String;
    invoke-direct {p0, v1}, checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 648
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_12

    .line 652
    iget-object v6, p0, mProviderContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 654
    invoke-direct {p0, v1, v0}, storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_49} :catch_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_49} :catch_5d

    goto :goto_12

    .line 656
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawableUri":Ljava/lang/String;
    .end local v3    # "resourceId":I
    :catch_4a
    move-exception v2

    .line 658
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 659
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_12

    .line 662
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 663
    .local v4, "uri":Landroid/net/Uri;
    invoke-direct {p0, v4}, getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 664
    invoke-direct {p0, p1, v0}, storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 666
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_5d
    move-exception v2

    .line 668
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon resource not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 669
    goto :goto_12
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 491
    iget v2, p0, mIconName1Col:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 492
    const/4 v0, 0x0

    .line 499
    :cond_6
    :goto_6
    return-object v0

    .line 494
    :cond_7
    iget v2, p0, mIconName1Col:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 496
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_6

    .line 499
    invoke-direct {p0, p1}, getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 503
    iget v1, p0, mIconName2Col:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 504
    const/4 v1, 0x0

    .line 507
    :goto_6
    return-object v1

    .line 506
    :cond_7
    iget v1, p0, mIconName2Col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_6
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # I

    .prologue
    const/4 v1, 0x0

    .line 811
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 820
    :goto_4
    return-object v1

    .line 815
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v1

    goto :goto_4

    .line 816
    :catch_a
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    const-string/jumbo v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "nullVisibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    if-nez p2, :cond_a

    .line 520
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    :goto_9
    return-void

    .line 522
    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 530
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_9
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 481
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 484
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    :goto_e
    return-void

    .line 486
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "resourceUri"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 722
    if-eqz p2, :cond_b

    .line 723
    iget-object v0, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_b
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 249
    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 257
    .local v0, "extras":Landroid/os/Bundle;
    :goto_6
    if-eqz v0, :cond_10

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 264
    :cond_10
    return-void

    .line 249
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 333
    .local v16, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    move-object/from16 v0, p0

    iget-object v0, v0, mSearchView:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "lQuery":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    .line 335
    .local v11, "queryLength":I
    const/4 v5, 0x0

    .line 337
    .local v5, "isURL":Z
    const/4 v4, 0x0

    .line 338
    .local v4, "flags":I
    move-object/from16 v0, p0

    iget v0, v0, mFlagsCol:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, mFlagsCol:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 341
    :cond_36
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a5

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, mText1Col:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v13

    .line 343
    .local v13, "text1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_249

    if-eqz v13, :cond_249

    .line 344
    const/4 v8, 0x0

    .line 345
    .local v8, "matchText1":Landroid/text/SpannableStringBuilder;
    const/4 v10, -0x1

    .line 347
    .local v10, "queryIndex":I
    if-nez v11, :cond_1fd

    .line 348
    const/4 v10, -0x1

    .line 360
    :goto_5b
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_80

    if-lez v11, :cond_80

    .line 361
    new-instance v8, Landroid/text/SpannableStringBuilder;

    .end local v8    # "matchText1":Landroid/text/SpannableStringBuilder;
    invoke-direct {v8, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 362
    .restart local v8    # "matchText1":Landroid/text/SpannableStringBuilder;
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, mSpannableTextColor:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v18, v10, v11

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v10, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 364
    :cond_80
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 365
    if-eqz v8, :cond_23a

    .line 366
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 372
    .end local v8    # "matchText1":Landroid/text/SpannableStringBuilder;
    .end local v10    # "queryIndex":I
    :goto_9a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setFingerHoveredInAppWidget(Z)V

    .line 374
    .end local v13    # "text1":Ljava/lang/String;
    :cond_a5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15b

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, mText2UrlCol:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v14

    .line 377
    .local v14, "text2":Ljava/lang/CharSequence;
    if-eqz v14, :cond_258

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_ce

    const/4 v5, 0x1

    .line 386
    :cond_ce
    :goto_ce
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_268

    .line 387
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f2

    .line 388
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 389
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 398
    :cond_f2
    :goto_f2
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2e5

    if-nez v5, :cond_2e5

    .line 399
    const/4 v9, 0x0

    .line 400
    .local v9, "matchText2":Landroid/text/SpannableStringBuilder;
    const/4 v10, -0x1

    .line 401
    .restart local v10    # "queryIndex":I
    move-object/from16 v0, p0

    iget v0, v0, mText2Col:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v15

    .line 403
    .local v15, "text2_1":Ljava/lang/String;
    if-nez v11, :cond_288

    .line 404
    const/4 v10, -0x1

    .line 417
    :cond_10f
    :goto_10f
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_136

    if-lez v11, :cond_136

    if-eqz v15, :cond_136

    .line 418
    new-instance v9, Landroid/text/SpannableStringBuilder;

    .end local v9    # "matchText2":Landroid/text/SpannableStringBuilder;
    invoke-direct {v9, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 419
    .restart local v9    # "matchText2":Landroid/text/SpannableStringBuilder;
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, mSpannableTextColor:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v18, v10, v11

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v9, v0, v10, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 421
    :cond_136
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 422
    if-eqz v9, :cond_2c7

    .line 423
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 431
    .end local v9    # "matchText2":Landroid/text/SpannableStringBuilder;
    .end local v10    # "queryIndex":I
    .end local v15    # "text2_1":Ljava/lang/String;
    :goto_150
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setFingerHoveredInAppWidget(Z)V

    .line 434
    .end local v14    # "text2":Ljava/lang/CharSequence;
    :cond_15b
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_186

    .line 435
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2f4

    .line 436
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 441
    :cond_186
    :goto_186
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a9

    .line 442
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 444
    :cond_1a9
    move-object/from16 v0, p0

    iget v0, v0, mQueryRefinement:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c9

    move-object/from16 v0, p0

    iget v0, v0, mQueryRefinement:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_311

    and-int/lit8 v17, v4, 0x1

    if-eqz v17, :cond_311

    .line 447
    :cond_1c9
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1ef

    .line 449
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 451
    :cond_1ef
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :goto_1fc
    return-void

    .line 350
    .restart local v8    # "matchText1":Landroid/text/SpannableStringBuilder;
    .restart local v10    # "queryIndex":I
    .restart local v13    # "text1":Ljava/lang/String;
    :cond_1fd
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v7

    .line 352
    .local v7, "lQueryForIndian":[C
    if-eqz v7, :cond_22c

    .line 353
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([C)V

    .line 354
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 355
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 356
    goto/16 :goto_5b

    .line 357
    .end local v12    # "s":Ljava/lang/String;
    :cond_22c
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_5b

    .line 368
    .end local v7    # "lQueryForIndian":[C
    :cond_23a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_9a

    .line 370
    .end local v8    # "matchText1":Landroid/text/SpannableStringBuilder;
    .end local v10    # "queryIndex":I
    :cond_249
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_9a

    .line 381
    .end local v13    # "text1":Ljava/lang/String;
    .restart local v14    # "text2":Ljava/lang/CharSequence;
    :cond_258
    move-object/from16 v0, p0

    iget v0, v0, mText2Col:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_ce

    .line 392
    :cond_268
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f2

    .line 393
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 394
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_f2

    .line 406
    .restart local v9    # "matchText2":Landroid/text/SpannableStringBuilder;
    .restart local v10    # "queryIndex":I
    .restart local v15    # "text2_1":Ljava/lang/String;
    :cond_288
    if-eqz v15, :cond_10f

    .line 407
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v7

    .line 408
    .restart local v7    # "lQueryForIndian":[C
    if-eqz v7, :cond_2b9

    .line 409
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([C)V

    .line 410
    .restart local v12    # "s":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 411
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 412
    goto/16 :goto_10f

    .line 413
    .end local v12    # "s":Ljava/lang/String;
    :cond_2b9
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_10f

    .line 425
    .end local v7    # "lQueryForIndian":[C
    :cond_2c7
    if-eqz v15, :cond_2d8

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_150

    .line 426
    :cond_2d8
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_150

    .line 429
    .end local v9    # "matchText2":Landroid/text/SpannableStringBuilder;
    .end local v10    # "queryIndex":I
    .end local v15    # "text2_1":Ljava/lang/String;
    :cond_2e5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_150

    .line 438
    .end local v14    # "text2":Ljava/lang/CharSequence;
    :cond_2f4
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_186

    .line 453
    :cond_311
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1fc
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 273
    iget-boolean v1, p0, mClosed:Z

    if-eqz v1, :cond_11

    .line 274
    const-string v1, "SuggestionsAdapter"

    const-string v2, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_10
    :goto_10
    return-void

    .line 280
    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 282
    if-eqz p1, :cond_10

    .line 283
    const-string/jumbo v1, "suggest_text_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mText1Col:I

    .line 284
    const-string/jumbo v1, "suggest_text_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mText2Col:I

    .line 285
    const-string/jumbo v1, "suggest_text_2_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mText2UrlCol:I

    .line 286
    const-string/jumbo v1, "suggest_icon_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mIconName1Col:I

    .line 287
    const-string/jumbo v1, "suggest_icon_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mIconName2Col:I

    .line 288
    const-string/jumbo v1, "suggest_flags"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mFlagsCol:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4c} :catch_4d

    goto :goto_10

    .line 290
    :catch_4d
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SuggestionsAdapter"

    const-string v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public close()V
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, changeCursor(Landroid/database/Cursor;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, mClosed:Z

    .line 228
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 544
    if-nez p1, :cond_5

    move-object v1, v3

    .line 567
    :cond_4
    :goto_4
    return-object v1

    .line 548
    :cond_5
    const-string/jumbo v4, "suggest_intent_query"

    invoke-static {p1, v4}, getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 553
    iget-object v4, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 554
    const-string/jumbo v4, "suggest_intent_data"

    invoke-static {p1, v4}, getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_21

    move-object v1, v0

    .line 556
    goto :goto_4

    .line 560
    .end local v0    # "data":Ljava/lang/String;
    :cond_21
    iget-object v4, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 561
    const-string/jumbo v4, "suggest_text_1"

    invoke-static {p1, v4}, getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "text1":Ljava/lang/String;
    if-eqz v2, :cond_34

    move-object v1, v2

    .line 563
    goto :goto_4

    .end local v2    # "text1":Ljava/lang/String;
    :cond_34
    move-object v1, v3

    .line 567
    goto :goto_4
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 602
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v3

    .line 613
    :cond_4
    :goto_4
    return-object v3

    .line 603
    :catch_5
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "SuggestionsAdapter"

    const-string v6, "Search suggestions cursor threw exception."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    iget-object v5, p0, mDropDownContext:Landroid/content/Context;

    if-nez v5, :cond_2b

    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 607
    .local v0, "context":Landroid/content/Context;
    :goto_13
    iget-object v5, p0, mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v5, p3}, newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 608
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 609
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 610
    .local v4, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v2, v4, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 611
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 606
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    :cond_2b
    iget-object v0, p0, mDropDownContext:Landroid/content/Context;

    goto :goto_13
.end method

.method public getQueryRefinement()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, mQueryRefinement:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 579
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    .line 589
    :cond_4
    :goto_4
    return-object v2

    .line 580
    :catch_5
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 584
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 586
    .local v3, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 587
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 301
    .local v1, "v":Landroid/view/View;
    new-instance v2, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v2, v1}, Landroid/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    const v2, 0x1020479

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    .local v0, "iconRefine":Landroid/widget/ImageView;
    iget v2, p0, mCommitIconResId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 237
    invoke-virtual {p0}, getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, updateSpinnerState(Landroid/database/Cursor;)V

    .line 238
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 245
    invoke-virtual {p0}, getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, updateSpinnerState(Landroid/database/Cursor;)V

    .line 246
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 460
    iget-object v1, p0, mSearchView:Landroid/widget/SearchView;

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 462
    :cond_f
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 196
    if-nez p1, :cond_17

    const-string v2, ""

    .line 201
    .local v2, "query":Ljava/lang/String;
    :goto_5
    const/4 v0, 0x0

    .line 202
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v4, p0, mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, p0, mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 221
    :cond_16
    :goto_16
    return-object v3

    .line 196
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "query":Ljava/lang/String;
    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 208
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_1c
    :try_start_1c
    iget-object v4, p0, mSearchManager:Landroid/app/SearchManager;

    iget-object v5, p0, mSearchable:Landroid/app/SearchableInfo;

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v2, v6}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_16

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2b} :catch_2d

    move-object v3, v0

    .line 213
    goto :goto_16

    .line 215
    :catch_2d
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions query threw an exception."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public setQueryRefinement(I)V
    .registers 2
    .param p1, "refineWhat"    # I

    .prologue
    .line 168
    iput p1, p0, mQueryRefinement:I

    .line 169
    return-void
.end method
