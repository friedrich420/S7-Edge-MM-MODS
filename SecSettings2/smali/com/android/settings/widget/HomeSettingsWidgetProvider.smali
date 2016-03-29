.class public Lcom/android/settings/widget/HomeSettingsWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "HomeSettingsWidgetProvider.java"


# static fields
.field static appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field static mCtxt:Landroid/content/Context;

.field private static mHomeGridMode:I

.field static mRes:Landroid/content/res/Resources;

.field public static mSpanMapX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mSpanMapY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mViews1x1:Landroid/widget/RemoteViews;


# instance fields
.field private appWidgetIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings/widget/HomeSettingsWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 269
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 271
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 272
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f040107

    .line 71
    const-string v3, "HomeSettingsWidget"

    const-string v4, " START init()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 73
    sput-object p1, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    .line 74
    :cond_0
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    if-nez v3, :cond_1

    .line 75
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    .line 77
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.nttdocomo.android.dhome"

    const-string v4, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "DcmLauncer":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 82
    .local v1, "currentDefaultHome":Landroid/content/ComponentName;
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f100019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    const-string v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHomeGridMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04010a

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    .line 97
    :goto_0
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v3, :cond_2

    .line 98
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 100
    :cond_2
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    const v4, 0x7f0d02ee

    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 104
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    .line 105
    return-void

    .line 86
    :cond_3
    sget v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 87
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040108

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 88
    :cond_4
    sget v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    const/16 v4, 0x37

    if-ne v3, v4, :cond_5

    .line 89
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040109

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 91
    :cond_5
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 94
    :cond_6
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method private initSpanMap(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const-string v3, "ActiveApplicationWidgetSizeX"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    .local v0, "spX":Landroid/content/SharedPreferences;
    const-string v3, "ActiveApplicationWidgetSizeY"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, "spY":Landroid/content/SharedPreferences;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 254
    .local v2, "widgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    .line 255
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    .line 257
    .end local v0    # "spX":Landroid/content/SharedPreferences;
    .end local v1    # "spY":Landroid/content/SharedPreferences;
    .end local v2    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 112
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    if-nez v6, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    .line 115
    :cond_0
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f100019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 116
    const-string v6, "appWidgetMaxWidth"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 117
    .local v5, "maxWidth":I
    const-string v6, "appWidgetMaxHeight"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 118
    .local v4, "maxHeight":I
    const-string v6, "HomeSettingsWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAppWidgetOptionsChanged  maxWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " maxHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c03a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 122
    .local v3, "grid55width":I
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c03a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 123
    .local v2, "grid55height":I
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c039b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 124
    .local v1, "grid45width":I
    sget-object v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c039c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 125
    .local v0, "grid45height":I
    if-gt v5, v3, :cond_1

    if-gt v4, v2, :cond_1

    .line 126
    const/16 v6, 0x37

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    .line 132
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->init(Landroid/content/Context;)V

    .line 137
    .end local v0    # "grid45height":I
    .end local v1    # "grid45width":I
    .end local v2    # "grid55height":I
    .end local v3    # "grid55width":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    :goto_1
    return-void

    .line 127
    .restart local v0    # "grid45height":I
    .restart local v1    # "grid45width":I
    .restart local v2    # "grid55height":I
    .restart local v3    # "grid55width":I
    .restart local v4    # "maxHeight":I
    .restart local v5    # "maxWidth":I
    :cond_1
    if-gt v5, v1, :cond_2

    if-gt v4, v0, :cond_2

    .line 128
    const/16 v6, 0x2d

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    goto :goto_0

    .line 130
    :cond_2
    const/16 v6, 0x2c

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    goto :goto_0

    .line 134
    .end local v0    # "grid45height":I
    .end local v1    # "grid45width":I
    .end local v2    # "grid55height":I
    .end local v3    # "grid55width":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    :cond_3
    const/4 v6, 0x0

    sput v6, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mHomeGridMode:I

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "action":Ljava/lang/String;
    const-string v18, "HomeSettingsWidget"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onReceive action : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v18, "android.intent.category.ALTERNATIVE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 283
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 284
    .local v5, "buttonId":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    .line 285
    const-string v18, "HomeSettingsWidget"

    const-string v19, "onReceive : BUTTON_CENTER : "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    invoke-direct/range {p2 .. p2}, Landroid/content/Intent;-><init>()V

    .line 288
    .restart local p2    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 289
    const-string v18, "com.android.settings"

    const-string v19, "com.android.settings.Settings$DCMHomeSettingsActivity"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :goto_0
    const-string v18, "noaction"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const/high16 v18, 0x20000000

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    const/16 v18, 0x0

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 301
    .local v12, "pi":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v12}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v5    # "buttonId":I
    .end local v8    # "data":Landroid/net/Uri;
    .end local v12    # "pi":Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    return-void

    .line 292
    .restart local v5    # "buttonId":I
    .restart local v8    # "data":Landroid/net/Uri;
    :cond_1
    const-string v18, "com.android.settings"

    const-string v19, "com.android.settings.Settings$HomeSettingsActivity"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 302
    .restart local v12    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    .line 303
    .local v9, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v9}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 306
    .end local v5    # "buttonId":I
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v12    # "pi":Landroid/app/PendingIntent;
    :cond_2
    const-string v18, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 309
    :cond_3
    const-wide/16 v18, 0x5dc

    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->init(Landroid/content/Context;)V

    goto :goto_1

    .line 310
    :catch_1
    move-exception v9

    .line 311
    .local v9, "e":Ljava/lang/Exception;
    const-string v18, "HomeSettingsWidget"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onReceive : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 314
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v18, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 315
    const-string v18, "HomeSettingsWidget"

    const-string v19, "APPWIDGET_RESIZE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v18, "ActiveApplicationWidgetSizeX"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 317
    .local v13, "spX":Landroid/content/SharedPreferences;
    const-string v18, "ActiveApplicationWidgetSizeY"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 318
    .local v14, "spY":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 319
    .local v10, "editorX":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 320
    .local v11, "editorY":Landroid/content/SharedPreferences$Editor;
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    if-nez v18, :cond_5

    .line 321
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->init(Landroid/content/Context;)V

    .line 323
    :cond_5
    const-string v18, "widgetspanx"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 324
    .local v15, "spanX":I
    const-string v18, "widgetspany"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 325
    .local v16, "spanY":I
    const-string v18, "widgetId"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 326
    .local v17, "wId":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 327
    .local v6, "containX":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 328
    .local v7, "containY":I
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    if-eqz v18, :cond_6

    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    if-nez v18, :cond_7

    .line 329
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 330
    :cond_7
    const-string v18, "HomeSettingsWidget"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", spanX="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", spanY="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v6, v0, :cond_8

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_8

    .line 332
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 339
    :cond_8
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v6, v0, :cond_9

    .line 340
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 344
    :cond_9
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_0

    .line 345
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    sget-object v18, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mViews1x1:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->updateWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 180
    const-string v11, "HomeSettingsWidget"

    const-string v12, "START onUpdate()"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super/range {p0 .. p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 182
    sget-object v11, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    if-nez v11, :cond_1

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 184
    :cond_1
    const-string v11, "ActiveApplicationWidgetSizeX"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 185
    .local v6, "spX":Landroid/content/SharedPreferences;
    const-string v11, "ActiveApplicationWidgetSizeY"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 186
    .local v7, "spY":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 187
    .local v1, "editorX":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 188
    .local v2, "editorY":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p3

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget v3, v0, v4

    .line 189
    .local v3, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "str":Ljava/lang/String;
    const/4 v11, -0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 191
    .local v8, "spanX":I
    const/4 v11, -0x1

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 192
    .local v9, "spanY":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    .line 193
    sget-object v11, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/4 v11, 0x1

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    :cond_2
    const/4 v11, -0x1

    if-ne v9, v11, :cond_3

    .line 198
    sget-object v11, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    :cond_3
    sget-object v11, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 204
    .end local v3    # "i":I
    .end local v8    # "spanX":I
    .end local v9    # "spanY":I
    .end local v10    # "str":Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method protected updateWidget(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "views1x1"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v7, 0x1

    .line 140
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    sget-object v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    .line 142
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 143
    :cond_0
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mCtxt:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->initSpanMap(Landroid/content/Context;)V

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    array-length v3, v3

    if-lez v3, :cond_6

    .line 146
    :try_start_0
    const-string v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWidget() - appWidgetIds.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 148
    iget-object v3, p0, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetIds:[I

    aget v0, v3, v2

    .line 149
    .local v0, "appWidgetId":I
    const-string v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START updateWidget() - appWidgetId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v3, "HomeSettingsWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSpanMapX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSpanMapY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 154
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 147
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_3
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v7, :cond_2

    .line 161
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapX:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v7, :cond_4

    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->mSpanMapY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 164
    :cond_4
    sget-object v3, Lcom/android/settings/widget/HomeSettingsWidgetProvider;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v0    # "appWidgetId":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "HomeSettingsWidget"

    const-string v4, "pass updateWidget() - system server not available"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_2
    return-void

    .line 174
    :cond_6
    const-string v3, "HomeSettingsWidget"

    const-string v4, "updateWidget() - appWidgetIds.length == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
