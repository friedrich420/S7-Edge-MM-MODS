.class public Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
.super Ljava/lang/Object;
.source "CocktailProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COCKTAIL_CATEGORY:Ljava/lang/String; = "category"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x2

.field public static final COCKTAIL_CATEGORY_EXPRESS_ME:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_CATEGORY_FEEDS:I = 0x100

.field public static final COCKTAIL_CATEGORY_HOME_SCREEN:I = 0x8

.field public static final COCKTAIL_CATEGORY_INVALID:I = -0x1

.field public static final COCKTAIL_CATEGORY_LOCK_SCREEN:I = 0x10

.field public static final COCKTAIL_CATEGORY_NIGHT_MODE:I = 0x80

.field public static final COCKTAIL_CATEGORY_NORMAL:I = 0x1

.field public static final COCKTAIL_CATEGORY_QUICK_TOOL:I = 0x4

.field public static final COCKTAIL_CATEGORY_TABLE_MODE:I = 0x20

.field public static final COCKTAIL_CATEGORY_WHISPER:I = 0x200

.field private static final COCKTAIL_COCKTAIL_AFFINITY:Ljava/lang/String; = "cocktailAffinity"

.field private static final COCKTAIL_COCKTAIL_WIDTH:Ljava/lang/String; = "cocktailWidth"

.field private static final COCKTAIL_CONFIGURE:Ljava/lang/String; = "configure"

.field private static final COCKTAIL_CSC_PREVIEW_IMAGE:Ljava/lang/String; = "cscPreviewImage"

.field private static final COCKTAIL_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COCKTAIL_ICON:Ljava/lang/String; = "icon"

.field private static final COCKTAIL_LABEL:Ljava/lang/String; = "label"

.field private static final COCKTAIL_LAUNCH_ON_CLICK:Ljava/lang/String; = "launchOnClick"

.field private static final COCKTAIL_PERMIT_VISIBILITY_CHANGED:Ljava/lang/String; = "permitVisibilityChanged"

.field private static final COCKTAIL_PREVIEW_IMAGE:Ljava/lang/String; = "previewImage"

.field private static final COCKTAIL_PRIVATE_MODE:Ljava/lang/String; = "privateMode"

.field private static final COCKTAIL_PULL_TO_REFRESH:Ljava/lang/String; = "pullToRefresh"

.field private static final COCKTAIL_UPDATE_TIME:Ljava/lang/String; = "updatePeriodMillis"

.field private static final COCKTAIL_WHISPER:Ljava/lang/String; = "whisper"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CocktailProviderInfo"

.field private static final VAL_DEFAULT_COCKTAIL_WIDTH:I = 0xa0

.field private static final XMLVAL_CONTEXTUAL:Ljava/lang/String; = "contextual"

.field private static final XMLVAL_FEEDS:Ljava/lang/String; = "feeds"

.field private static final XMLVAL_HOME_SCREEN:Ljava/lang/String; = "homescreen"

.field private static final XMLVAL_LOCK_SCREEN:Ljava/lang/String; = "lockscreen"

.field private static final XMLVAL_NIGHT_MODE:Ljava/lang/String; = "nightmode"

.field private static final XMLVAL_NORMAL:Ljava/lang/String; = "normal"

.field private static final XMLVAL_QUICK_TOOL:Ljava/lang/String; = "quicktool"

.field private static final XMLVAL_TABLE_MODE:Ljava/lang/String; = "tablemode"

.field private static final XMLVAL_WHISPER:Ljava/lang/String; = "whisper"


# instance fields
.field public category:I

.field public cocktailAffinity:I

.field public cocktailWidth:I

.field public configure:Landroid/content/ComponentName;

.field public cscPreviewImage:Z

.field public description:I

.field public icon:I

.field public label:I

.field public launchOnClick:Ljava/lang/String;

.field public permitVisibilityChanged:Z

.field public previewImage:I

.field public privateMode:Ljava/lang/String;

.field public provider:Landroid/content/ComponentName;

.field public pullToRefresh:Z

.field public updatePeriodMillis:I

.field public whisper:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 332
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, permitVisibilityChanged:Z

    .line 163
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;I)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "provider"    # Landroid/content/ComponentName;
    .param p5, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p6, "info"    # Landroid/content/pm/ResolveInfo;
    .param p7, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v7, 0x0

    iput-boolean v7, p0, permitVisibilityChanged:Z

    .line 200
    iput-object p4, p0, provider:Landroid/content/ComponentName;

    .line 201
    const/4 v7, 0x0

    const-string v8, "icon"

    const/4 v9, 0x0

    invoke-interface {p5, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, icon:I

    .line 202
    const/4 v7, 0x0

    const-string v8, "label"

    const/4 v9, 0x0

    invoke-interface {p5, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, label:I

    .line 203
    const/4 v7, 0x0

    const-string v8, "description"

    const/4 v9, 0x0

    invoke-interface {p5, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, description:I

    .line 204
    const-string v7, "category"

    const-string/jumbo v8, "normal"

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "category":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 206
    const/4 v7, 0x1

    iput v7, p0, category:I

    .line 239
    :cond_38
    :goto_38
    const/4 v7, 0x1

    move/from16 v0, p7

    if-le v0, v7, :cond_11c

    .line 240
    const-string v7, "cocktailWidth"

    const/16 v8, 0xa0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, cocktailWidth:I

    .line 241
    const-string v7, "cocktailAffinity"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, cocktailAffinity:I

    .line 242
    const-string v7, "launchOnClick"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, launchOnClick:Ljava/lang/String;

    .line 243
    iget v7, p0, cocktailAffinity:I

    if-gez v7, :cond_60

    const/4 v7, 0x0

    iput v7, p0, cocktailAffinity:I

    .line 247
    :cond_60
    :goto_60
    const-string/jumbo v7, "privateMode"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, privateMode:Ljava/lang/String;

    .line 248
    const/4 v7, 0x0

    const-string/jumbo v8, "previewImage"

    const/4 v9, 0x0

    invoke-interface {p5, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, previewImage:I

    .line 249
    const-string/jumbo v7, "updatePeriodMillis"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, updatePeriodMillis:I

    .line 250
    const-string/jumbo v7, "permitVisibilityChanged"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, permitVisibilityChanged:Z

    .line 251
    const-string/jumbo v7, "pullToRefresh"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, pullToRefresh:Z

    .line 252
    const-string v7, "configure"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "configureClassName":Ljava/lang/String;
    if-eqz v5, :cond_a7

    .line 254
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, configure:Landroid/content/ComponentName;

    .line 256
    :cond_a7
    const-string v7, "cscPreviewImage"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, cscPreviewImage:Z

    .line 257
    iget v7, p0, category:I

    const/16 v8, 0x200

    if-ne v7, v8, :cond_c0

    .line 258
    const-string/jumbo v7, "whisper"

    const/4 v8, 0x0

    invoke-direct {p0, p5, p3, v7, v8}, loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, whisper:Ljava/lang/String;

    .line 260
    .end local v5    # "configureClassName":Ljava/lang/String;
    :cond_c0
    :goto_c0
    return-void

    .line 208
    :cond_c1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x7c

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 209
    .local v4, "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 210
    :cond_cb
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 211
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "c":Ljava/lang/String;
    invoke-static {v1}, getCategoryId(Ljava/lang/String;)I

    move-result v3

    .line 213
    .local v3, "categoryId":I
    const/4 v6, 0x0

    .line 214
    .local v6, "isBreak":Z
    sparse-switch v3, :sswitch_data_122

    .line 231
    iget v7, p0, category:I

    or-int/2addr v7, v3

    iput v7, p0, category:I

    .line 234
    :goto_e6
    if-eqz v6, :cond_cb

    goto/16 :goto_38

    .line 218
    :sswitch_ea
    iget v7, p0, category:I

    or-int/lit8 v8, v3, 0x1

    or-int/2addr v7, v8

    iput v7, p0, category:I

    goto :goto_e6

    .line 223
    :sswitch_f2
    iput v3, p0, category:I

    .line 224
    const/4 v6, 0x1

    .line 225
    goto :goto_e6

    .line 227
    :sswitch_f6
    const-string v7, "CocktailProviderInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " specified an invalid catetory of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v7, -0x1

    iput v7, p0, category:I

    goto :goto_c0

    .line 245
    .end local v1    # "c":Ljava/lang/String;
    .end local v3    # "categoryId":I
    .end local v4    # "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v6    # "isBreak":Z
    :cond_11c
    const/16 v7, 0xa0

    iput v7, p0, cocktailWidth:I

    goto/16 :goto_60

    .line 214
    :sswitch_data_122
    .sparse-switch
        -0x1 -> :sswitch_f6
        0x4 -> :sswitch_f2
        0x8 -> :sswitch_ea
        0x10 -> :sswitch_ea
        0x20 -> :sswitch_f2
        0x80 -> :sswitch_f2
        0x100 -> :sswitch_ea
    .end sparse-switch
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean v3, p0, permitVisibilityChanged:Z

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_85

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    :goto_13
    iput-object v0, p0, provider:Landroid/content/ComponentName;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, updatePeriodMillis:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, label:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, description:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, icon:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, previewImage:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, category:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, cocktailWidth:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, cocktailAffinity:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    iput-object v0, p0, privateMode:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_89

    move v0, v2

    :goto_58
    iput-boolean v0, p0, permitVisibilityChanged:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_8b

    move v0, v2

    :goto_61
    iput-boolean v0, p0, pullToRefresh:Z

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8d

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    :goto_6e
    iput-object v0, p0, configure:Landroid/content/ComponentName;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :cond_7a
    iput-object v1, p0, launchOnClick:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_8f

    :goto_82
    iput-boolean v2, p0, cscPreviewImage:Z

    .line 327
    return-void

    :cond_85
    move-object v0, v1

    .line 312
    goto :goto_13

    :cond_87
    move-object v0, v1

    .line 321
    goto :goto_4f

    :cond_89
    move v0, v3

    .line 322
    goto :goto_58

    :cond_8b
    move v0, v3

    .line 323
    goto :goto_61

    :cond_8d
    move-object v0, v1

    .line 324
    goto :goto_6e

    :cond_8f
    move v2, v3

    .line 326
    goto :goto_82
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p4, "categoryIds"    # I
    .param p5, "version"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 172
    .local v4, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 174
    .local v12, "identity":J
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_19} :catch_39
    .catchall {:try_start_8 .. :try_end_19} :catchall_46

    move-result-object v5

    .line 180
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    :try_start_1d
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-object v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, p1

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;I)V

    .line 184
    .local v2, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    move/from16 v0, p4

    invoke-static {v0, v2}, enforceValidCategory(ILcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget v3, v2, category:I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_34} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_34} :catch_55

    const/4 v6, -0x1

    if-ne v3, v6, :cond_38

    .line 185
    :cond_37
    const/4 v2, 0x0

    .line 194
    .end local v2    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_38
    :goto_38
    return-object v2

    .line 176
    :catch_39
    move-exception v10

    .line 177
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3a
    const-string v3, "CocktailProviderInfo"

    const-string v6, "failed to load find package"

    invoke-static {v3, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_46

    .line 178
    const/4 v2, 0x0

    .line 180
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_46
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 189
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :catch_4b
    move-exception v10

    .line 190
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "CocktailProviderInfo"

    const-string v6, "XML resources failed"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_53
    const/4 v2, 0x0

    goto :goto_38

    .line 191
    :catch_55
    move-exception v10

    .line 192
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CocktailProviderInfo"

    const-string v6, "IllegalArgumentException"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method

.method private static enforceValidCategory(ILcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z
    .registers 5
    .param p0, "categoryIds"    # I
    .param p1, "pInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    if-nez p0, :cond_c

    .line 264
    const-string v1, "CocktailProviderInfo"

    const-string v2, "enforceValidCategory: there is no category filters"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_b
    :goto_b
    return v0

    .line 267
    :cond_c
    iget-object v2, p1, privateMode:Ljava/lang/String;

    if-eqz v2, :cond_12

    move v0, v1

    .line 268
    goto :goto_b

    .line 270
    :cond_12
    iget v2, p1, category:I

    and-int/2addr v2, p0

    if-nez v2, :cond_b

    move v0, v1

    .line 273
    goto :goto_b
.end method

.method private static getCategoryId(Ljava/lang/String;)I
    .registers 2
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 289
    const/4 v0, 0x1

    .line 307
    :goto_a
    return v0

    .line 290
    :cond_b
    const-string v0, "contextual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 291
    const/4 v0, 0x2

    goto :goto_a

    .line 292
    :cond_15
    const-string v0, "homescreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 293
    const/16 v0, 0x8

    goto :goto_a

    .line 294
    :cond_20
    const-string v0, "feeds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 295
    const/16 v0, 0x100

    goto :goto_a

    .line 296
    :cond_2b
    const-string/jumbo v0, "whisper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 297
    const/16 v0, 0x200

    goto :goto_a

    .line 298
    :cond_37
    const-string/jumbo v0, "quicktool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 299
    const/4 v0, 0x4

    goto :goto_a

    .line 300
    :cond_42
    const-string/jumbo v0, "tablemode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 301
    const/16 v0, 0x20

    goto :goto_a

    .line 302
    :cond_4e
    const-string/jumbo v0, "nightmode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 303
    const/16 v0, 0x80

    goto :goto_a

    .line 304
    :cond_5a
    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 305
    const/16 v0, 0x10

    goto :goto_a

    .line 307
    :cond_65
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getCategoryIds(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 278
    .local v2, "ids":I
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    :cond_9
    move v3, v2

    .line 284
    .end local v2    # "ids":I
    .local v3, "ids":I
    :goto_a
    return v3

    .line 281
    .end local v3    # "ids":I
    .restart local v2    # "ids":I
    :cond_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "category":Ljava/lang/String;
    invoke-static {v0}, getCategoryId(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v2, v4

    .line 283
    goto :goto_f

    .end local v0    # "category":Ljava/lang/String;
    :cond_21
    move v3, v2

    .line 284
    .end local v2    # "ids":I
    .restart local v3    # "ids":I
    goto :goto_a
.end method

.method private loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .prologue
    const/4 v4, 0x0

    .line 436
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 437
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 439
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    .line 446
    .local v2, "value":Z
    :goto_c
    return v2

    .line 440
    .end local v2    # "value":Z
    :catch_d
    move-exception v0

    .line 441
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 442
    .restart local v2    # "value":Z
    goto :goto_c

    .line 444
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":Z
    :cond_10
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2    # "value":Z
    goto :goto_c
.end method

.method private loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 451
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 452
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 454
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    .line 461
    .local v2, "value":I
    :goto_c
    return v2

    .line 455
    .end local v2    # "value":I
    :catch_d
    move-exception v0

    .line 456
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 457
    .restart local v2    # "value":I
    goto :goto_c

    .line 459
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":I
    :cond_10
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_c
.end method

.method private loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 401
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 402
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 404
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    .line 411
    .local v2, "value":I
    :goto_c
    return v2

    .line 405
    .end local v2    # "value":I
    :catch_d
    move-exception v0

    .line 406
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 407
    .restart local v2    # "value":I
    goto :goto_c

    .line 409
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":I
    :cond_10
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_c
.end method

.method private loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 417
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 418
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 420
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    .line 430
    .local v2, "value":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object v2

    .line 421
    .end local v2    # "value":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 422
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v2, p4

    .line 423
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_c

    .line 425
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":Ljava/lang/String;
    :cond_10
    invoke-interface {p1, v4, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .restart local v2    # "value":Ljava/lang/String;
    if-nez v2, :cond_c

    .line 427
    move-object v2, p4

    goto :goto_c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_70

    .line 350
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v0, p0, provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    :goto_e
    iget v0, p0, updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, cocktailWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget v0, p0, cocktailAffinity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-object v0, p0, privateMode:Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 364
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v0, p0, privateMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    :goto_42
    iget-boolean v0, p0, permitVisibilityChanged:Z

    if-eqz v0, :cond_78

    .line 370
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 374
    :goto_49
    iget-boolean v0, p0, pullToRefresh:Z

    if-eqz v0, :cond_7c

    .line 375
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 379
    :goto_50
    iget-object v0, p0, configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_80

    .line 380
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-object v0, p0, configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    :goto_5c
    iget-object v0, p0, launchOnClick:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 386
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget-object v0, p0, launchOnClick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    :goto_68
    iget-boolean v0, p0, cscPreviewImage:Z

    if-eqz v0, :cond_88

    .line 392
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 396
    :goto_6f
    return-void

    .line 353
    :cond_70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 367
    :cond_74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 372
    :cond_78
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_49

    .line 377
    :cond_7c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_50

    .line 383
    :cond_80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5c

    .line 389
    :cond_84
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68

    .line 394
    :cond_88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_6f
.end method
