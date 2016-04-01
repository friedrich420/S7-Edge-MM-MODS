.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$4;,
        Landroid/widget/RemoteViews$SetOnTouchPendingIntent;,
        Landroid/widget/RemoteViews$ImageFilterAction;,
        Landroid/widget/RemoteViews$SetOnLongClickDragable;,
        Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;,
        Landroid/widget/RemoteViews$SetLaunchPendingIntent;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$AddOuterGlowAction;,
        Landroid/widget/RemoteViews$AddLinearGradientAction;,
        Landroid/widget/RemoteViews$AddStrokeAction;,
        Landroid/widget/RemoteViews$AddInnerShadowAction;,
        Landroid/widget/RemoteViews$AddOuterShadowAction;,
        Landroid/widget/RemoteViews$ClearAllTextEffectAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MutablePair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field static final EXTRA_REMOTEADAPTER_COCKTAIL:Ljava/lang/String; = "remoteAdapterCocktail"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final SFE_STARTING_TAG:I = 0x15

.field private static mIsLongClick:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInvokeArgsTls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMethodsLock:[Ljava/lang/Object;


# instance fields
.field private isNotification:Z

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionsLock:Ljava/lang/Object;

.field private mApplication:Landroid/content/pm/ApplicationInfo;

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mHas12key:Z

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPair:Landroid/widget/RemoteViews$MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPortrait:Landroid/widget/RemoteViews;

.field private stringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mIsLongClick:Ljava/util/HashMap;

    .line 235
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, sMethodsLock:[Ljava/lang/Object;

    .line 236
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, sMethods:Landroid/util/ArrayMap;

    .line 238
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, sInvokeArgsTls:Ljava/lang/ThreadLocal;

    .line 3535
    new-instance v0, Landroid/widget/RemoteViews$3;

    invoke-direct {v0}, Landroid/widget/RemoteViews$3;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 6
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsRoot:Z

    .line 161
    iput-object v1, p0, mLandscape:Landroid/widget/RemoteViews;

    .line 162
    iput-object v1, p0, mPortrait:Landroid/widget/RemoteViews;

    .line 171
    iput-boolean v2, p0, mIsWidgetCollectionChild:Z

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mActionsLock:Ljava/lang/Object;

    .line 193
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_41

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1e
    iput-object v0, p0, stringNamesMap:Ljava/util/Map;

    .line 229
    iput-boolean v2, p0, mHas12key:Z

    .line 233
    iput-boolean v2, p0, isNotification:Z

    .line 275
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 2210
    iput-object p1, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2211
    iput p2, p0, mLayoutId:I

    .line 2212
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2214
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 2215
    invoke-direct {p0}, recalculateMemoryUsage()V

    .line 2216
    return-void

    :cond_41
    move-object v0, v1

    .line 193
    goto :goto_1e
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2260
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 14
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-boolean v9, p0, mIsRoot:Z

    .line 161
    iput-object v8, p0, mLandscape:Landroid/widget/RemoteViews;

    .line 162
    iput-object v8, p0, mPortrait:Landroid/widget/RemoteViews;

    .line 171
    iput-boolean v10, p0, mIsWidgetCollectionChild:Z

    .line 184
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, mActionsLock:Ljava/lang/Object;

    .line 193
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_87

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :goto_1e
    iput-object v7, p0, stringNamesMap:Ljava/util/Map;

    .line 229
    iput-boolean v10, p0, mHas12key:Z

    .line 233
    iput-boolean v10, p0, isNotification:Z

    .line 275
    new-instance v7, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v7, v8, v8}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, p0, mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 2263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2266
    .local v3, "mode":I
    if-nez p2, :cond_89

    .line 2267
    new-instance v7, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v7, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2273
    :goto_38
    if-nez v3, :cond_1c2

    .line 2274
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iput-object v7, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, mLayoutId:I

    .line 2276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v9, :cond_90

    move v7, v9

    :goto_4f
    iput-boolean v7, p0, mIsWidgetCollectionChild:Z

    .line 2278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2279
    .local v0, "count":I
    if-lez v0, :cond_1e2

    .line 2280
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, mActions:Ljava/util/ArrayList;

    .line 2281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5f
    if-ge v1, v0, :cond_1e2

    .line 2282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2283
    .local v5, "tag":I
    packed-switch v5, :pswitch_data_21c

    .line 2372
    :pswitch_68
    new-instance v7, Landroid/widget/RemoteViews$ActionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "mode":I
    .end local v5    # "tag":I
    :cond_87
    move-object v7, v8

    .line 193
    goto :goto_1e

    .line 2269
    .restart local v3    # "mode":I
    :cond_89
    invoke-direct {p0, p2}, setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2270
    invoke-virtual {p0}, setNotRoot()V

    goto :goto_38

    :cond_90
    move v7, v10

    .line 2276
    goto :goto_4f

    .line 2285
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v5    # "tag":I
    :pswitch_92
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2281
    :goto_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 2288
    :pswitch_9f
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2291
    :pswitch_aa
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2294
    :pswitch_b5
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ViewGroupAction;

    iget-object v10, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v9, p0, p1, v10}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2297
    :pswitch_c2
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2300
    :pswitch_cd
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2303
    :pswitch_d8
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2306
    :pswitch_e3
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2309
    :pswitch_ee
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2312
    :pswitch_f9
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2315
    :pswitch_104
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2318
    :pswitch_10f
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 2321
    :pswitch_11a
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2324
    :pswitch_126
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2328
    :pswitch_132
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2331
    :pswitch_13e
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2336
    :pswitch_14a
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ClearAllTextEffectAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ClearAllTextEffectAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2339
    :pswitch_156
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddOuterShadowAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddOuterShadowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2342
    :pswitch_162
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddInnerShadowAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddInnerShadowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2345
    :pswitch_16e
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddStrokeAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddStrokeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2348
    :pswitch_17a
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddOuterGlowAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddOuterGlowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2351
    :pswitch_186
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$AddLinearGradientAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$AddLinearGradientAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2356
    :pswitch_192
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnLongClickDragable;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnLongClickDragable;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2360
    :pswitch_19e
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2364
    :pswitch_1aa
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ImageFilterAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ImageFilterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2369
    :pswitch_1b6
    iget-object v7, p0, mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 2378
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v5    # "tag":I
    :cond_1c2
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v9, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1, v9}, <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v7, p0, mLandscape:Landroid/widget/RemoteViews;

    .line 2379
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v9, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1, v9}, <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v7, p0, mPortrait:Landroid/widget/RemoteViews;

    .line 2380
    iget-object v7, p0, mPortrait:Landroid/widget/RemoteViews;

    iget-object v7, v7, mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v7, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2381
    iget-object v7, p0, mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, getLayoutId()I

    move-result v7

    iput v7, p0, mLayoutId:I

    .line 2384
    :cond_1e2
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_210

    .line 2385
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, isNotification:Z

    .line 2386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2388
    .local v4, "size":I
    if-lez v4, :cond_210

    .line 2389
    iget-object v7, p0, stringNamesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 2390
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1fe
    if-ge v1, v4, :cond_210

    .line 2391
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2392
    .local v2, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    .line 2393
    .local v6, "value":Ljava/lang/CharSequence;
    iget-object v7, p0, stringNamesMap:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fe

    .line 2399
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/CharSequence;
    .end local v4    # "size":I
    .end local v6    # "value":Ljava/lang/CharSequence;
    :cond_210
    new-instance v7, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v7, p0, v8}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v7, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 2400
    invoke-direct {p0}, recalculateMemoryUsage()V

    .line 2401
    return-void

    .line 2283
    nop

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_92
        :pswitch_aa
        :pswitch_9f
        :pswitch_b5
        :pswitch_c2
        :pswitch_cd
        :pswitch_68
        :pswitch_d8
        :pswitch_e3
        :pswitch_ee
        :pswitch_f9
        :pswitch_11a
        :pswitch_104
        :pswitch_10f
        :pswitch_126
        :pswitch_13e
        :pswitch_19e
        :pswitch_68
        :pswitch_192
        :pswitch_132
        :pswitch_14a
        :pswitch_156
        :pswitch_162
        :pswitch_16e
        :pswitch_186
        :pswitch_17a
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_1aa
        :pswitch_1b6
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p3, "x2"    # Landroid/widget/RemoteViews$1;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "landscape"    # Landroid/widget/RemoteViews;
    .param p2, "portrait"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsRoot:Z

    .line 161
    iput-object v1, p0, mLandscape:Landroid/widget/RemoteViews;

    .line 162
    iput-object v1, p0, mPortrait:Landroid/widget/RemoteViews;

    .line 171
    iput-boolean v2, p0, mIsWidgetCollectionChild:Z

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mActionsLock:Ljava/lang/Object;

    .line 193
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_37

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1e
    iput-object v0, p0, stringNamesMap:Ljava/util/Map;

    .line 229
    iput-boolean v2, p0, mHas12key:Z

    .line 233
    iput-boolean v2, p0, isNotification:Z

    .line 275
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 2230
    if-eqz p1, :cond_2f

    if-nez p2, :cond_39

    .line 2231
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object v0, v1

    .line 193
    goto :goto_1e

    .line 2233
    :cond_39
    iget-object v0, p1, mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p2, mApplication:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v2, :cond_51

    iget-object v0, p1, mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 2235
    :cond_51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2237
    :cond_59
    iget-object v0, p2, mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    .line 2238
    invoke-virtual {p2}, getLayoutId()I

    move-result v0

    iput v0, p0, mLayoutId:I

    .line 2240
    iput-object p1, p0, mLandscape:Landroid/widget/RemoteViews;

    .line 2241
    iput-object p2, p0, mPortrait:Landroid/widget/RemoteViews;

    .line 2244
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 2246
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2247
    invoke-direct {p0, p1}, configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 2248
    invoke-direct {p0, p2}, configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 2250
    invoke-direct {p0}, recalculateMemoryUsage()V

    .line 2251
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .prologue
    .line 2183
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, <init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "layoutId"    # I

    .prologue
    .line 2197
    invoke-static {p1, p2}, getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p3}, <init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2198
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RemoteViews;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .prologue
    .line 97
    iget-boolean v0, p0, mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 97
    sget-object v0, mIsLongClick:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/RemoteViews;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .prologue
    .line 97
    iget-boolean v0, p0, mHas12key:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/RemoteViews;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, mHas12key:Z

    return p1
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-static {p0}, getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Class;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .prologue
    .line 97
    iget-object v0, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    invoke-static {p0}, wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 97
    invoke-direct {p0, p1}, configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;
    .param p1, "x1"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 97
    invoke-direct {p0, p1}, setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .registers 4
    .param p1, "a"    # Landroid/widget/RemoteViews$Action;

    .prologue
    .line 2495
    invoke-direct {p0}, hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2496
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2500
    :cond_e
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    .line 2501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 2503
    :cond_19
    iget-object v1, p0, mActionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2504
    :try_start_1c
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2505
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_28

    .line 2508
    iget-object v0, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2509
    return-void

    .line 2505
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1478
    iget-object v0, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1479
    iget-object v0, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1480
    invoke-virtual {p1}, setNotRoot()V

    .line 1481
    return-void
.end method

.method private static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 3507
    if-nez p0, :cond_4

    .line 3508
    const/4 v1, 0x0

    .line 3529
    :cond_3
    :goto_3
    return-object v1

    .line 3512
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3513
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_12

    .line 3514
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot create remote views out of an aplication."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3517
    :cond_12
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3518
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_26

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3521
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p0, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 3523
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_37} :catch_39

    move-result-object v1

    goto :goto_3

    .line 3524
    .end local v2    # "context":Landroid/content/Context;
    :catch_39
    move-exception v3

    .line 3525
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getContextForResources(Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3424
    iget-object v1, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_20

    .line 3425
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_21

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3437
    .end local p1    # "context":Landroid/content/Context;
    :cond_20
    :goto_20
    return-object p1

    .line 3430
    .restart local p1    # "context":Landroid/content/Context;
    :cond_21
    :try_start_21
    iget-object v1, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_27} :catch_29

    move-result-object p1

    goto :goto_20

    .line 3432
    :catch_29
    move-exception v0

    .line 3433
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 909
    .local p3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 911
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v5, sMethodsLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 912
    :try_start_7
    sget-object v4, sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 913
    .local v3, "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_1b

    .line 914
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 915
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    sget-object v4, sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_1b
    iget-object v4, p0, mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p2, v4, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    .line 919
    iget-object v4, p0, mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p3, v4, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    .line 921
    iget-object v4, p0, mPair:Landroid/widget/RemoteViews$MutablePair;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_6e

    .line 922
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_b5

    .line 924
    if-nez p3, :cond_71

    .line 925
    const/4 v4, 0x0

    :try_start_30
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_35} :catch_7c
    .catchall {:try_start_30 .. :try_end_35} :catchall_6e

    move-result-object v2

    .line 934
    :goto_36
    :try_start_36
    const-class v4, Landroid/view/RemotableViewMethod;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 935
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can\'t use method with RemoteViews: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 942
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :catchall_6e
    move-exception v4

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_36 .. :try_end_70} :catchall_6e

    throw v4

    .line 927
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "methods":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :cond_71
    const/4 v4, 0x1

    :try_start_72
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_72 .. :try_end_7a} :catch_7c
    .catchall {:try_start_72 .. :try_end_7a} :catchall_6e

    move-result-object v2

    goto :goto_36

    .line 929
    :catch_7c
    move-exception v0

    .line 930
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_7d
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 940
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_ad
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v4, p2, p3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_b5
    monitor-exit v5
    :try_end_b6
    .catchall {:try_start_7d .. :try_end_b6} :catchall_6e

    .line 944
    return-object v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 948
    .local p0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    const-string v0, "()"

    .line 949
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3313
    invoke-direct {p0}, hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 3315
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 3316
    iget-object p0, p0, mLandscape:Landroid/widget/RemoteViews;

    .line 3321
    .end local v0    # "orientation":I
    .end local p0    # "this":Landroid/widget/RemoteViews;
    :cond_15
    :goto_15
    return-object p0

    .line 3318
    .restart local v0    # "orientation":I
    .restart local p0    # "this":Landroid/widget/RemoteViews;
    :cond_16
    iget-object p0, p0, mPortrait:Landroid/widget/RemoteViews;

    goto :goto_15
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 894
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 896
    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 897
    .local v1, "pos":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 899
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 900
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 901
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 902
    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 903
    aget v3, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 904
    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .registers 2

    .prologue
    .line 2219
    iget-object v0, p0, mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    iget-object v0, p0, mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 3413
    iget-object v3, p0, mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    .line 3414
    if-nez p3, :cond_8

    sget-object p3, DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 3415
    :cond_8
    iget-object v3, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3416
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 3417
    iget-object v3, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 3418
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3416
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3421
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1f
    return-void
.end method

.method private recalculateMemoryUsage()V
    .registers 5

    .prologue
    .line 2443
    iget-object v2, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    .line 2445
    invoke-direct {p0}, hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_34

    .line 2447
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    .line 2448
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2449
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_28

    .line 2450
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2449
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2453
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_28
    iget-boolean v2, p0, mIsRoot:Z

    if-eqz v2, :cond_33

    .line 2454
    iget-object v2, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 2461
    :cond_33
    :goto_33
    return-void

    .line 2457
    :cond_34
    iget-object v2, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 2458
    iget-object v2, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 2459
    iget-object v2, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    goto :goto_33
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 5
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 2467
    iput-object p1, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2468
    invoke-direct {p0}, hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2469
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    .line 2470
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2471
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 2472
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2471
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2476
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_23
    iget-object v2, p0, mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2477
    iget-object v2, p0, mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 2479
    :cond_2d
    return-void
.end method

.method private updateResourceMap(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    iget-object v3, p0, stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 224
    .local v1, "name":Ljava/lang/CharSequence;
    iget-object v3, p0, stringNamesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 225
    .local v2, "stringName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->addNotificationString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 227
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v2    # "stringName":Ljava/lang/CharSequence;
    :cond_26
    return-void
.end method

.method private static wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 953
    sget-object v1, sInvokeArgsTls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 954
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 955
    return-object v0
.end method


# virtual methods
.method public SetOnLongClickDragable(ILandroid/content/ClipData;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "clipData"    # Landroid/content/ClipData;
    .param p3, "dragStartNotiIntent"    # Landroid/app/PendingIntent;
    .param p4, "dragEnterNotiIntent"    # Landroid/app/PendingIntent;
    .param p5, "dragExitNotiIntent"    # Landroid/app/PendingIntent;
    .param p6, "isNeedToRemove"    # Z

    .prologue
    .line 3818
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickDragable;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetOnLongClickDragable;-><init>(Landroid/widget/RemoteViews;ILandroid/content/ClipData;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3820
    return-void
.end method

.method public addInnerShadowTextEffect(IFFFIF)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 2699
    new-instance v0, Landroid/widget/RemoteViews$AddInnerShadowAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$AddInnerShadowAction;-><init>(Landroid/widget/RemoteViews;IFFFIF)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2700
    return-void
.end method

.method public addLinearGradientTextEffect(IFF[I[F[FF)V
    .registers 17
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "scale"    # F
    .param p4, "colors"    # [I
    .param p5, "alphas"    # [F
    .param p6, "positions"    # [F
    .param p7, "blendingOpacity"    # F

    .prologue
    .line 2745
    new-instance v0, Landroid/widget/RemoteViews$AddLinearGradientAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/widget/RemoteViews$AddLinearGradientAction;-><init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2746
    return-void
.end method

.method public addOuterGlowTextEffect(IFIF)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .prologue
    .line 2727
    new-instance v0, Landroid/widget/RemoteViews$AddOuterGlowAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AddOuterGlowAction;-><init>(Landroid/widget/RemoteViews;IFIF)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2728
    return-void
.end method

.method public addOuterShadowTextEffect(IFFFIF)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 2682
    new-instance v0, Landroid/widget/RemoteViews$AddOuterShadowAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$AddOuterShadowAction;-><init>(Landroid/widget/RemoteViews;IFFFIF)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2683
    return-void
.end method

.method public addStrokeTextEffect(IFIF)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .prologue
    .line 2713
    new-instance v0, Landroid/widget/RemoteViews$AddStrokeAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AddStrokeAction;-><init>(Landroid/widget/RemoteViews;IFIF)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2714
    return-void
.end method

.method public addView(ILandroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2522
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2523
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 3341
    invoke-direct {p0, p1}, getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 3343
    .local v4, "rvToApply":Landroid/widget/RemoteViews;
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p0, isNotification:Z

    if-eqz v5, :cond_f

    .line 3345
    invoke-direct {p0, p1}, updateResourceMap(Landroid/content/Context;)V

    .line 3353
    :cond_f
    invoke-direct {p0, p1}, getContextForResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 3354
    .local v0, "contextForResources":Landroid/content/Context;
    new-instance v2, Landroid/widget/RemoteViews$2;

    invoke-direct {v2, p0, p1, v0}, Landroid/widget/RemoteViews$2;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;)V

    .line 3369
    .local v2, "inflationContext":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3374
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3375
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 3376
    invoke-virtual {v4}, getLayoutId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3378
    .local v3, "result":Landroid/view/View;
    invoke-direct {v4, v3, p2, p3}, performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3380
    return-object v3
.end method

.method public clearAllTextEffect(I)V
    .registers 3
    .param p1, "viewId"    # I

    .prologue
    .line 2665
    new-instance v0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ClearAllTextEffectAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2666
    return-void
.end method

.method public clone()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2406
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v2}, writeToParcel(Landroid/os/Parcel;I)V

    .line 2407
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2408
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, <init>(Landroid/os/Parcel;)V

    .line 2409
    .local v1, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2410
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 3459
    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .registers 2

    .prologue
    .line 2486
    iget-object v0, p0, mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 2425
    iget v0, p0, mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2414
    iget-object v0, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 3446
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .registers 13
    .param p1, "newRv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 379
    if-nez p1, :cond_3

    .line 418
    :goto_2
    return-void

    .line 383
    :cond_3
    invoke-virtual {p1}, clone()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 385
    .local v1, "copy":Landroid/widget/RemoteViews;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v8, p0, mActions:Ljava/util/ArrayList;

    if-nez v8, :cond_17

    .line 387
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, mActions:Ljava/util/ArrayList;

    .line 389
    :cond_17
    iget-object v9, p0, mActionsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 390
    :try_start_1a
    iget-object v8, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 391
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_35

    .line 392
    iget-object v8, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 393
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 396
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    :cond_35
    iget-object v7, v1, mActions:Ljava/util/ArrayList;

    .line 397
    .local v7, "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-nez v7, :cond_3e

    monitor-exit v9

    goto :goto_2

    .line 413
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v7    # "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    :catchall_3b
    move-exception v8

    monitor-exit v9
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_3b

    throw v8

    .line 398
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v7    # "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    :cond_3e
    :try_start_3e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 399
    const/4 v3, 0x0

    :goto_43
    if-ge v3, v2, :cond_80

    .line 400
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 401
    .restart local v0    # "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v6

    .line 403
    .local v6, "mergeBehavior":I
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    if-nez v6, :cond_73

    .line 404
    iget-object v8, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_73
    if-eqz v6, :cond_78

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7d

    .line 410
    :cond_78
    iget-object v8, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 413
    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "mergeBehavior":I
    :cond_80
    monitor-exit v9
    :try_end_81
    .catchall {:try_start_3e .. :try_end_81} :catchall_3b

    .line 416
    new-instance v8, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v8}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v8, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 417
    iget-object v8, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, v8}, setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    goto/16 :goto_2
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .registers 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 3455
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 3392
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3393
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 3397
    invoke-direct {p0, p1}, getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3402
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3403
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, getLayoutId()I

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 3404
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3409
    :cond_1c
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3410
    return-void
.end method

.method public removeAllViews(I)V
    .registers 4
    .param p1, "viewId"    # I

    .prologue
    .line 2532
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2533
    return-void
.end method

.method public setAccessibilityTraversalAfter(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .prologue
    .line 3299
    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 3300
    return-void
.end method

.method public setAccessibilityTraversalBefore(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .prologue
    .line 3289
    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 3290
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3236
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3237
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 3105
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3106
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;

    .prologue
    .line 3247
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3248
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .prologue
    .line 3116
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3117
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 3182
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3183
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 3204
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3205
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .registers 8
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    .prologue
    .line 2849
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, setLong(ILjava/lang/String;J)V

    .line 2850
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 2851
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, setBoolean(ILjava/lang/String;Z)V

    .line 2852
    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 3279
    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 3280
    return-void
.end method

.method public setDisplayedChild(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "childIndex"    # I

    .prologue
    .line 2560
    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 2561
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 3171
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3172
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .registers 15
    .param p1, "viewId"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "alpha"    # I
    .param p4, "colorFilter"    # I
    .param p5, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p6, "level"    # I

    .prologue
    .line 2960
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2962
    return-void
.end method

.method public setEmptyView(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "emptyViewId"    # I

    .prologue
    .line 2831
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2832
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 3160
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3161
    return-void
.end method

.method public setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 3269
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3270
    return-void
.end method

.method public setImageFilter(IIFFFFFF)V
    .registers 19
    .param p1, "viewId"    # I
    .param p2, "type"    # I
    .param p3, "arg1"    # F
    .param p4, "arg2"    # F
    .param p5, "arg3"    # F
    .param p6, "arg4"    # F
    .param p7, "arg5"    # F
    .param p8, "arg6"    # F

    .prologue
    .line 3993
    new-instance v0, Landroid/widget/RemoteViews$ImageFilterAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$ImageFilterAction;-><init>(Landroid/widget/RemoteViews;IIFFFFFF)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3994
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2811
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2812
    return-void
.end method

.method public setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2821
    const-string/jumbo v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 2822
    return-void
.end method

.method public setImageViewResource(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    .prologue
    .line 2791
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 2792
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2801
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 2802
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 3138
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3139
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/Intent;

    .prologue
    .line 3258
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3259
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .registers 2
    .param p1, "isWidgetCollectionChild"    # Z

    .prologue
    .line 2436
    iput-boolean p1, p0, mIsWidgetCollectionChild:Z

    .line 2437
    return-void
.end method

.method public setLabelFor(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "labeledId"    # I

    .prologue
    .line 3309
    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 3310
    return-void
.end method

.method public setLaunchPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3555
    new-instance v0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3556
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 3149
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3150
    return-void
.end method

.method setNotRoot()V
    .registers 2

    .prologue
    .line 1484
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsRoot:Z

    .line 1485
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 2929
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2930
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2890
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2891
    return-void
.end method

.method public setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 11
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "viewId"    # I
    .param p3, "downPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "upPendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3645
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3646
    return-void
.end method

.method public setOnTouchPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 4083
    new-instance v0, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnTouchPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4084
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .prologue
    .line 2906
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2907
    return-void
.end method

.method public setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .registers 9
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2984
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressBackgroundTintList"

    const/16 v4, 0xf

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2986
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    .prologue
    .line 2869
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, setBoolean(ILjava/lang/String;Z)V

    .line 2870
    if-nez p4, :cond_14

    .line 2871
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 2872
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, setInt(ILjava/lang/String;I)V

    .line 2874
    :cond_14
    return-void
.end method

.method public setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .registers 9
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2996
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setIndeterminateTintList"

    const/16 v4, 0xf

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2998
    return-void
.end method

.method public setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .registers 9
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2972
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressTintList"

    const/16 v4, 0xf

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2974
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "offset"    # I

    .prologue
    .line 3081
    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 3082
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3024
    invoke-virtual {p0, p2, p3}, setRemoteAdapter(ILandroid/content/Intent;)V

    .line 3025
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3036
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3037
    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .registers 5
    .param p1, "viewId"    # I
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3061
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3062
    return-void
.end method

.method public setScrollPosition(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    .line 3071
    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 3072
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .prologue
    .line 3127
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3128
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 3193
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3194
    return-void
.end method

.method public setStringMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_f

    .line 208
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, isNotification:Z

    .line 210
    iput-object p1, p0, stringNamesMap:Ljava/util/Map;

    .line 213
    :cond_f
    return-void
.end method

.method public setTextColor(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 3008
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 3009
    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .registers 14
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2616
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2617
    return-void
.end method

.method public setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 14
    .param p1, "viewId"    # I
    .param p2, "left"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "right"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2763
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2764
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .registers 14
    .param p1, "viewId"    # I
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2631
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2632
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 14
    .param p1, "viewId"    # I
    .param p2, "start"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "end"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2781
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2782
    return-void
.end method

.method public setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "index"    # I
    .param p3, "color"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2650
    if-ltz p2, :cond_5

    const/4 v0, 0x4

    if-lt p2, v0, :cond_d

    .line 2651
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be in range [0, 3]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2653
    :cond_d
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2654
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2580
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2581
    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    .prologue
    .line 2602
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2603
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/net/Uri;

    .prologue
    .line 3215
    if-eqz p3, :cond_11

    .line 3217
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 3218
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3219
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 3222
    :cond_11
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3223
    return-void
.end method

.method public setViewFingerHovered(IZ)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2590
    const-string/jumbo v0, "setFingerHoveredInAppWidget"

    invoke-virtual {p0, p1, v0, p2}, setBoolean(ILjava/lang/String;Z)V

    .line 2591
    return-void
.end method

.method public setViewPadding(IIIII)V
    .registers 13
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 3094
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 3095
    return-void
.end method

.method public setViewVisibility(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 2570
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, setInt(ILjava/lang/String;I)V

    .line 2571
    return-void
.end method

.method public showNext(I)V
    .registers 4
    .param p1, "viewId"    # I

    .prologue
    .line 2541
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2542
    return-void
.end method

.method public showPrevious(I)V
    .registers 4
    .param p1, "viewId"    # I

    .prologue
    .line 2550
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2551
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 12
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3463
    invoke-direct {p0}, hasLandscapeAndPortraitLayouts()Z

    move-result v8

    if-nez v8, :cond_47

    .line 3464
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3467
    iget-boolean v8, p0, mIsRoot:Z

    if-eqz v8, :cond_14

    .line 3468
    iget-object v8, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v8, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 3470
    :cond_14
    iget-object v8, p0, mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v8, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3471
    iget v8, p0, mLayoutId:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3472
    iget-boolean v8, p0, mIsWidgetCollectionChild:Z

    if-eqz v8, :cond_43

    :goto_22
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3474
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_45

    .line 3475
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3479
    .local v1, "count":I
    :goto_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3480
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_5d

    .line 3481
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 3482
    .local v0, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, v7}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3480
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .end local v0    # "a":Landroid/widget/RemoteViews$Action;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_43
    move v6, v7

    .line 3472
    goto :goto_22

    .line 3477
    :cond_45
    const/4 v1, 0x0

    .restart local v1    # "count":I
    goto :goto_2f

    .line 3485
    .end local v1    # "count":I
    :cond_47
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3488
    iget-boolean v6, p0, mIsRoot:Z

    if-eqz v6, :cond_53

    .line 3489
    iget-object v6, p0, mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 3491
    :cond_53
    iget-object v6, p0, mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v6, p1, p2}, writeToParcel(Landroid/os/Parcel;I)V

    .line 3492
    iget-object v6, p0, mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v6, p1, p2}, writeToParcel(Landroid/os/Parcel;I)V

    .line 3495
    :cond_5d
    sget-boolean v6, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v6, :cond_98

    .line 3496
    iget-boolean v6, p0, isNotification:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3497
    iget-object v6, p0, stringNamesMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    .line 3498
    .local v5, "size":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3499
    iget-object v6, p0, stringNamesMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3500
    .local v4, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 3501
    iget-object v6, p0, stringNamesMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_7d

    .line 3504
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/CharSequence;
    .end local v5    # "size":I
    :cond_98
    return-void
.end method
